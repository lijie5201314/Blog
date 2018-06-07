/*
Navicat MySQL Data Transfer

Source Server         : mysql57
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : blog1

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-06-07 20:02:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can add permission', '3', 'add_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can change permission', '3', 'change_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete permission', '3', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add blog type', '7', 'add_blogtype');
INSERT INTO `auth_permission` VALUES ('20', 'Can change blog type', '7', 'change_blogtype');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete blog type', '7', 'delete_blogtype');
INSERT INTO `auth_permission` VALUES ('22', 'Can add blog', '8', 'add_blog');
INSERT INTO `auth_permission` VALUES ('23', 'Can change blog', '8', 'change_blog');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete blog', '8', 'delete_blog');
INSERT INTO `auth_permission` VALUES ('25', 'Can add read num', '9', 'add_readnum');
INSERT INTO `auth_permission` VALUES ('26', 'Can change read num', '9', 'change_readnum');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete read num', '9', 'delete_readnum');
INSERT INTO `auth_permission` VALUES ('28', 'Can add read num', '10', 'add_readnum');
INSERT INTO `auth_permission` VALUES ('29', 'Can change read num', '10', 'change_readnum');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete read num', '10', 'delete_readnum');
INSERT INTO `auth_permission` VALUES ('31', 'Can add read detail', '11', 'add_readdetail');
INSERT INTO `auth_permission` VALUES ('32', 'Can change read detail', '11', 'change_readdetail');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete read detail', '11', 'delete_readdetail');
INSERT INTO `auth_permission` VALUES ('34', 'Can add comment', '12', 'add_comment');
INSERT INTO `auth_permission` VALUES ('35', 'Can change comment', '12', 'change_comment');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete comment', '12', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('37', 'Can add like count', '13', 'add_likecount');
INSERT INTO `auth_permission` VALUES ('38', 'Can change like count', '13', 'change_likecount');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete like count', '13', 'delete_likecount');
INSERT INTO `auth_permission` VALUES ('40', 'Can add like record', '14', 'add_likerecord');
INSERT INTO `auth_permission` VALUES ('41', 'Can change like record', '14', 'change_likerecord');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete like record', '14', 'delete_likerecord');
INSERT INTO `auth_permission` VALUES ('43', 'Can add profile', '15', 'add_profile');
INSERT INTO `auth_permission` VALUES ('44', 'Can change profile', '15', 'change_profile');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete profile', '15', 'delete_profile');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$100000$XjtgYkyC99hk$xMje4tWzdztqQkXeJ8HOBoXWFqfIDjSVnZGCY886ekY=', '2018-05-11 13:30:11.997958', '1', 'lijie', '', '', '417005901@qq.com', '1', '1', '2018-05-04 02:28:45.710477');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$100000$MY4Y0OEdS0Qe$XeIz6DHPLUxILfMsBcrJW+yH695nW3dui9ogYIh0bYo=', '2018-05-10 13:57:53.658575', '0', 'lijie1', '', '', '156@456.com', '0', '1', '2018-05-06 19:09:21.837716');
INSERT INTO `auth_user` VALUES ('3', 'pbkdf2_sha256$100000$J8BEpoYuW2LC$N8Sp76jm9UiqSRr09mZXICPUsPzt+f4fEtQrA48AD1Q=', '2018-05-30 15:13:24.513783', '1', 'lijie2', '', '', '823620817@qq.com', '1', '1', '2018-05-24 14:26:22.250691');
INSERT INTO `auth_user` VALUES ('4', 'pbkdf2_sha256$100000$AezL4CRcfy9l$ktwzZA52l8MrHC9ryFFo3BieD7WZiAFYM2y3Rjry6iU=', '2018-05-28 13:59:32.740544', '0', 'lijie3', '', '', '41227@qq.com', '0', '1', '2018-05-25 16:44:51.903629');
INSERT INTO `auth_user` VALUES ('5', 'pbkdf2_sha256$100000$kG5LP2l2m4Fd$l/hf2m3B2aTkk0rc71PycoCgggHn2DBJkjH/PTeYYXM=', '2018-05-30 16:23:46.400261', '1', 'chengxueqi', '', '', '1782227965@qq.com', '1', '1', '2018-05-30 16:23:31.774424');
INSERT INTO `auth_user` VALUES ('6', 'pbkdf2_sha256$100000$q2Eun9Rphazr$esBFNIcpVf9sRLp0CsBLkoBMoHv5zWIzCxPidsJ9aXU=', null, '1', 'exit', '', '', '', '1', '1', '2018-05-30 17:42:01.591810');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog_blog`;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `blog_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_blog
-- ----------------------------
INSERT INTO `blog_blog` VALUES ('3', '长博客', '达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤达到控盘分开送皮肤', '2017-11-08 03:24:37.000000', '2017-10-12 03:24:37.000000', '1', '2');
INSERT INTO `blog_blog` VALUES ('4', '随笔2', '123123', '2018-04-02 04:43:05.000000', '2018-05-04 04:43:05.503440', '1', '2');
INSERT INTO `blog_blog` VALUES ('5', 'Django', '确认其为人', '2018-05-04 04:43:13.885920', '2018-05-04 04:43:13.885920', '1', '1');
INSERT INTO `blog_blog` VALUES ('6', 'shell下的第一篇', 'xxxxxxxxxx', '2018-05-04 11:43:07.694605', '2018-05-04 11:43:07.695605', '1', '1');
INSERT INTO `blog_blog` VALUES ('7', 'for 1', 'xxx:1', '2018-05-04 11:48:59.310737', '2018-05-04 11:48:59.310737', '1', '1');
INSERT INTO `blog_blog` VALUES ('8', 'for 2', 'xxx:2', '2018-03-06 11:48:59.000000', '2018-05-04 11:48:59.363740', '1', '1');
INSERT INTO `blog_blog` VALUES ('9', 'for 3', 'xxx:3', '2018-05-04 11:48:59.413743', '2018-05-04 11:48:59.413743', '1', '1');
INSERT INTO `blog_blog` VALUES ('10', 'for 4', 'xxx:4', '2018-05-04 11:48:59.562752', '2018-05-04 11:48:59.562752', '1', '1');
INSERT INTO `blog_blog` VALUES ('11', 'for 5', 'xxx:5', '2018-05-04 11:48:59.607754', '2018-05-04 11:48:59.607754', '1', '1');
INSERT INTO `blog_blog` VALUES ('12', 'for 6', 'xxx:6', '2018-05-04 11:48:59.654757', '2018-05-04 11:48:59.654757', '1', '1');
INSERT INTO `blog_blog` VALUES ('13', 'for 7', 'xxx:7', '2018-05-04 11:48:59.696759', '2018-05-04 11:48:59.696759', '1', '1');
INSERT INTO `blog_blog` VALUES ('14', 'for 8', 'xxx:8', '2018-05-04 11:48:59.747762', '2018-05-04 11:48:59.747762', '1', '1');
INSERT INTO `blog_blog` VALUES ('15', 'for 9', 'xxx:9', '2018-05-04 11:48:59.792765', '2018-05-04 11:48:59.792765', '1', '1');
INSERT INTO `blog_blog` VALUES ('16', 'for 10', 'xxx:10', '2018-05-04 11:48:59.823767', '2018-05-04 11:48:59.823767', '1', '1');
INSERT INTO `blog_blog` VALUES ('17', 'for 11', 'xxx:11', '2018-05-04 11:48:59.855768', '2018-05-04 11:48:59.855768', '1', '1');
INSERT INTO `blog_blog` VALUES ('18', 'for 12', 'xxx:12', '2018-05-04 11:48:59.897771', '2018-05-04 11:48:59.897771', '1', '1');
INSERT INTO `blog_blog` VALUES ('19', 'for 13', 'xxx:13', '2018-05-04 11:48:59.947774', '2018-05-04 11:48:59.947774', '1', '1');
INSERT INTO `blog_blog` VALUES ('20', 'for 14', 'xxx:14', '2018-05-04 11:48:59.980776', '2018-05-04 11:48:59.980776', '1', '1');
INSERT INTO `blog_blog` VALUES ('21', 'for 15', 'xxx:15', '2018-05-04 11:49:00.025778', '2018-05-04 11:49:00.025778', '1', '1');
INSERT INTO `blog_blog` VALUES ('22', 'for 16', 'xxx:16', '2018-05-04 11:49:00.091782', '2018-05-04 11:49:00.092782', '1', '1');
INSERT INTO `blog_blog` VALUES ('23', 'for 17', 'xxx:17', '2018-05-04 11:49:00.113783', '2018-05-04 11:49:00.113783', '1', '1');
INSERT INTO `blog_blog` VALUES ('24', 'for 18', 'xxx:18', '2018-05-04 11:49:00.167786', '2018-05-04 11:49:00.167786', '1', '1');
INSERT INTO `blog_blog` VALUES ('25', 'for 19', 'xxx:19', '2018-05-04 11:49:00.205788', '2018-05-04 11:49:00.205788', '1', '1');
INSERT INTO `blog_blog` VALUES ('26', 'for 20', 'xxx:20', '2018-05-04 11:49:00.252791', '2018-05-04 11:49:00.252791', '1', '1');
INSERT INTO `blog_blog` VALUES ('27', 'for 21', 'xxx:21', '2018-05-04 11:49:00.301794', '2018-05-04 11:49:00.301794', '1', '1');
INSERT INTO `blog_blog` VALUES ('28', 'for 22', 'xxx:22', '2018-05-04 11:49:00.321795', '2018-05-04 11:49:00.321795', '1', '1');
INSERT INTO `blog_blog` VALUES ('29', 'for 23', 'xxx:23', '2018-05-04 11:49:00.354797', '2018-05-04 11:49:00.354797', '1', '1');
INSERT INTO `blog_blog` VALUES ('30', 'for 24', 'xxx:24', '2018-05-04 11:49:00.396799', '2018-05-04 11:49:00.396799', '1', '1');
INSERT INTO `blog_blog` VALUES ('31', 'for 25', 'xxx:25', '2018-05-04 11:49:00.545808', '2018-05-04 11:49:00.545808', '1', '1');
INSERT INTO `blog_blog` VALUES ('32', 'for 26', 'xxx:26', '2018-05-04 11:49:00.629813', '2018-05-04 11:49:00.629813', '1', '1');
INSERT INTO `blog_blog` VALUES ('33', 'for 27', 'xxx:27', '2018-05-04 11:49:00.662815', '2018-05-04 11:49:00.663815', '1', '1');
INSERT INTO `blog_blog` VALUES ('34', 'for 28', 'xxx:28', '2018-05-04 11:49:00.696817', '2018-05-04 11:49:00.697817', '1', '1');
INSERT INTO `blog_blog` VALUES ('35', 'for 29', 'xxx:29', '2018-05-04 11:49:00.752820', '2018-05-04 11:49:00.752820', '1', '1');
INSERT INTO `blog_blog` VALUES ('36', 'for 30', 'xxx:30', '2018-05-04 11:49:00.788822', '2018-05-04 11:49:00.788822', '1', '1');
INSERT INTO `blog_blog` VALUES ('37', '1232', '132123', '2018-05-04 15:37:18.702825', '2018-05-05 12:48:45.931632', '1', '1');
INSERT INTO `blog_blog` VALUES ('38', '112', '<p><img alt=\"\" src=\"/media/upload/2018/05/05/timg-3.jpg\" style=\"float:left; height:125px; width:200px\" />3213</p>\r\n\r\n<hr />\r\n<hr />\r\n<p>dasdasidjsafjsdfdasdasidjsafjsdfdas<span style=\"color:#e67e22\">dasidjsafjsdfd</span><em><span style=\"color:#e67e22\">asdasidjs</span>afjsdfdasdasidjsaf</em>jsdf</p>\r\n\r\n<p>dasdasidjsafjsdfdasdasidjsafjsdfdasdasidjsafjsdfda<span style=\"color:#000000\">sd<img alt=\"cheeky\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/tongue_smile.png\" style=\"height:23px; width:23px\" title=\"cheeky\" />a<span style=\"background-color:#1abc9c\">sidjsafjsdfdasdasidjsafjsdfdasdasidjsafjsdf</span></span></p>', '2018-05-05 00:32:16.874357', '2018-05-05 13:01:18.410737', '1', '2');
INSERT INTO `blog_blog` VALUES ('39', '33123', '<p>12312</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">1.&nbsp; blog = Blog.objects.filter(id=5)</div>', '2018-05-05 14:20:59.125309', '2018-05-25 18:10:15.653691', '1', '2');
INSERT INTO `blog_blog` VALUES ('40', 'Django查询对比其他字段', '<p>&nbsp; &nbsp; &nbsp; &nbsp;一直以来django查询用得比较多的条件比较都是和一个常量比较。例如：</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">\r\n<ol>\r\n	<li>\r\n	<p>blogs&nbsp;=&nbsp;Blog.objects.filter(pk=1)</p>\r\n	</li>\r\n</ol>\r\n</div>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;有时需要在同一个模型中字段和字段之间比较，假如Blog有两个字段creation_time和last_updated_time，创建时间和最后修改时间。找出最后修改时间大于创建时间的filter如下：&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">\r\n<ol>\r\n	<li>import&nbsp;django.db.models&nbsp;import&nbsp;F</li>\r\n	<li>&nbsp;</li>\r\n	<li>blogs&nbsp;=&nbsp;Blog.objects.filter(last_updated_time__gt=F(&quot;creation_time&quot;))</li>\r\n</ol>\r\n</div>\r\n\r\n<p>其中，比较大于的表达式是使用__gt修饰。</p>\r\n\r\n<p>其次，字段和字段比较使用F()对象。</p>\r\n\r\n<p>另外，F()对象也可以使用加减乘除等运算。假如Blog有评论数和阅读数字段：comment_num、view_num。阅读数是评论数两倍或两倍以上的filter如下：</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">\r\n<ol>\r\n	<li>import&nbsp;django.db.models&nbsp;import&nbsp;F</li>\r\n	<li>&nbsp;</li>\r\n	<li>blogs&nbsp;=&nbsp;Blog.objects.filter(view_num__gt=F(&quot;comment_num&quot;)&nbsp;*&nbsp;2)</li>\r\n</ol>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>F()对象还可以使用双下划线找到有关系模型的相关字段。具体可以看<a href=\"https://docs.djangoproject.com/en/1.11/topics/db/queries/#filters-can-reference-fields-on-the-model\" target=\"_blank\">Django官方文档</a>。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>再拓展F()很有用的用法：批量更新数据。</p>\r\n\r\n<p>例如我想给阅读数小于10的blog，阅读计数字段都加10。普通方法如下：</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">\r\n<ol>\r\n	<li>blogs&nbsp;=&nbsp;Blog.objects.filter(view_num_lt=10)</li>\r\n	<li>for&nbsp;blog&nbsp;in&nbsp;blogs:</li>\r\n	<li>&nbsp;&nbsp;&nbsp;&nbsp;blog.view_num&nbsp;=&nbsp;blog.view_num&nbsp;+&nbsp;10</li>\r\n	<li>&nbsp;&nbsp;&nbsp;&nbsp;blog.save()</li>\r\n</ol>\r\n</div>\r\n\r\n<p>看上去没问题。实际上会有线程不安全的问题和执行效率一般。如果我在做这个处理的同时，有人刚好访问其中某一篇阅读数小于10的blog。这次阅读可能不会被记录。我们可以使用update方法和F()对象批量更新数据：</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">\r\n<ol>\r\n	<li>blogs&nbsp;=&nbsp;Blog.objects.filter(view_num_lt=10)</li>\r\n	<li>blogs.update(view_num=F(&quot;view_num&quot;)&nbsp;+&nbsp;10)</li>\r\n</ol>\r\n</div>\r\n\r\n<p>上面代码意思是把view_num字段的数据加10更新给view_num字段。该方法安全且不用把数据加载进来再修改，执行效率比较高。详细可以看<a href=\"https://docs.djangoproject.com/en/dev/ref/models/expressions/#django.db.models.F\" target=\"_blank\">Django官方文档</a>。&nbsp;</p>', '2018-05-25 18:05:17.518638', '2018-05-25 18:06:58.398408', '3', '1');

-- ----------------------------
-- Table structure for `blog_blogtype`
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogtype`;
CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_blogtype
-- ----------------------------
INSERT INTO `blog_blogtype` VALUES ('1', 'Django');
INSERT INTO `blog_blogtype` VALUES ('2', '随笔');
INSERT INTO `blog_blogtype` VALUES ('3', '感悟');

-- ----------------------------
-- Table structure for `comment_comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment_comment`;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_comment
-- ----------------------------
INSERT INTO `comment_comment` VALUES ('2', '39', '你好啊', '2018-05-06 13:19:38.584359', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('3', '39', '111', '2018-05-07 11:50:50.117315', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('4', '39', '345', '2018-05-07 12:24:05.690456', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('5', '39', '<p>sasa</p>\r\n\r\n<p>adasd</p>\r\n\r\n<p>asdasd</p>\r\n\r\n<p>&nbsp;</p>', '2018-05-07 12:41:42.698913', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('6', '39', '<p>56677</p>', '2018-05-07 13:20:16.879276', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('7', '39', '<p>1111111111111</p>', '2018-05-07 13:24:28.457666', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('8', '39', '<p>899</p>', '2018-05-07 13:31:23.776421', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('9', '39', '<p>899999</p>', '2018-05-07 13:31:38.489262', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('10', '39', '<p>qwqw</p>', '2018-05-07 13:32:13.451262', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('11', '39', '<p>eeeee</p>', '2018-05-07 13:34:34.334320', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('12', '39', '<p>2312321</p>', '2018-05-07 13:36:36.991336', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('13', '39', '<p><img alt=\"sad\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/sad_smile.png\" title=\"sad\" width=\"23\" /></p>', '2018-05-07 14:01:28.133624', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('14', '37', '<blockquote>\r\n<p>eqwewqe</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2018-05-07 14:04:49.844738', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('15', '39', '<p>1</p>', '2018-05-07 06:09:39.128464', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('16', '39', '<p>1</p>', '2018-05-07 14:10:14.505899', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('17', '39', '22222222', '2018-05-10 10:02:56.125346', '8', '1', '17', null, null);
INSERT INTO `comment_comment` VALUES ('18', '38', '<p>111</p>', '2018-05-10 10:31:14.836403', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('19', '38', '222', '2018-05-10 10:31:51.565504', '8', '2', '3', '1', '3');
INSERT INTO `comment_comment` VALUES ('20', '38', '222', '2018-05-10 10:35:36.075345', '8', '2', '18', '1', '18');
INSERT INTO `comment_comment` VALUES ('21', '39', '<p>111</p>', '2018-05-10 12:06:07.653014', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('22', '39', '<p>3333</p>', '2018-05-10 12:06:22.148843', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('23', '39', '<p>叮叮当叮叮当</p>', '2018-05-10 12:06:44.198104', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('24', '39', '<p>222222222222222222222222222222222222222</p>', '2018-05-10 12:08:28.080046', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('25', '39', '<p>凑凑凑凑凑凑凑凑凑凑凑凑&middot;</p>', '2018-05-10 12:08:39.011671', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('26', '39', '<p>求求求求求求</p>', '2018-05-10 12:53:43.730372', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('27', '39', '<p>111</p>', '2018-05-10 13:10:31.858033', '8', '1', '25', '1', '25');
INSERT INTO `comment_comment` VALUES ('28', '39', '<p>111</p>', '2018-05-10 13:46:47.927497', '8', '1', '26', '1', '26');
INSERT INTO `comment_comment` VALUES ('29', '39', '<p>222</p>', '2018-05-10 13:46:53.290804', '8', '1', '28', '1', '26');
INSERT INTO `comment_comment` VALUES ('30', '39', '<p>大大大</p>', '2018-05-10 13:49:19.464165', '8', '1', '28', '1', '26');
INSERT INTO `comment_comment` VALUES ('31', '39', '<p>123</p>', '2018-05-10 13:53:12.980521', '8', '1', '30', '1', '26');
INSERT INTO `comment_comment` VALUES ('32', '39', '<p>重中之重</p>', '2018-05-10 13:54:34.591189', '8', '1', '21', '1', '21');
INSERT INTO `comment_comment` VALUES ('33', '37', '<p>111</p>', '2018-05-10 13:57:16.949475', '8', '1', '14', '1', '14');
INSERT INTO `comment_comment` VALUES ('34', '37', '<p>222</p>', '2018-05-10 13:57:21.510736', '8', '1', '33', '1', '14');
INSERT INTO `comment_comment` VALUES ('35', '37', '<p>333</p>', '2018-05-10 13:57:25.423960', '8', '1', '34', '1', '14');
INSERT INTO `comment_comment` VALUES ('36', '37', '<p>1啧啧啧</p>', '2018-05-10 13:58:02.845101', '8', '2', '33', '1', '14');
INSERT INTO `comment_comment` VALUES ('37', '37', '<p>1</p>', '2018-05-10 14:01:14.835082', '8', '2', '14', '1', '14');
INSERT INTO `comment_comment` VALUES ('38', '37', '<p>554</p>', '2018-05-10 14:05:25.757434', '8', '2', '33', '1', '14');
INSERT INTO `comment_comment` VALUES ('39', '37', '<p>11111111111</p>', '2018-05-10 14:05:54.820096', '8', '2', '33', '1', '14');
INSERT INTO `comment_comment` VALUES ('40', '37', '<p>232</p>', '2018-05-10 14:13:10.774695', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('41', '37', '<p>4444</p>', '2018-05-10 14:13:23.829441', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('42', '37', '<p>去去去</p>', '2018-05-10 14:13:36.430196', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('43', '37', '<p>44444444444444444444444444444444444444444444444</p>', '2018-05-10 14:14:54.836680', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('44', '37', '<p>请问</p>', '2018-05-10 14:17:25.266857', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('45', '37', '<p>12亲</p>', '2018-05-10 14:17:56.933019', '8', '2', '44', '2', '44');
INSERT INTO `comment_comment` VALUES ('46', '37', '<p>87</p>', '2018-05-10 14:18:09.423250', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('47', '37', '<p>111</p>', '2018-05-10 14:18:25.703529', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('48', '37', '<p>111222</p>', '2018-05-10 14:19:44.538093', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('49', '37', '<p>1111</p>', '2018-05-10 14:21:05.990021', '8', '2', '47', '2', '47');
INSERT INTO `comment_comment` VALUES ('50', '37', '<p>cvvv</p>', '2018-05-10 14:24:37.794230', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('51', '37', '<p>adasd</p>', '2018-05-10 14:24:43.295428', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('52', '37', '<p>1111</p>', '2018-05-10 14:25:47.470529', '8', '2', '49', '2', '47');
INSERT INTO `comment_comment` VALUES ('53', '37', '<p>2zxxxxxxxxxx</p>', '2018-05-10 14:26:04.545155', '8', '2', '48', '2', '48');
INSERT INTO `comment_comment` VALUES ('54', '37', '<p>asas</p>', '2018-05-10 14:26:30.217256', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('55', '37', '<p>11</p>', '2018-05-10 14:28:27.252178', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('56', '37', '<p>adasdsdasdasd</p>', '2018-05-10 14:39:49.609391', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('57', '37', '<p>dasdasdasd</p>', '2018-05-10 14:40:11.450596', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('58', '37', '<p>1111111111aaaaaaaaaaaaaa</p>', '2018-05-10 14:40:19.151985', '8', '2', '57', '2', '57');
INSERT INTO `comment_comment` VALUES ('59', '36', '<p>1111</p>', '2018-05-10 17:18:34.727849', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('60', '36', '<p>111</p>', '2018-05-10 17:31:09.107204', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('61', '36', '<p>333333</p>', '2018-05-10 17:31:17.038597', '8', '2', '60', '2', '60');
INSERT INTO `comment_comment` VALUES ('62', '36', '<p>1111</p>', '2018-05-10 17:38:35.650468', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('63', '36', '<p>qaqq</p>', '2018-05-10 17:56:57.306403', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('64', '36', '<p>111aa</p>', '2018-05-10 17:57:06.135019', '8', '2', '63', '2', '63');
INSERT INTO `comment_comment` VALUES ('65', '36', '<p>1</p>', '2018-05-10 18:02:26.757034', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('66', '36', '<p>1</p>', '2018-05-10 18:03:34.787153', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('67', '36', '<p>2</p>', '2018-05-10 18:03:50.067741', '8', '2', '65', '2', '65');
INSERT INTO `comment_comment` VALUES ('68', '36', '<p>2</p>', '2018-05-10 18:07:35.196682', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('69', '36', '<p>1111111111</p>', '2018-05-10 18:07:41.635770', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('70', '36', '<p>wojiusizhu</p>', '2018-05-10 18:07:49.561887', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('71', '36', '<p>333</p>', '2018-05-10 18:07:54.120509', '8', '2', '70', '2', '70');
INSERT INTO `comment_comment` VALUES ('72', '36', '<p>1</p>', '2018-05-10 18:08:45.106976', '8', '2', null, null, null);
INSERT INTO `comment_comment` VALUES ('73', '39', '<p>111</p>', '2018-05-10 20:57:23.828149', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('74', '39', '<p>111</p>', '2018-05-10 20:57:40.212087', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('75', '33', '<p>111</p>', '2018-05-11 10:05:08.300000', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('76', '33', '<p>22222</p>', '2018-05-11 10:05:17.210408', '8', '1', '75', '1', '75');
INSERT INTO `comment_comment` VALUES ('77', '39', '<p>11</p>', '2018-05-11 13:05:58.628278', '8', '1', null, null, null);
INSERT INTO `comment_comment` VALUES ('78', '39', '<p>22</p>', '2018-05-11 13:06:03.865578', '8', '1', '77', '1', '77');
INSERT INTO `comment_comment` VALUES ('79', '34', '<p>111</p>', '2018-05-24 14:27:21.622087', '8', '3', null, null, null);
INSERT INTO `comment_comment` VALUES ('80', '3', '<p>222</p>', '2018-05-25 16:45:13.318854', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('81', '3', '222', '2018-05-25 16:45:19.161188', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('82', '3', '<p>111</p>', '2018-05-25 16:46:07.512953', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('83', '3', '<p>333</p>', '2018-05-25 16:46:13.711308', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('84', '3', '<p>333</p>', '2018-05-25 16:48:53.797464', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('85', '3', '<p>121212</p>', '2018-05-25 16:48:58.902756', '8', '4', '84', '4', '84');
INSERT INTO `comment_comment` VALUES ('86', '3', '<p>22</p>', '2018-05-25 17:00:32.780444', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('87', '3', '<p>222</p>', '2018-05-25 17:07:06.870985', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('88', '3', '<p>222</p>', '2018-05-25 17:07:57.666890', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('89', '3', '<p>333</p>', '2018-05-25 17:08:00.466050', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('90', '3', '<p>111</p>', '2018-05-25 17:08:02.968193', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('91', '3', '<p>2</p>', '2018-05-25 17:08:06.711407', '8', '4', '90', '4', '90');
INSERT INTO `comment_comment` VALUES ('92', '3', '22', '2018-05-25 17:08:53.641091', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('93', '3', '22', '2018-05-25 17:46:28.667072', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('94', '3', '<p>222</p>', '2018-05-25 17:46:52.032408', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('95', '3', '<p>33</p>', '2018-05-25 17:46:54.614556', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('96', '3', '<p>222</p>', '2018-05-25 17:47:36.427947', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('97', '3', '<p>33</p>', '2018-05-25 17:47:42.893317', '8', '4', '96', '4', '96');
INSERT INTO `comment_comment` VALUES ('98', '3', '<p>22</p>', '2018-05-25 17:51:46.445247', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('99', '3', '<p><em>dddddddd<span style=\"color:#2ecc71\">ddddd</span>d33</em><span style=\"background-color:#2ecc71\">3333333333dddddddd</span></p>', '2018-05-25 17:56:13.772538', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('100', '3', '<p><span style=\"color:#e74c3c\">dddddd<em>ddddddddcxcxcasadsd</em></span></p>', '2018-05-25 17:56:36.441834', '8', '4', null, null, null);
INSERT INTO `comment_comment` VALUES ('101', '3', '<p>fffff<span style=\"color:#e74c3c\">ffffffffffffffffffff</span><span style=\"color:#333399\">ffffffffff</span><span style=\"color:#dddddd\">fffffffff</span><span style=\"color:#e74c3c\">fffffffffffff</span><span style=\"color:null\">fffffffffff</span></p>', '2018-05-25 17:56:59.902176', '8', '4', '100', '4', '100');
INSERT INTO `comment_comment` VALUES ('102', '3', '<p>222</p>', '2018-05-25 17:58:12.999357', '8', '3', '100', '4', '100');
INSERT INTO `comment_comment` VALUES ('103', '39', '<p>111</p>', '2018-05-30 16:05:24.591241', '8', '3', null, null, null);
INSERT INTO `comment_comment` VALUES ('104', '39', '<p>3333</p>', '2018-05-30 16:05:28.362456', '8', '3', '103', '3', '103');
INSERT INTO `comment_comment` VALUES ('105', '39', '<p>222</p>', '2018-05-30 16:05:32.138672', '8', '3', '77', '1', '77');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-05-04 02:35:07.528555', '1', 'Django', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2018-05-04 02:35:12.205823', '2', '随笔', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2018-05-04 02:35:16.427064', '3', '感悟', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2018-05-04 02:36:09.929124', '1', '<Blog: 第一篇博客>', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2018-05-04 03:15:46.507041', '2', '<Blog: 第二篇博客>', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2018-05-04 03:23:46.856337', '2', '<Blog: 第二篇博客>', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2018-05-04 03:24:06.931807', '1', '<Blog: 第一篇博客>', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2018-05-04 03:24:37.491094', '3', '<Blog: 长博客>', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2018-05-04 04:43:05.539442', '4', '<Blog: 随笔2>', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2018-05-04 04:43:13.950924', '5', '<Blog: Django>', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2018-05-04 15:37:18.748828', '37', '<Blog: 1232>', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2018-05-05 00:32:16.933361', '38', '<Blog: 112>', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2018-05-05 12:18:39.814889', '38', '<Blog: 112>', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2018-05-05 12:30:25.076469', '38', '<Blog: 112>', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2018-05-05 13:14:24.975322', '1', 'ReadNum object (1)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2018-05-05 13:56:36.455444', '1', 'ReadNum object (1)', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2018-05-05 14:20:59.131310', '39', '<Blog: 33123>', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2018-05-05 16:40:26.034612', '1', 'ReadDetail object (1)', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2018-05-05 17:12:57.541892', '4', 'ReadDetail object (4)', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2018-05-05 18:41:44.187306', '5', 'ReadDetail object (5)', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2018-05-05 18:42:02.721494', '9', 'ReadNum object (9)', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2018-05-10 10:02:56.136346', '17', 'Comment object (17)', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2018-05-10 10:08:43.251460', '17', '22222222', '2', '[{\"changed\": {\"fields\": [\"text\", \"parent\"]}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2018-05-10 10:29:21.845940', '17', '22222222', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2018-05-10 10:29:21.933945', '16', '<p>1</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2018-05-10 10:29:22.011950', '14', '<blockquote>\r\n<p>eqwewqe</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2018-05-10 10:29:22.161958', '13', '<p><img alt=\"sad\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/sad_smile.png\" title=\"sad\" width=\"23\" /></p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2018-05-10 10:29:22.182960', '12', '<p>2312321</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2018-05-10 10:29:22.227962', '11', '<p>eeeee</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2018-05-10 10:29:22.291966', '10', '<p>qwqw</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2018-05-10 10:29:22.356970', '9', '<p>899999</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2018-05-10 10:29:22.402972', '8', '<p>899</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2018-05-10 10:29:22.452975', '7', '<p>1111111111111</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2018-05-10 10:29:22.473976', '6', '<p>56677</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2018-05-10 10:29:22.506978', '5', '<p>sasa</p>\r\n\r\n<p>adasd</p>\r\n\r\n<p>asdasd</p>\r\n\r\n<p>&nbsp;</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2018-05-10 10:29:22.556981', '4', '345', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2018-05-10 10:29:22.589983', '3', '111', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2018-05-10 10:29:22.622985', '15', '<p>1</p>', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2018-05-10 10:29:22.677988', '2', '你好啊', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2018-05-10 10:29:22.698989', '1', '11213', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2018-05-10 10:29:46.928375', '17', '22222222', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('42', '2018-05-10 10:31:51.575504', '19', '222', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('43', '2018-05-10 10:35:36.082345', '20', '222', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('44', '2018-05-10 18:15:23.683542', '1', '11213', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('45', '2018-05-10 18:17:41.351917', '39', '<Blog: 33123>', '2', '[]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('46', '2018-05-24 17:26:30.122866', '1', '<Profile: 李杰 for lijie2>', '1', '[{\"added\": {}}]', '15', '1');
INSERT INTO `django_admin_log` VALUES ('47', '2018-05-25 18:05:17.520638', '40', '<Blog: Django查询对比其他字段>', '1', '[{\"added\": {}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('48', '2018-05-25 18:06:58.401408', '40', '<Blog: Django查询对比其他字段>', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('49', '2018-05-25 18:09:10.873985', '39', '<Blog: 33123>', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('50', '2018-05-25 18:10:02.718951', '39', '<Blog: 33123>', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '8', '3');
INSERT INTO `django_admin_log` VALUES ('51', '2018-05-25 18:10:15.655691', '39', '<Blog: 33123>', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '8', '3');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('8', 'blog', 'blog');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'blogtype');
INSERT INTO `django_content_type` VALUES ('9', 'blog', 'readnum');
INSERT INTO `django_content_type` VALUES ('12', 'comment', 'comment');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('13', 'likes', 'likecount');
INSERT INTO `django_content_type` VALUES ('14', 'likes', 'likerecord');
INSERT INTO `django_content_type` VALUES ('11', 'read_statistics', 'readdetail');
INSERT INTO `django_content_type` VALUES ('10', 'read_statistics', 'readnum');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('15', 'user', 'profile');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-05-03 14:48:13.874106');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-05-03 14:48:28.648951');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-05-03 14:48:32.228156');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-05-03 14:48:32.287160');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-05-03 14:48:34.694297');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-05-03 14:48:36.089377');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-05-03 14:48:37.428454');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-05-03 14:48:37.480457');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-05-03 14:48:38.250501');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-05-03 14:48:38.499515');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-05-03 14:48:38.547518');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2018-05-03 14:48:42.022716');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2018-05-03 14:48:43.120779');
INSERT INTO `django_migrations` VALUES ('14', 'blog', '0001_initial', '2018-05-03 14:48:50.879223');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2018-05-03 14:48:51.632266');
INSERT INTO `django_migrations` VALUES ('16', 'blog', '0002_auto_20180505_1215', '2018-05-05 12:16:01.711698');
INSERT INTO `django_migrations` VALUES ('17', 'blog', '0003_auto_20180505_1227', '2018-05-05 12:27:58.163825');
INSERT INTO `django_migrations` VALUES ('18', 'blog', '0004_blog_read_num', '2018-05-05 12:44:23.537131');
INSERT INTO `django_migrations` VALUES ('19', 'blog', '0005_auto_20180505_1313', '2018-05-05 13:13:26.512035');
INSERT INTO `django_migrations` VALUES ('20', 'blog', '0006_auto_20180505_1353', '2018-05-05 13:53:36.427370');
INSERT INTO `django_migrations` VALUES ('21', 'read_statistics', '0001_initial', '2018-05-05 13:53:38.223473');
INSERT INTO `django_migrations` VALUES ('22', 'read_statistics', '0002_readdetail', '2018-05-05 16:38:40.221251');
INSERT INTO `django_migrations` VALUES ('23', 'comment', '0001_initial', '2018-05-06 10:40:41.532527');
INSERT INTO `django_migrations` VALUES ('24', 'comment', '0002_auto_20180510_0959', '2018-05-10 09:59:44.819669');
INSERT INTO `django_migrations` VALUES ('25', 'comment', '0003_auto_20180510_1007', '2018-05-10 10:07:29.883383');
INSERT INTO `django_migrations` VALUES ('26', 'comment', '0004_auto_20180510_1016', '2018-05-10 10:16:34.926906');
INSERT INTO `django_migrations` VALUES ('27', 'comment', '0005_auto_20180510_1019', '2018-05-10 10:19:53.690275');
INSERT INTO `django_migrations` VALUES ('28', 'blog', '0007_auto_20180510_1813', '2018-05-10 18:14:08.355277');
INSERT INTO `django_migrations` VALUES ('29', 'comment', '0006_auto_20180510_1813', '2018-05-10 18:14:18.104835');
INSERT INTO `django_migrations` VALUES ('30', 'read_statistics', '0003_auto_20180510_1813', '2018-05-10 18:14:22.940111');
INSERT INTO `django_migrations` VALUES ('31', 'likes', '0001_initial', '2018-05-10 19:07:38.268477');
INSERT INTO `django_migrations` VALUES ('32', 'user', '0001_initial', '2018-05-24 17:24:34.608259');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('41noidfgw9r6tb08nsoy3mothe5lrwd3', 'MjY2YWY0NjE5MWY5YmUyOTY1MTJkZDZlNGNmOWQ2OTY0NjNiOThhZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzIzMTVhMWQ0OTc1NGIxZDc4MDk1NDlmYmYwYTllZTZkMzRlMjcxMiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-05-19 12:16:35.073023');
INSERT INTO `django_session` VALUES ('5xkvblzhkr0g4b9ujk25n4yvder6jc1i', 'MTI0Yzg0ODAzZjY0OWVmY2QxN2FjZjI1ODVkMzA0MjIzOWRmODAwZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMjMxNWExZDQ5NzU0YjFkNzgwOTU0OWZiZjBhOWVlNmQzNGUyNzEyIn0=', '2018-05-18 15:30:15.181491');
INSERT INTO `django_session` VALUES ('j6e6s2wb2bsakfk0omgtzh9p3zsewgxr', 'YzE3NzlmZWNiZGRlM2IwY2JiMTYzYjU5ODBlZWY1NjFlYzJhNWU1NDp7fQ==', '2018-05-20 11:23:16.927977');
INSERT INTO `django_session` VALUES ('ol96hu5vg4c5amnzm2a88em75x8rombo', 'YzE3NzlmZWNiZGRlM2IwY2JiMTYzYjU5ODBlZWY1NjFlYzJhNWU1NDp7fQ==', '2018-05-20 11:22:20.008779');

-- ----------------------------
-- Table structure for `likes_likecount`
-- ----------------------------
DROP TABLE IF EXISTS `likes_likecount`;
CREATE TABLE `likes_likecount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_num` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likes_likecount
-- ----------------------------
INSERT INTO `likes_likecount` VALUES ('1', '39', '3', '8');
INSERT INTO `likes_likecount` VALUES ('2', '38', '0', '8');
INSERT INTO `likes_likecount` VALUES ('3', '37', '0', '8');
INSERT INTO `likes_likecount` VALUES ('4', '36', '0', '8');
INSERT INTO `likes_likecount` VALUES ('5', '35', '0', '8');
INSERT INTO `likes_likecount` VALUES ('6', '34', '1', '8');
INSERT INTO `likes_likecount` VALUES ('7', '33', '1', '8');
INSERT INTO `likes_likecount` VALUES ('8', '26', '1', '12');
INSERT INTO `likes_likecount` VALUES ('9', '28', '1', '12');
INSERT INTO `likes_likecount` VALUES ('10', '29', '1', '12');
INSERT INTO `likes_likecount` VALUES ('11', '30', '1', '12');
INSERT INTO `likes_likecount` VALUES ('12', '31', '1', '12');
INSERT INTO `likes_likecount` VALUES ('13', '25', '1', '12');
INSERT INTO `likes_likecount` VALUES ('14', '27', '0', '12');
INSERT INTO `likes_likecount` VALUES ('15', '24', '0', '12');
INSERT INTO `likes_likecount` VALUES ('16', '23', '0', '12');
INSERT INTO `likes_likecount` VALUES ('17', '22', '0', '12');
INSERT INTO `likes_likecount` VALUES ('18', '21', '0', '12');
INSERT INTO `likes_likecount` VALUES ('19', '32', '0', '12');
INSERT INTO `likes_likecount` VALUES ('20', '16', '0', '12');
INSERT INTO `likes_likecount` VALUES ('21', '13', '0', '12');
INSERT INTO `likes_likecount` VALUES ('22', '12', '0', '12');
INSERT INTO `likes_likecount` VALUES ('23', '11', '0', '12');
INSERT INTO `likes_likecount` VALUES ('24', '10', '0', '12');
INSERT INTO `likes_likecount` VALUES ('25', '9', '0', '12');
INSERT INTO `likes_likecount` VALUES ('26', '8', '0', '12');
INSERT INTO `likes_likecount` VALUES ('27', '7', '0', '12');
INSERT INTO `likes_likecount` VALUES ('28', '6', '0', '12');
INSERT INTO `likes_likecount` VALUES ('29', '5', '0', '12');
INSERT INTO `likes_likecount` VALUES ('30', '4', '0', '12');
INSERT INTO `likes_likecount` VALUES ('31', '3', '0', '12');
INSERT INTO `likes_likecount` VALUES ('32', '19', '0', '12');
INSERT INTO `likes_likecount` VALUES ('33', '15', '0', '12');
INSERT INTO `likes_likecount` VALUES ('34', '2', '0', '12');
INSERT INTO `likes_likecount` VALUES ('35', '73', '1', '12');
INSERT INTO `likes_likecount` VALUES ('36', '75', '1', '12');
INSERT INTO `likes_likecount` VALUES ('37', '76', '0', '12');
INSERT INTO `likes_likecount` VALUES ('38', '74', '1', '12');
INSERT INTO `likes_likecount` VALUES ('39', '18', '0', '12');
INSERT INTO `likes_likecount` VALUES ('40', '20', '0', '12');
INSERT INTO `likes_likecount` VALUES ('41', '77', '1', '12');
INSERT INTO `likes_likecount` VALUES ('42', '78', '1', '12');
INSERT INTO `likes_likecount` VALUES ('43', '4', '0', '8');
INSERT INTO `likes_likecount` VALUES ('44', '8', '0', '8');
INSERT INTO `likes_likecount` VALUES ('45', '3', '1', '8');
INSERT INTO `likes_likecount` VALUES ('46', '79', '0', '12');
INSERT INTO `likes_likecount` VALUES ('47', '81', '1', '12');
INSERT INTO `likes_likecount` VALUES ('48', '80', '0', '12');
INSERT INTO `likes_likecount` VALUES ('49', '83', '0', '12');
INSERT INTO `likes_likecount` VALUES ('50', '82', '0', '12');
INSERT INTO `likes_likecount` VALUES ('51', '84', '1', '12');
INSERT INTO `likes_likecount` VALUES ('52', '85', '0', '12');
INSERT INTO `likes_likecount` VALUES ('53', '86', '0', '12');
INSERT INTO `likes_likecount` VALUES ('54', '87', '0', '12');
INSERT INTO `likes_likecount` VALUES ('55', '90', '1', '12');
INSERT INTO `likes_likecount` VALUES ('56', '91', '1', '12');
INSERT INTO `likes_likecount` VALUES ('57', '92', '0', '12');
INSERT INTO `likes_likecount` VALUES ('58', '89', '0', '12');
INSERT INTO `likes_likecount` VALUES ('59', '88', '0', '12');
INSERT INTO `likes_likecount` VALUES ('60', '95', '0', '12');
INSERT INTO `likes_likecount` VALUES ('61', '94', '0', '12');
INSERT INTO `likes_likecount` VALUES ('62', '93', '0', '12');
INSERT INTO `likes_likecount` VALUES ('63', '96', '1', '12');
INSERT INTO `likes_likecount` VALUES ('64', '97', '1', '12');
INSERT INTO `likes_likecount` VALUES ('65', '98', '0', '12');
INSERT INTO `likes_likecount` VALUES ('66', '100', '0', '12');
INSERT INTO `likes_likecount` VALUES ('67', '101', '0', '12');
INSERT INTO `likes_likecount` VALUES ('68', '99', '0', '12');
INSERT INTO `likes_likecount` VALUES ('69', '40', '1', '8');
INSERT INTO `likes_likecount` VALUES ('70', '32', '0', '8');
INSERT INTO `likes_likecount` VALUES ('71', '72', '0', '12');
INSERT INTO `likes_likecount` VALUES ('72', '70', '0', '12');
INSERT INTO `likes_likecount` VALUES ('73', '71', '0', '12');
INSERT INTO `likes_likecount` VALUES ('74', '69', '0', '12');
INSERT INTO `likes_likecount` VALUES ('75', '68', '0', '12');
INSERT INTO `likes_likecount` VALUES ('76', '66', '0', '12');
INSERT INTO `likes_likecount` VALUES ('77', '65', '0', '12');
INSERT INTO `likes_likecount` VALUES ('78', '67', '0', '12');
INSERT INTO `likes_likecount` VALUES ('79', '63', '0', '12');
INSERT INTO `likes_likecount` VALUES ('80', '64', '0', '12');
INSERT INTO `likes_likecount` VALUES ('81', '62', '0', '12');
INSERT INTO `likes_likecount` VALUES ('82', '60', '0', '12');
INSERT INTO `likes_likecount` VALUES ('83', '61', '0', '12');
INSERT INTO `likes_likecount` VALUES ('84', '59', '0', '12');
INSERT INTO `likes_likecount` VALUES ('85', '57', '0', '12');
INSERT INTO `likes_likecount` VALUES ('86', '58', '0', '12');
INSERT INTO `likes_likecount` VALUES ('87', '56', '0', '12');
INSERT INTO `likes_likecount` VALUES ('88', '55', '0', '12');
INSERT INTO `likes_likecount` VALUES ('89', '54', '0', '12');
INSERT INTO `likes_likecount` VALUES ('90', '51', '0', '12');
INSERT INTO `likes_likecount` VALUES ('91', '50', '0', '12');
INSERT INTO `likes_likecount` VALUES ('92', '48', '0', '12');
INSERT INTO `likes_likecount` VALUES ('93', '53', '0', '12');
INSERT INTO `likes_likecount` VALUES ('94', '47', '0', '12');
INSERT INTO `likes_likecount` VALUES ('95', '49', '0', '12');
INSERT INTO `likes_likecount` VALUES ('96', '52', '0', '12');
INSERT INTO `likes_likecount` VALUES ('97', '46', '0', '12');
INSERT INTO `likes_likecount` VALUES ('98', '44', '0', '12');
INSERT INTO `likes_likecount` VALUES ('99', '45', '0', '12');
INSERT INTO `likes_likecount` VALUES ('100', '43', '0', '12');
INSERT INTO `likes_likecount` VALUES ('101', '42', '0', '12');
INSERT INTO `likes_likecount` VALUES ('102', '41', '0', '12');
INSERT INTO `likes_likecount` VALUES ('103', '40', '0', '12');
INSERT INTO `likes_likecount` VALUES ('104', '14', '0', '12');
INSERT INTO `likes_likecount` VALUES ('105', '33', '0', '12');
INSERT INTO `likes_likecount` VALUES ('106', '34', '0', '12');
INSERT INTO `likes_likecount` VALUES ('107', '35', '0', '12');
INSERT INTO `likes_likecount` VALUES ('108', '36', '0', '12');
INSERT INTO `likes_likecount` VALUES ('109', '37', '0', '12');
INSERT INTO `likes_likecount` VALUES ('110', '38', '0', '12');
INSERT INTO `likes_likecount` VALUES ('111', '39', '0', '12');
INSERT INTO `likes_likecount` VALUES ('112', '102', '0', '12');
INSERT INTO `likes_likecount` VALUES ('113', '103', '0', '12');
INSERT INTO `likes_likecount` VALUES ('114', '104', '0', '12');
INSERT INTO `likes_likecount` VALUES ('115', '105', '0', '12');

-- ----------------------------
-- Table structure for `likes_likerecord`
-- ----------------------------
DROP TABLE IF EXISTS `likes_likerecord`;
CREATE TABLE `likes_likerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likes_likerecord
-- ----------------------------
INSERT INTO `likes_likerecord` VALUES ('7', '26', '2018-05-10 20:55:25.359373', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('8', '28', '2018-05-10 20:55:26.628446', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('9', '29', '2018-05-10 20:55:27.933521', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('10', '30', '2018-05-10 20:55:29.677620', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('11', '31', '2018-05-10 20:55:31.265711', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('12', '25', '2018-05-10 20:55:33.566843', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('13', '73', '2018-05-10 20:57:37.831950', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('16', '75', '2018-05-11 10:05:19.793725', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('17', '77', '2018-05-11 13:06:00.639393', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('18', '78', '2018-05-11 13:06:05.603677', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('19', '39', '2018-05-11 13:30:15.980185', '8', '1');
INSERT INTO `likes_likerecord` VALUES ('20', '74', '2018-05-11 13:30:20.388438', '12', '1');
INSERT INTO `likes_likerecord` VALUES ('21', '33', '2018-05-12 13:41:03.701108', '8', '1');
INSERT INTO `likes_likerecord` VALUES ('22', '34', '2018-05-24 14:27:17.934876', '8', '3');
INSERT INTO `likes_likerecord` VALUES ('24', '84', '2018-05-25 16:49:01.008877', '12', '4');
INSERT INTO `likes_likerecord` VALUES ('27', '91', '2018-05-25 17:08:13.232780', '12', '4');
INSERT INTO `likes_likerecord` VALUES ('28', '90', '2018-05-25 17:08:15.661919', '12', '4');
INSERT INTO `likes_likerecord` VALUES ('31', '81', '2018-05-25 17:44:44.550116', '12', '4');
INSERT INTO `likes_likerecord` VALUES ('32', '96', '2018-05-25 17:47:39.587128', '12', '4');
INSERT INTO `likes_likerecord` VALUES ('33', '97', '2018-05-25 17:47:46.348515', '12', '4');
INSERT INTO `likes_likerecord` VALUES ('34', '3', '2018-05-25 17:48:25.354746', '8', '4');
INSERT INTO `likes_likerecord` VALUES ('35', '39', '2018-05-25 18:10:32.584659', '8', '3');
INSERT INTO `likes_likerecord` VALUES ('36', '40', '2018-05-25 18:28:00.959623', '8', '4');
INSERT INTO `likes_likerecord` VALUES ('37', '39', '2018-05-28 13:57:29.811513', '8', '4');

-- ----------------------------
-- Table structure for `my_cache_table`
-- ----------------------------
DROP TABLE IF EXISTS `my_cache_table`;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_cache_table
-- ----------------------------
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days', 'gASV4woAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwZX3ByZWZldGNoX3JlbGF0ZWRfbG9va3Vwc5QpjAZfaGludHOUfZSMDl9wcmVmZXRjaF9kb25llImMDV9yZXN1bHRfY2FjaGWUXZQofZQojAJpZJRLJ4wFdGl0bGWUjAUzMzEyM5SMDHJlYWRfbnVtX3N1bZRLBXV9lChoDEsiaA2MBmZvciAyOJRoD0sDdX2UKGgMSyZoDYwDMTEylGgPSwN1fZQoaAxLKGgNjB5EamFuZ2/mn6Xor6Llr7nmr5Tlhbbku5blrZfmrrWUaA9LAnV9lChoDEsDaA2MCemVv+WNmuWuopRoD0sCdX2UKGgMSyNoDYwGZm9yIDI5lGgPSwJ1fZQoaAxLJWgNjAQxMjMylGgPSwF1ZYwPX2l0ZXJhYmxlX2NsYXNzlGgAjA5WYWx1ZXNJdGVyYWJsZZSTlIwPX2RqYW5nb192ZXJzaW9ulIwDMi4wlIwOX3N0aWNreV9maWx0ZXKUiYwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMCl9mb3Jfd3JpdGWUiYwWX2tub3duX3JlbGF0ZWRfb2JqZWN0c5R9lIwHX2ZpZWxkc5RoDGgNhpSMA19kYpROjAVxdWVyeZSMGmRqYW5nby5kYi5tb2RlbHMuc3FsLnF1ZXJ5lIwFUXVlcnmUk5QpgZR9lCiMCmNvbWJpbmF0b3KUTowIZGlzdGluY3SUiYwQZGVmYXVsdF9vcmRlcmluZ5SIjBBjb21iaW5lZF9xdWVyaWVzlCmMDF9hbm5vdGF0aW9uc5SMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpRoD4wbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQojAZmaWx0ZXKUTowSc291cmNlX2V4cHJlc3Npb25zlF2UjBxkamFuZ28uZGIubW9kZWxzLmV4cHJlc3Npb25zlIwDQ29slJOUKYGUfZQojBVfb3V0cHV0X2ZpZWxkX29yX25vbmWUjBdkamFuZ28uZGIubW9kZWxzLmZpZWxkc5SMC19sb2FkX2ZpZWxklJOUjA9yZWFkX3N0YXRpc3RpY3OUjApSZWFkRGV0YWlslIwIcmVhZF9udW2Uh5RSlIwGdGFyZ2V0lGhQjAxvdXRwdXRfZmllbGSUaFCMEmNvbnRhaW5zX2FnZ3JlZ2F0ZZSJjBFfY29uc3RydWN0b3JfYXJnc5SMGnJlYWRfc3RhdGlzdGljc19yZWFkZGV0YWlslGhQhpR9lIaUjAVhbGlhc5RoVXViYWhUjBZyZWFkX2RldGFpbHNfX3JlYWRfbnVtlIWUfZSGlIwFZXh0cmGUfZSMCmlzX3N1bW1hcnmUiWhSaFB1YnOMC3doZXJlX2NsYXNzlIwaZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmWUjAlXaGVyZU5vZGWUk5SMFHNlbGVjdF9mb3JfdXBkYXRlX29mlCmMCW1heF9kZXB0aJRLBYwJaGlnaF9tYXJrlEsHjBFleHRyYV9zZWxlY3RfbWFza5SPlIwGX2V4dHJhlE6MEXNlbGVjdF9mb3JfdXBkYXRllImMEXN0YW5kYXJkX29yZGVyaW5nlIiMDGRlZmF1bHRfY29sc5SJjAl0YWJsZV9tYXCUfZQoaFVdlGhVYYwJYmxvZ19ibG9nlF2UaHFhdYwIbG93X21hcmuUSwCMBnNlbGVjdJRoRSmBlH2UKGhRaEuMBGJsb2eUaCRoDIeUUpRoUmh5aFRocWh5hpR9lIaUaFlocXViaEUpgZR9lChoUWhLaHdoJGgNh5RSlGhSaIBoVGhxaICGlH2UhpRoWWhxdWKGlIwYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllGg5KVKUaA9oPnOMDV9sb29rdXBfam9pbnOUXZQoaHFoVWWME19maWx0ZXJlZF9yZWxhdGlvbnOUfZSMEGV4dGVybmFsX2FsaWFzZXOUj5SMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjAhncm91cF9ieZRodWh9hpSMBXdoZXJllGhkKYGUfZQoaFOJjAhjaGlsZHJlbpRdlCiMGGRqYW5nby5kYi5tb2RlbHMubG9va3Vwc5SMCExlc3NUaGFulJOUKYGUfZQoaFOJjANsaHOUaEUpgZR9lChoUWhLaExoTYwEZGF0ZZSHlFKUaFJooWhTiWhUaFVooYaUfZSGlGhZaFV1YowDcmhzlIwIZGF0ZXRpbWWUjARkYXRllJOUQwQH4gUelIWUUpSMFGJpbGF0ZXJhbF90cmFuc2Zvcm1zlF2UdWJol4wSR3JlYXRlclRoYW5PckVxdWFslJOUKYGUfZQoaFOJaJxonWilaKhDBAfiBReUhZRSlGisXZR1YmWMB25lZ2F0ZWSUiYwJY29ubmVjdG9ylIwDQU5ElHVijB1zZWxlY3RfZm9yX3VwZGF0ZV9za2lwX2xvY2tlZJSJjAhzdWJxdWVyeZSJjA12YWx1ZXNfc2VsZWN0lGgMaA2GlIwMdXNlZF9hbGlhc2VzlI+UjA5jb21iaW5hdG9yX2FsbJSJjBBmaWx0ZXJfaXNfc3RpY2t5lImMCmJhc2VfdGFibGWUaHGMCG9yZGVyX2J5lIwNLXJlYWRfbnVtX3N1bZSFlIwWYW5ub3RhdGlvbl9zZWxlY3RfbWFza5SPlChoD5BoImgljBhzZWxlY3RfZm9yX3VwZGF0ZV9ub3dhaXSUiYwJYWxpYXNfbWFwlGg5KVKUKGhxjCNkamFuZ28uZGIubW9kZWxzLnNxbC5kYXRhc3RydWN0dXJlc5SMCUJhc2VUYWJsZZSTlCmBlH2UKIwLdGFibGVfYWxpYXOUaHGMCnRhYmxlX25hbWWUaHF1YmhVaMqMBEpvaW6Uk5QpgZR9lCiMDHBhcmVudF9hbGlhc5RocYwJam9pbl9jb2xzlGgMjAlvYmplY3RfaWSUhpSFlIwIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTmjQaFWMCmpvaW5fZmllbGSUjCJkamFuZ28uY29udHJpYi5jb250ZW50dHlwZXMuZmllbGRzlIwKR2VuZXJpY1JlbJSTlCmBlH2UKIwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5RoIowWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5RoTZOUjAhtdWx0aXBsZZSIjAtzeW1tZXRyaWNhbJSJjAxyZWxhdGVkX25hbWWUjAErlIwLcGFyZW50X2xpbmuUiYwFZmllbGSUaEtod2gkjAxyZWFkX2RldGFpbHOUh5RSlIwScmVsYXRlZF9xdWVyeV9uYW1llE6MEGxpbWl0X2Nob2ljZXNfdG+UfZR1YowJam9pbl90eXBllIwKSU5ORVIgSk9JTpRoz2hVdWJ1jBNfZXh0cmFfc2VsZWN0X2NhY2hllE6MDmV4dHJhX29yZGVyX2J5lCmMDmFsaWFzX3JlZmNvdW50lH2UKGhVSwNocUsEdYwPZGlzdGluY3RfZmllbGRzlCmMDGV4dHJhX3RhYmxlc5QpjA5zZWxlY3RfcmVsYXRlZJSJdWJ1Yi4=', '2018-05-30 20:00:09.000000');

-- ----------------------------
-- Table structure for `read_statistics_readdetail`
-- ----------------------------
DROP TABLE IF EXISTS `read_statistics_readdetail`;
CREATE TABLE `read_statistics_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of read_statistics_readdetail
-- ----------------------------
INSERT INTO `read_statistics_readdetail` VALUES ('1', '2018-05-05', '5', '36', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('2', '2018-05-05', '1', '38', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('3', '2018-05-05', '1', '3', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('4', '2018-05-04', '2', '38', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('5', '2018-05-01', '2', '10', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('6', '2018-05-06', '2', '39', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('7', '2018-05-06', '1', '38', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('8', '2018-05-06', '1', '33', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('9', '2018-05-06', '1', '34', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('10', '2018-05-06', '1', '36', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('11', '2018-05-07', '1', '39', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('12', '2018-05-07', '1', '37', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('13', '2018-05-07', '1', '33', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('14', '2018-05-10', '3', '39', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('15', '2018-05-10', '2', '38', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('16', '2018-05-10', '2', '37', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('17', '2018-05-10', '1', '36', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('18', '2018-05-11', '1', '33', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('19', '2018-05-11', '1', '35', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('20', '2018-05-11', '1', '39', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('21', '2018-05-11', '1', '38', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('22', '2018-05-12', '1', '33', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('23', '2018-05-24', '1', '38', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('24', '2018-05-24', '1', '34', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('25', '2018-05-24', '2', '39', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('26', '2018-05-25', '1', '38', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('27', '2018-05-25', '1', '34', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('28', '2018-05-25', '2', '39', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('29', '2018-05-25', '1', '3', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('30', '2018-05-25', '1', '8', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('31', '2018-05-25', '1', '40', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('32', '2018-05-25', '1', '35', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('33', '2018-05-28', '1', '36', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('34', '2018-05-28', '1', '34', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('35', '2018-05-28', '1', '40', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('36', '2018-05-28', '1', '37', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('37', '2018-05-28', '1', '39', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('38', '2018-05-28', '1', '38', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('39', '2018-05-28', '1', '35', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('40', '2018-05-28', '1', '33', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('41', '2018-05-28', '1', '32', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('42', '2018-05-28', '1', '3', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('43', '2018-05-30', '1', '40', '8');
INSERT INTO `read_statistics_readdetail` VALUES ('44', '2018-05-30', '1', '39', '8');

-- ----------------------------
-- Table structure for `read_statistics_readnum`
-- ----------------------------
DROP TABLE IF EXISTS `read_statistics_readnum`;
CREATE TABLE `read_statistics_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of read_statistics_readnum
-- ----------------------------
INSERT INTO `read_statistics_readnum` VALUES ('1', '18', '38', '8');
INSERT INTO `read_statistics_readnum` VALUES ('2', '5', '36', '8');
INSERT INTO `read_statistics_readnum` VALUES ('3', '4', '35', '8');
INSERT INTO `read_statistics_readnum` VALUES ('4', '1', '4', '8');
INSERT INTO `read_statistics_readnum` VALUES ('5', '4', '3', '8');
INSERT INTO `read_statistics_readnum` VALUES ('6', '14', '39', '8');
INSERT INTO `read_statistics_readnum` VALUES ('7', '5', '34', '8');
INSERT INTO `read_statistics_readnum` VALUES ('8', '2', '32', '8');
INSERT INTO `read_statistics_readnum` VALUES ('9', '2', '10', '8');
INSERT INTO `read_statistics_readnum` VALUES ('10', '5', '33', '8');
INSERT INTO `read_statistics_readnum` VALUES ('11', '4', '37', '8');
INSERT INTO `read_statistics_readnum` VALUES ('12', '1', '8', '8');
INSERT INTO `read_statistics_readnum` VALUES ('13', '3', '40', '8');

-- ----------------------------
-- Table structure for `user_profile`
-- ----------------------------
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO `user_profile` VALUES ('1', '李杰', '3');
INSERT INTO `user_profile` VALUES ('2', '陈雪琪', '5');
