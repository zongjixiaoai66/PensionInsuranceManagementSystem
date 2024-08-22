/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t373`;
CREATE DATABASE IF NOT EXISTS `t373` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t373`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-05-17 01:56:52'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-05-17 01:56:52'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-05-17 01:56:52'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-05-17 01:56:52'),
	(5, 'xiangmu_types', '保险类型', 1, '保险类型1', NULL, NULL, '2023-05-17 01:56:52'),
	(6, 'xiangmu_types', '保险类型', 2, '保险类型2', NULL, NULL, '2023-05-17 01:56:52'),
	(7, 'xiangmu_types', '保险类型', 3, '保险类型3', NULL, NULL, '2023-05-17 01:56:52'),
	(8, 'xiangmu_types', '保险类型', 4, '保险类型4', NULL, NULL, '2023-05-17 01:56:52'),
	(9, 'xiangmu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-05-17 01:56:52'),
	(10, 'zhengce_types', '养老政策类型', 1, '养老政策类型1', NULL, NULL, '2023-05-17 01:56:52'),
	(11, 'zhengce_types', '养老政策类型', 2, '养老政策类型2', NULL, NULL, '2023-05-17 01:56:52'),
	(12, 'zhengce_types', '养老政策类型', 3, '养老政策类型3', NULL, NULL, '2023-05-17 01:56:52'),
	(13, 'zhengce_types', '养老政策类型', 4, '养老政策类型4', NULL, NULL, '2023-05-17 01:56:52'),
	(14, 'zhengce_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-05-17 01:56:52'),
	(15, 'xiangmu_yuyue_yesno_types', '报名状态', 1, '待审核', NULL, NULL, '2023-05-17 01:56:52'),
	(16, 'xiangmu_yuyue_yesno_types', '报名状态', 2, '同意', NULL, NULL, '2023-05-17 01:56:52'),
	(17, 'xiangmu_yuyue_yesno_types', '报名状态', 3, '拒绝', NULL, NULL, '2023-05-17 01:56:52');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告资讯';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-05-17 01:57:43', '公告详情1', '2023-05-17 01:57:43'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-05-17 01:57:43', '公告详情2', '2023-05-17 01:57:43'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 2, '2023-05-17 01:57:43', '公告详情3', '2023-05-17 01:57:43'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-05-17 01:57:43', '公告详情4', '2023-05-17 01:57:43'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-05-17 01:57:43', '公告详情5', '2023-05-17 01:57:43'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 2, '2023-05-17 01:57:43', '公告详情6', '2023-05-17 01:57:43'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-05-17 01:57:43', '公告详情7', '2023-05-17 01:57:43'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-05-17 01:57:43', '公告详情8', '2023-05-17 01:57:43'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 1, '2023-05-17 01:57:43', '公告详情9', '2023-05-17 01:57:43'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 2, '2023-05-17 01:57:43', '公告详情10', '2023-05-17 01:57:43'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-05-17 01:57:43', '公告详情11', '2023-05-17 01:57:43'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-05-17 01:57:43', '公告详情12', '2023-05-17 01:57:43'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-05-17 01:57:43', '公告详情13', '2023-05-17 01:57:43'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-05-17 01:57:43', '公告详情14', '2023-05-17 01:57:43');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, '留言标题1', '留言内容1', '2023-05-17 01:57:43', '回复信息1', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(2, 2, '留言标题2', '留言内容2', '2023-05-17 01:57:43', '回复信息2', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(3, 3, '留言标题3', '留言内容3', '2023-05-17 01:57:43', '回复信息3', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(4, 3, '留言标题4', '留言内容4', '2023-05-17 01:57:43', '回复信息4', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(5, 1, '留言标题5', '留言内容5', '2023-05-17 01:57:43', '回复信息5', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(6, 2, '留言标题6', '留言内容6', '2023-05-17 01:57:43', '回复信息6', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(7, 1, '留言标题7', '留言内容7', '2023-05-17 01:57:43', '回复信息7', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(8, 1, '留言标题8', '留言内容8', '2023-05-17 01:57:43', '回复信息8', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(9, 3, '留言标题9', '留言内容9', '2023-05-17 01:57:43', '回复信息9', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(10, 2, '留言标题10', '留言内容10', '2023-05-17 01:57:43', '回复信息10', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(11, 2, '留言标题11', '留言内容11', '2023-05-17 01:57:43', '回复信息11', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(12, 1, '留言标题12', '留言内容12', '2023-05-17 01:57:43', '回复信息12', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(13, 3, '留言标题13', '留言内容13', '2023-05-17 01:57:43', '回复信息13', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(14, 3, '留言标题14', '留言内容14', '2023-05-17 01:57:43', '回复信息14', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(15, 1, '测试', '测试的想', '2023-05-17 02:27:27', NULL, NULL, '2023-05-17 02:27:27'),
	(16, 1, '666', '6666', '2024-08-12 07:02:23', NULL, NULL, '2024-08-12 07:02:23');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'catz185rtoqumqwqqh7vngzut3sx79qt', '2023-05-17 02:01:42', '2024-08-12 08:02:07'),
	(2, 1, 'a1', 'yuangong', '员工', 'wang5c6uryewe947yp5p554t6h4fh7g2', '2023-05-17 02:15:39', '2024-08-12 08:01:53'),
	(3, 1, 'admin', 'users', '管理员', '7nvtbr3pspujh59gbzfmgzyqgwyi1p1w', '2023-05-17 02:30:16', '2024-08-12 08:00:22');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-05-17 01:56:52');

