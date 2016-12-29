/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : rute

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-29 09:18:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_12_28_022324_create_table_rute', '1');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_rute`
-- ----------------------------
DROP TABLE IF EXISTS `tes_rute`;
CREATE TABLE `tes_rute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rute` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `lat` double(10,5) NOT NULL DEFAULT '0.00000',
  `lng` double(10,5) NOT NULL DEFAULT '0.00000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tes_rute
-- ----------------------------
INSERT INTO `tes_rute` VALUES ('19', 'Rute1', '-7.96803', '112.63896', '2016-12-28 11:49:08', '2016-12-28 11:49:08');
INSERT INTO `tes_rute` VALUES ('20', 'Rute1', '-7.97262', '112.63784', '2016-12-28 11:49:08', '2016-12-28 11:49:08');
INSERT INTO `tes_rute` VALUES ('21', 'Rute1', '-7.97037', '112.63784', '2016-12-28 11:49:08', '2016-12-28 11:49:08');
INSERT INTO `tes_rute` VALUES ('22', 'Rute1', '-7.97415', '112.63814', '2016-12-28 11:49:08', '2016-12-28 11:49:08');
INSERT INTO `tes_rute` VALUES ('23', 'Rute 2', '-7.96429', '112.63162', '2016-12-28 11:52:12', '2016-12-28 11:52:12');
INSERT INTO `tes_rute` VALUES ('24', 'Rute 2', '-7.96748', '112.63098', '2016-12-28 11:52:12', '2016-12-28 11:52:12');
INSERT INTO `tes_rute` VALUES ('25', 'Rute 2', '-7.96570', '112.63162', '2016-12-28 11:52:12', '2016-12-28 11:52:12');
INSERT INTO `tes_rute` VALUES ('26', 'Rute 2', '-7.96931', '112.63063', '2016-12-28 11:52:12', '2016-12-28 11:52:12');
INSERT INTO `tes_rute` VALUES ('27', 'Rute 2', '-7.97075', '112.63012', '2016-12-28 11:52:12', '2016-12-28 11:52:12');
INSERT INTO `tes_rute` VALUES ('28', 'Rute 3', '-7.96310', '112.63059', '2016-12-28 11:54:06', '2016-12-28 11:54:06');
INSERT INTO `tes_rute` VALUES ('29', 'Rute 3', '-7.96485', '112.63003', '2016-12-28 11:54:06', '2016-12-28 11:54:06');
INSERT INTO `tes_rute` VALUES ('30', 'Rute 3', '-7.96650', '112.63029', '2016-12-28 11:54:06', '2016-12-28 11:54:06');
INSERT INTO `tes_rute` VALUES ('31', 'Rute 3', '-7.96939', '112.62969', '2016-12-28 11:54:06', '2016-12-28 11:54:06');
INSERT INTO `tes_rute` VALUES ('32', 'Rute 3', '-7.97122', '112.62999', '2016-12-28 11:54:06', '2016-12-28 11:54:06');
INSERT INTO `tes_rute` VALUES ('33', 'Rute 3', '-7.97373', '112.63188', '2016-12-28 11:54:06', '2016-12-28 11:54:06');
INSERT INTO `tes_rute` VALUES ('34', 'Rute 3', '-7.97148', '112.63368', '2016-12-28 11:54:06', '2016-12-28 11:54:06');
INSERT INTO `tes_rute` VALUES ('35', 'Rute 3', '-7.96799', '112.64008', '2016-12-28 11:54:06', '2016-12-28 11:54:06');
INSERT INTO `tes_rute` VALUES ('36', 'Rute 6', '-7.96455', '112.63205', '2016-12-28 11:58:25', '2016-12-28 11:58:25');
INSERT INTO `tes_rute` VALUES ('37', 'Rute 6', '-7.96786', '112.63158', '2016-12-28 11:58:25', '2016-12-28 11:58:25');
INSERT INTO `tes_rute` VALUES ('38', 'Rute 6', '-7.96625', '112.63093', '2016-12-28 11:58:25', '2016-12-28 11:58:25');
INSERT INTO `tes_rute` VALUES ('39', 'Rute 6', '-7.96952', '112.63111', '2016-12-28 11:58:25', '2016-12-28 11:58:25');
INSERT INTO `tes_rute` VALUES ('40', 'Rute 6', '-7.97114', '112.63068', '2016-12-28 11:58:25', '2016-12-28 11:58:25');
INSERT INTO `tes_rute` VALUES ('41', 'Rute 6', '-7.97190', '112.63072', '2016-12-28 11:58:25', '2016-12-28 11:58:25');
INSERT INTO `tes_rute` VALUES ('42', 'rute 7', '-7.96514', '112.64574', '2016-12-28 11:58:47', '2016-12-28 11:58:47');
INSERT INTO `tes_rute` VALUES ('43', 'rute 7', '-7.96642', '112.64497', '2016-12-28 11:58:47', '2016-12-28 11:58:47');
INSERT INTO `tes_rute` VALUES ('44', 'rute 7', '-7.96799', '112.64467', '2016-12-28 11:58:47', '2016-12-28 11:58:47');
INSERT INTO `tes_rute` VALUES ('45', 'rute 7', '-7.96999', '112.64432', '2016-12-28 11:58:47', '2016-12-28 11:58:47');
INSERT INTO `tes_rute` VALUES ('46', 'rute 7', '-7.97194', '112.64480', '2016-12-28 11:58:47', '2016-12-28 11:58:47');
INSERT INTO `tes_rute` VALUES ('47', 'rute 7', '-7.97339', '112.64415', '2016-12-28 11:58:47', '2016-12-28 11:58:47');
INSERT INTO `tes_rute` VALUES ('48', 'Rute 8', '-7.96102', '112.64149', '2016-12-28 13:13:42', '2016-12-28 13:13:42');
INSERT INTO `tes_rute` VALUES ('49', 'Rute 8', '-7.96302', '112.64162', '2016-12-28 13:13:42', '2016-12-28 13:13:42');
INSERT INTO `tes_rute` VALUES ('50', 'Rute 8', '-7.96553', '112.64166', '2016-12-28 13:13:43', '2016-12-28 13:13:43');
INSERT INTO `tes_rute` VALUES ('51', 'Rute 8', '-7.96761', '112.64136', '2016-12-28 13:13:43', '2016-12-28 13:13:43');
INSERT INTO `tes_rute` VALUES ('52', 'Rute 8', '-7.96820', '112.64214', '2016-12-28 13:13:43', '2016-12-28 13:13:43');
INSERT INTO `tes_rute` VALUES ('53', 'Rute 8', '-7.97003', '112.64188', '2016-12-28 13:13:43', '2016-12-28 13:13:43');
INSERT INTO `tes_rute` VALUES ('54', 'Rute 8', '-7.97203', '112.64209', '2016-12-28 13:13:43', '2016-12-28 13:13:43');
INSERT INTO `tes_rute` VALUES ('55', 'Rute 9', '-7.96468', '112.62660', '2016-12-28 13:21:44', '2016-12-28 13:21:44');
INSERT INTO `tes_rute` VALUES ('56', 'Rute 9', '-7.96599', '112.62690', '2016-12-28 13:21:44', '2016-12-28 13:21:44');
INSERT INTO `tes_rute` VALUES ('57', 'Rute 9', '-7.97041', '112.62677', '2016-12-28 13:21:44', '2016-12-28 13:21:44');
INSERT INTO `tes_rute` VALUES ('58', 'Rute 10', '-7.96452', '112.63501', '2016-12-29 00:19:18', '2016-12-29 00:19:18');
INSERT INTO `tes_rute` VALUES ('59', 'Rute 10', '-7.96469', '112.63531', '2016-12-29 00:19:18', '2016-12-29 00:19:18');
INSERT INTO `tes_rute` VALUES ('60', 'Rute 10', '-7.96480', '112.63557', '2016-12-29 00:19:18', '2016-12-29 00:19:18');
INSERT INTO `tes_rute` VALUES ('61', 'Rute 10', '-7.96495', '112.63575', '2016-12-29 00:19:18', '2016-12-29 00:19:18');
INSERT INTO `tes_rute` VALUES ('62', 'Rute 10', '-7.96508', '112.63595', '2016-12-29 00:19:18', '2016-12-29 00:19:18');
INSERT INTO `tes_rute` VALUES ('63', 'Rute 10', '-7.96514', '112.63610', '2016-12-29 00:19:18', '2016-12-29 00:19:18');
INSERT INTO `tes_rute` VALUES ('64', 'Rute 10', '-7.96526', '112.63627', '2016-12-29 00:19:18', '2016-12-29 00:19:18');
INSERT INTO `tes_rute` VALUES ('65', 'Rute 10', '-7.96532', '112.63643', '2016-12-29 00:19:18', '2016-12-29 00:19:18');
INSERT INTO `tes_rute` VALUES ('66', 'Rute 10', '-7.96547', '112.63661', '2016-12-29 00:19:18', '2016-12-29 00:19:18');
INSERT INTO `tes_rute` VALUES ('67', 'Rute 10', '-7.96555', '112.63676', '2016-12-29 00:19:19', '2016-12-29 00:19:19');
INSERT INTO `tes_rute` VALUES ('68', 'Rute 11', '-7.96351', '112.63557', '2016-12-29 00:19:45', '2016-12-29 00:19:45');
INSERT INTO `tes_rute` VALUES ('69', 'Rute 11', '-7.96404', '112.63525', '2016-12-29 00:19:45', '2016-12-29 00:19:45');
INSERT INTO `tes_rute` VALUES ('70', 'Rute 11', '-7.96378', '112.63544', '2016-12-29 00:19:45', '2016-12-29 00:19:45');
INSERT INTO `tes_rute` VALUES ('71', 'Rute 11', '-7.96434', '112.63512', '2016-12-29 00:19:45', '2016-12-29 00:19:45');
INSERT INTO `tes_rute` VALUES ('72', 'Rute 12', '-7.97071', '112.63192', '2016-12-29 00:20:46', '2016-12-29 00:20:46');
INSERT INTO `tes_rute` VALUES ('73', 'Rute 12', '-7.97152', '112.63149', '2016-12-29 00:20:46', '2016-12-29 00:20:46');
INSERT INTO `tes_rute` VALUES ('74', 'Rute 12', '-7.97233', '112.63128', '2016-12-29 00:20:46', '2016-12-29 00:20:46');
INSERT INTO `tes_rute` VALUES ('75', 'Rute 12', '-7.97301', '112.63081', '2016-12-29 00:20:46', '2016-12-29 00:20:46');
INSERT INTO `tes_rute` VALUES ('76', 'Rute 13', '-7.96349', '112.62543', '2016-12-29 00:37:23', '2016-12-29 00:37:23');
INSERT INTO `tes_rute` VALUES ('77', 'Rute 13', '-7.96373', '112.62532', '2016-12-29 00:37:23', '2016-12-29 00:37:23');
INSERT INTO `tes_rute` VALUES ('78', 'Rute 13', '-7.96390', '112.62522', '2016-12-29 00:37:23', '2016-12-29 00:37:23');
INSERT INTO `tes_rute` VALUES ('79', 'Rute 13', '-7.96409', '112.62516', '2016-12-29 00:37:24', '2016-12-29 00:37:24');
INSERT INTO `tes_rute` VALUES ('80', 'Rute 13', '-7.96420', '112.62513', '2016-12-29 00:37:24', '2016-12-29 00:37:24');
INSERT INTO `tes_rute` VALUES ('81', 'Rute 13', '-7.96432', '112.62509', '2016-12-29 00:37:24', '2016-12-29 00:37:24');
INSERT INTO `tes_rute` VALUES ('82', 'Rute 13', '-7.96449', '112.62501', '2016-12-29 00:37:24', '2016-12-29 00:37:24');
INSERT INTO `tes_rute` VALUES ('83', 'Rute 13', '-7.96469', '112.62501', '2016-12-29 00:37:24', '2016-12-29 00:37:24');
INSERT INTO `tes_rute` VALUES ('84', 'Rute 13', '-7.96482', '112.62499', '2016-12-29 00:37:24', '2016-12-29 00:37:24');
INSERT INTO `tes_rute` VALUES ('85', 'Rute 13', '-7.96498', '112.62493', '2016-12-29 00:37:24', '2016-12-29 00:37:24');
INSERT INTO `tes_rute` VALUES ('86', 'Rute 14', '-7.96353', '112.63548', '2016-12-29 00:38:34', '2016-12-29 00:38:34');
INSERT INTO `tes_rute` VALUES ('87', 'Rute 14', '-7.96408', '112.63544', '2016-12-29 00:38:35', '2016-12-29 00:38:35');
INSERT INTO `tes_rute` VALUES ('88', 'Rute 14', '-7.96468', '112.63527', '2016-12-29 00:38:35', '2016-12-29 00:38:35');
INSERT INTO `tes_rute` VALUES ('89', 'Rute 14', '-7.96523', '112.63488', '2016-12-29 00:38:35', '2016-12-29 00:38:35');
INSERT INTO `tes_rute` VALUES ('90', 'Rute 14', '-7.96514', '112.63458', '2016-12-29 00:38:35', '2016-12-29 00:38:35');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
