from django.shortcuts import render, get_object_or_404
from .models import Blog, BlogType
from django.core.paginator import Paginator
from django.conf import settings
from django.db.models import Count
from read_statistics.utils import read_statistics_once_read
from django.contrib.contenttypes.models import ContentType
from likes.models import LikeCount
# from user.forms import LoginForm


def get_blog_common_data(request,blogs_of_list):
    page_num = request.GET.get('page', 1)
    paginator = Paginator(blogs_of_list, settings.EACH_PAGE_BLOGS_NUMBER)  # 没10篇进行分页
    page_of_blogs = paginator.get_page(page_num)  # 获取一页的数据
    # page_all_num = paginator.num_pages
    # if page_all_num > 5:
    #     page_range =
    current_page_num = page_of_blogs.number  # 获取当前页码
    page_range = list(range(max(current_page_num - 2, 1), current_page_num)) + \
                 list(range(current_page_num, min(current_page_num + 2, paginator.num_pages) + 1))
    # 加上省略标记
    if page_range[0] - 1 > 1:
        page_range.insert(0, '...')
    if paginator.num_pages - page_range[-1] > 1:
        page_range.append('...')
    # 加上首页和尾页
    if page_range[0] != 1:
        page_range.insert(0, 1)
    if page_range[-1] != paginator.num_pages:
        page_range.append(paginator.num_pages)
    # 获取博客分类的对应博客数量 导入统计的模块 关联对象小写或者写关联名字 现在blog中定义
    blog_types_list = BlogType.objects.annotate(blog_count=Count('blog'))

    # 获取博客分类的对应博客数量
    # blog_types = BlogType.objects.all()
    # blog_types_list = []
    # for blog_type in blog_types:
    #     blog_type.blog_count = Blog.objects.filter(blog_type = blog_type).count()
    #     blog_types_list.append(blog_type)

    # 获取日期归档对应的博客数量
    # Blog.objects.dates('created_time', 'month', order='DESC')\
    #                     .annotate(blog_count=Count('created_time'))
    blog_dates = Blog.objects.dates('created_time', 'month', order='DESC')
    blog_dates_dict = {}
    for blog_date in blog_dates:
        blog_count = Blog.objects.filter(created_time__year=blog_date.year, created_time__month=blog_date.month).count()
        blog_dates_dict[blog_date] = blog_count

    context = {}
    context['page_of_blogs'] = page_of_blogs
    context['page_range'] = page_range
    context['blog_types'] = blog_types_list
    context['blog_dates'] = blog_dates_dict
    return context
#博客列表
def blog_list(request):
    blogs_of_list = Blog.objects.all()
    context= get_blog_common_data(request, blogs_of_list)
    return render(request, 'blog/blog_list.html', context)

#博客的分类列表
def blog_with_type(request, blog_type_pk):
    blog_type = get_object_or_404(BlogType, pk=blog_type_pk)
    blogs_of_list = Blog.objects.filter(blog_type=blog_type)
    context = get_blog_common_data(request, blogs_of_list)
    context['blog_type'] = blog_type
    return render(request, 'blog/blog_with_type.html', context)

#博客日期归档
def blogs_with_date(request, year, month):
    blogs_of_list = Blog.objects.filter(created_time__year=year, created_time__month=month)
    context = get_blog_common_data(request, blogs_of_list)
    context['blog_with_date'] = '%s年%s月' % (year, month)
    return render(request, 'blog/blog_with_date.html', context)

#博客详细信息
def blog_detail(request, blog_pk):
    # blog_type = get_object_or_404(BlogType, pk=blog_pk)
    blog = get_object_or_404(Blog, pk=blog_pk)
    read_cookie_key = read_statistics_once_read(request, blog)

    blog_content_type = ContentType.objects.get_for_model(blog)
    #comments = Comment.objects.filter(content_type=blog_content_type, object_id=blog.pk, parent=None)

    # data = {}
    # data['content_type'] = blog_content_type.model
    # data['object_id'] = blog_pk
    # data['reply_comment_id'] = 0

    context = {}
    context['random_blogs'] = Blog.objects.all()[0:7]
    context['like_blogs'] = Blog.objects.filter(blog_type=blog.blog_type)[0:7]
    context['blog'] = blog
    #下面这已经是因为在在setting中添加了一个全局的弹窗，定义在user的context.processors中
    # context['login_form'] = LoginForm()

    #context['comments'] = comments.order_by('-comment_time')
    # context['comment_form'] = CommentForm(initial=data)
    #context['comment_form'] = CommentForm(initial={'content_type':blog_content_type,'object_id':blog_pk,'reply_comment_id':'0'})
    context['previous_blog'] = Blog.objects.filter(created_time__gt=blog.created_time).last()
    context['next_blog'] = Blog.objects.filter(created_time__lt=blog.created_time).first()
    response = render(request, 'blog/blog_detail.html', context)
    response.set_cookie(read_cookie_key, 'true')
    return response