DROP TABLE IF EXISTS `xiangmu`;
CREATE TABLE IF NOT EXISTS `xiangmu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称  Search111 ',
  `xiangmu_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmu_photo` varchar(200) DEFAULT NULL COMMENT '项目照片',
  `xiangmu_types` int DEFAULT NULL COMMENT '保险类型 Search111',
  `xiangmu_new_money` decimal(10,2) DEFAULT NULL COMMENT '金额 ',
  `xiangmu_jiaofei` int DEFAULT NULL COMMENT '缴费年数',
  `xiangmu_content` longtext COMMENT '项目介绍 ',
  `xiangmu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='项目';

DELETE FROM `xiangmu`;
INSERT INTO `xiangmu` (`id`, `xiangmu_name`, `xiangmu_uuid_number`, `xiangmu_photo`, `xiangmu_types`, `xiangmu_new_money`, `xiangmu_jiaofei`, `xiangmu_content`, `xiangmu_delete`, `insert_time`, `create_time`) VALUES
	(1, '项目名称1', '1684288663915', 'upload/xiangmu1.jpg', 3, 156.77, 127, '项目介绍1', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(2, '项目名称2', '1684288663932', 'upload/xiangmu2.jpg', 4, 271.67, 376, '项目介绍2', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(3, '项目名称3', '1684288663882', 'upload/xiangmu3.jpg', 3, 373.41, 458, '项目介绍3', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(4, '项目名称4', '1684288663871', 'upload/xiangmu4.jpg', 3, 83.41, 27, '项目介绍4', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(5, '项目名称5', '1684288663949', 'upload/xiangmu5.jpg', 4, 98.00, 496, '项目介绍5', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(6, '项目名称6', '1684288663944', 'upload/xiangmu6.jpg', 4, 363.08, 246, '项目介绍6', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(7, '项目名称7', '1684288663926', 'upload/xiangmu7.jpg', 3, 418.99, 265, '项目介绍7', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(8, '项目名称8', '1684288663916', 'upload/xiangmu8.jpg', 1, 129.83, 411, '项目介绍8', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(9, '项目名称9', '1684288663927', 'upload/xiangmu9.jpg', 4, 474.07, 491, '项目介绍9', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(10, '项目名称10', '1684288663934', 'upload/xiangmu10.jpg', 4, 105.16, 145, '项目介绍10', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(11, '项目名称11', '1684288663954', 'upload/xiangmu11.jpg', 2, 478.31, 196, '项目介绍11', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(12, '项目名称12', '1684288663931', 'upload/xiangmu12.jpg', 1, 98.63, 49, '项目介绍12', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(13, '项目名称13', '1684288663933', 'upload/xiangmu13.jpg', 1, 253.25, 325, '项目介绍13', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(14, '项目名称14', '1684288663938', 'upload/xiangmu14.jpg', 3, 203.28, 257, '项目介绍14', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43');

DROP TABLE IF EXISTS `xiangmu_collection`;
CREATE TABLE IF NOT EXISTS `xiangmu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangmu_id` int DEFAULT NULL COMMENT '项目',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xiangmu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='项目收藏';

DELETE FROM `xiangmu_collection`;
INSERT INTO `xiangmu_collection` (`id`, `xiangmu_id`, `yonghu_id`, `xiangmu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(2, 2, 2, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(3, 3, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(4, 4, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(5, 5, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(6, 6, 2, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(7, 7, 1, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(8, 8, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(9, 9, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(10, 10, 2, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(11, 11, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(12, 12, 2, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(13, 13, 1, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(14, 14, 2, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43');

DROP TABLE IF EXISTS `xiangmu_liuyan`;
CREATE TABLE IF NOT EXISTS `xiangmu_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangmu_id` int DEFAULT NULL COMMENT '项目',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xiangmu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='项目留言';

DELETE FROM `xiangmu_liuyan`;
INSERT INTO `xiangmu_liuyan` (`id`, `xiangmu_id`, `yonghu_id`, `xiangmu_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-05-17 01:57:43', '回复信息1', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(2, 2, 2, '留言内容2', '2023-05-17 01:57:43', '回复信息2', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(3, 3, 2, '留言内容3', '2023-05-17 01:57:43', '回复信息3', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(4, 4, 3, '留言内容4', '2023-05-17 01:57:43', '回复信息4', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(5, 5, 2, '留言内容5', '2023-05-17 01:57:43', '回复信息5', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(6, 6, 2, '留言内容6', '2023-05-17 01:57:43', '回复信息6', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(7, 7, 3, '留言内容7', '2023-05-17 01:57:43', '回复信息7', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(8, 8, 2, '留言内容8', '2023-05-17 01:57:43', '回复信息8', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(9, 9, 3, '留言内容9', '2023-05-17 01:57:43', '回复信息9', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(10, 10, 3, '留言内容10', '2023-05-17 01:57:43', '回复信息10', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(11, 11, 3, '留言内容11', '2023-05-17 01:57:43', '回复信息11', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(12, 12, 1, '留言内容12', '2023-05-17 01:57:43', '回复信息12', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(13, 13, 3, '留言内容13', '2023-05-17 01:57:43', '回复信息13', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(14, 14, 3, '留言内容14', '2023-05-17 01:57:43', '回复信息14', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(15, 14, 1, '啊', '2023-05-17 02:27:43', '123', '2023-05-17 02:29:39', '2023-05-17 02:27:43');

DROP TABLE IF EXISTS `xiangmu_yuyue`;
CREATE TABLE IF NOT EXISTS `xiangmu_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangmu_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `xiangmu_id` int DEFAULT NULL COMMENT '项目',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `xiangmu_yuyue_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '项目报名时间',
  `xiangmu_yuyue_cunzhen` varchar(200) DEFAULT NULL COMMENT '所属村镇',
  `xiangmu_yuyue_dizhi` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `xiangmu_yuyue_yesno_types` int DEFAULT NULL COMMENT '报名状态 Search111 ',
  `xiangmu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `xiangmu_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `xiangmu_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '参保日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='保险参保';

DELETE FROM `xiangmu_yuyue`;
INSERT INTO `xiangmu_yuyue` (`id`, `xiangmu_yuyue_uuid_number`, `xiangmu_id`, `yonghu_id`, `yuangong_id`, `xiangmu_yuyue_text`, `insert_time`, `xiangmu_yuyue_cunzhen`, `xiangmu_yuyue_dizhi`, `xiangmu_yuyue_yesno_types`, `xiangmu_yuyue_yesno_text`, `xiangmu_yuyue_shenhe_time`, `xiangmu_yuyue_time`, `create_time`) VALUES
	(1, '1684288663896', 1, 1, 1, '报名理由1', '2023-05-17 01:57:43', '所属村镇1', '家庭地址1', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(2, '1684288663933', 2, 3, 3, '报名理由2', '2023-05-17 01:57:43', '所属村镇2', '家庭地址2', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(3, '1684288663960', 3, 3, 2, '报名理由3', '2023-05-17 01:57:43', '所属村镇3', '家庭地址3', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(4, '1684288663866', 4, 2, 2, '报名理由4', '2023-05-17 01:57:43', '所属村镇4', '家庭地址4', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(5, '1684288663945', 5, 2, 2, '报名理由5', '2023-05-17 01:57:43', '所属村镇5', '家庭地址5', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(6, '1684288663911', 6, 1, 2, '报名理由6', '2023-05-17 01:57:43', '所属村镇6', '家庭地址6', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(7, '1684288663879', 7, 1, 3, '报名理由7', '2023-05-17 01:57:43', '所属村镇7', '家庭地址7', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(8, '1684288663926', 8, 3, 3, '报名理由8', '2023-05-17 01:57:43', '所属村镇8', '家庭地址8', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(9, '1684288663932', 9, 1, 1, '报名理由9', '2023-05-17 01:57:43', '所属村镇9', '家庭地址9', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(10, '1684288663883', 10, 1, 1, '报名理由10', '2023-05-17 01:57:43', '所属村镇10', '家庭地址10', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(11, '1684288663951', 11, 1, 2, '报名理由11', '2023-05-17 01:57:43', '所属村镇11', '家庭地址11', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(12, '1684288663946', 12, 3, 1, '报名理由12', '2023-05-17 01:57:43', '所属村镇12', '家庭地址12', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(13, '1684288663950', 13, 2, 3, '报名理由13', '2023-05-17 01:57:43', '所属村镇13', '家庭地址13', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(14, '1684288663963', 14, 3, 3, '报名理由14', '2023-05-17 01:57:43', '所属村镇14', '家庭地址14', 1, NULL, NULL, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(16, '1684290499723', 14, 1, 1, '我要参保', '2023-05-17 02:28:29', '测试', '测试', 2, '123456', '2023-05-17 02:29:51', '2023-05-16 16:00:00', '2023-05-17 02:28:29');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_uuid_number`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `new_money`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '1684288663926', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, 421.44, '1@qq.com', '2023-05-17 01:57:43'),
	(2, '用户2', '123456', '1684288663937', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, 881.70, '2@qq.com', '2023-05-17 01:57:43'),
	(3, '用户3', '123456', '1684288663924', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, 639.46, '3@qq.com', '2023-05-17 01:57:43');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '员工编号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_uuid_number`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `sex_types`, `yuangong_email`, `create_time`) VALUES
	(1, '员工1', '123456', '1684288663967', '员工姓名1', '17703786901', '410224199010102001', 'upload/yuangong1.jpg', 1, '1@qq.com', '2023-05-17 01:57:43'),
	(2, '员工2', '123456', '1684288663947', '员工姓名2', '17703786902', '410224199010102002', 'upload/yuangong2.jpg', 2, '2@qq.com', '2023-05-17 01:57:43'),
	(3, '员工3', '123456', '1684288663920', '员工姓名3', '17703786903', '410224199010102003', 'upload/yuangong3.jpg', 1, '3@qq.com', '2023-05-17 01:57:43');

DROP TABLE IF EXISTS `zhengce`;
CREATE TABLE IF NOT EXISTS `zhengce` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhengce_name` varchar(200) DEFAULT NULL COMMENT '养老政策名称  Search111 ',
  `zhengce_uuid_number` varchar(200) DEFAULT NULL COMMENT '养老政策编号',
  `zhengce_photo` varchar(200) DEFAULT NULL COMMENT '养老政策照片',
  `zhengce_types` int DEFAULT NULL COMMENT '养老政策类型 Search111',
  `zhengce_content` longtext COMMENT '养老政策介绍 ',
  `zhengce_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='养老政策';

DELETE FROM `zhengce`;
INSERT INTO `zhengce` (`id`, `zhengce_name`, `zhengce_uuid_number`, `zhengce_photo`, `zhengce_types`, `zhengce_content`, `zhengce_delete`, `insert_time`, `create_time`) VALUES
	(1, '养老政策名称1', '1684288663907', 'upload/zhengce1.jpg', 1, '养老政策介绍1', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(2, '养老政策名称2', '1684288663913', 'upload/zhengce2.jpg', 2, '养老政策介绍2', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(3, '养老政策名称3', '1684288663946', 'upload/zhengce3.jpg', 1, '养老政策介绍3', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(4, '养老政策名称4', '1684288663919', 'upload/zhengce4.jpg', 4, '养老政策介绍4', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(5, '养老政策名称5', '1684288663883', 'upload/zhengce5.jpg', 4, '养老政策介绍5', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(6, '养老政策名称6', '1684288663905', 'upload/zhengce6.jpg', 2, '养老政策介绍6', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(7, '养老政策名称7', '1684288663917', 'upload/zhengce7.jpg', 2, '养老政策介绍7', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(8, '养老政策名称8', '1684288663876', 'upload/zhengce8.jpg', 2, '养老政策介绍8', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(9, '养老政策名称9', '1684288663929', 'upload/zhengce9.jpg', 1, '养老政策介绍9', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(10, '养老政策名称10', '1684288663937', 'upload/zhengce10.jpg', 1, '养老政策介绍10', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(11, '养老政策名称11', '1684288663930', 'upload/zhengce11.jpg', 3, '养老政策介绍11', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(12, '养老政策名称12', '1684288663898', 'upload/zhengce12.jpg', 1, '养老政策介绍12', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(13, '养老政策名称13', '1684288663971', 'upload/zhengce13.jpg', 1, '养老政策介绍13', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(14, '养老政策名称14', '1684288663898', 'upload/zhengce14.jpg', 4, '养老政策介绍14', 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43');

DROP TABLE IF EXISTS `zhengce_collection`;
CREATE TABLE IF NOT EXISTS `zhengce_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhengce_id` int DEFAULT NULL COMMENT '养老政策',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhengce_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='养老政策收藏';

DELETE FROM `zhengce_collection`;
INSERT INTO `zhengce_collection` (`id`, `zhengce_id`, `yonghu_id`, `zhengce_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(2, 2, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(3, 3, 2, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(4, 4, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(5, 5, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(6, 6, 2, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(7, 7, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(8, 8, 1, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(9, 9, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(10, 10, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(11, 11, 2, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(12, 12, 3, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(14, 14, 2, 1, '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(15, 13, 1, 1, '2023-05-17 02:26:59', '2023-05-17 02:26:59'),
	(16, 12, 1, 1, '2024-08-12 07:02:37', '2024-08-12 07:02:37');

DROP TABLE IF EXISTS `zhengce_liuyan`;
CREATE TABLE IF NOT EXISTS `zhengce_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhengce_id` int DEFAULT NULL COMMENT '养老政策',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhengce_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='养老政策留言';

DELETE FROM `zhengce_liuyan`;
INSERT INTO `zhengce_liuyan` (`id`, `zhengce_id`, `yonghu_id`, `zhengce_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2023-05-17 01:57:43', '回复信息1', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(2, 2, 2, '留言内容2', '2023-05-17 01:57:43', '回复信息2', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(3, 3, 2, '留言内容3', '2023-05-17 01:57:43', '回复信息3', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(4, 4, 1, '留言内容4', '2023-05-17 01:57:43', '回复信息4', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(5, 5, 3, '留言内容5', '2023-05-17 01:57:43', '回复信息5', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(6, 6, 2, '留言内容6', '2023-05-17 01:57:43', '回复信息6', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(7, 7, 3, '留言内容7', '2023-05-17 01:57:43', '回复信息7', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(8, 8, 2, '留言内容8', '2023-05-17 01:57:43', '回复信息8', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(9, 9, 2, '留言内容9', '2023-05-17 01:57:43', '回复信息9', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(10, 10, 3, '留言内容10', '2023-05-17 01:57:43', '回复信息10', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(11, 11, 2, '留言内容11', '2023-05-17 01:57:43', '回复信息11', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(12, 12, 2, '留言内容12', '2023-05-17 01:57:43', '回复信息12', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(13, 13, 1, '留言内容13', '2023-05-17 01:57:43', '回复信息13', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(14, 14, 2, '留言内容14', '2023-05-17 01:57:43', '回复信息14', '2023-05-17 01:57:43', '2023-05-17 01:57:43'),
	(15, 13, 1, '阿萨德手打', '2023-05-17 02:27:04', '132', '2023-05-17 02:29:20', '2023-05-17 02:27:04');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
