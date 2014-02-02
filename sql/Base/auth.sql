/*
Navicat MySQL Data Transfer

Source Server         : Gods of Nation
Source Server Version : 50156
Source Host           : 85.214.206.245:3306
Source Database       : auth510

Target Server Type    : MYSQL
Target Server Version : 50156
File Encoding         : 65001

Date: 2014-02-02 21:54:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL DEFAULT '',
  `sha_pass_hash` varchar(40) NOT NULL DEFAULT '',
  `sessionkey` varchar(80) NOT NULL DEFAULT '',
  `v` varchar(64) NOT NULL DEFAULT '',
  `s` varchar(64) NOT NULL DEFAULT '',
  `reg_mail` varchar(255) NOT NULL DEFAULT '',
  `token_key` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(254) NOT NULL DEFAULT '',
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lock_country` varchar(2) NOT NULL DEFAULT '00',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `mutetime` bigint(20) NOT NULL DEFAULT '0',
  `mutereason` varchar(255) NOT NULL DEFAULT '',
  `muteby` varchar(50) NOT NULL DEFAULT '',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `os` varchar(3) NOT NULL DEFAULT '',
  `recruiter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=utf8 COMMENT='Account System';

-- ----------------------------
-- Table structure for `account_access`
-- ----------------------------
DROP TABLE IF EXISTS `account_access`;
CREATE TABLE `account_access` (
  `id` int(10) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `account_banned`
-- ----------------------------
DROP TABLE IF EXISTS `account_banned`;
CREATE TABLE `account_banned` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- ----------------------------
-- Records of account_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `ip_banned`
-- ----------------------------
DROP TABLE IF EXISTS `ip_banned`;
CREATE TABLE `ip_banned` (
  `ip` varchar(15) NOT NULL DEFAULT '127.0.0.1',
  `bandate` int(10) unsigned NOT NULL,
  `unbandate` int(10) unsigned NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(255) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Banned IPs';

-- ----------------------------
-- Records of ip_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `time` int(10) unsigned NOT NULL,
  `realm` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `string` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for `realmcharacters`
-- ----------------------------
DROP TABLE IF EXISTS `realmcharacters`;
CREATE TABLE `realmcharacters` (
  `realmid` int(10) unsigned NOT NULL DEFAULT '0',
  `acctid` int(10) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Realm Character Tracker';

-- ----------------------------
-- Records of realmcharacters
-- ----------------------------
INSERT INTO `realmcharacters` VALUES ('1', '1', '1');
INSERT INTO `realmcharacters` VALUES ('1', '4', '0');
INSERT INTO `realmcharacters` VALUES ('1', '5', '2');
INSERT INTO `realmcharacters` VALUES ('1', '7', '0');
INSERT INTO `realmcharacters` VALUES ('1', '8', '0');
INSERT INTO `realmcharacters` VALUES ('1', '9', '2');
INSERT INTO `realmcharacters` VALUES ('1', '10', '1');
INSERT INTO `realmcharacters` VALUES ('1', '12', '3');
INSERT INTO `realmcharacters` VALUES ('1', '13', '4');
INSERT INTO `realmcharacters` VALUES ('1', '14', '0');
INSERT INTO `realmcharacters` VALUES ('1', '15', '0');
INSERT INTO `realmcharacters` VALUES ('1', '16', '0');
INSERT INTO `realmcharacters` VALUES ('1', '17', '0');
INSERT INTO `realmcharacters` VALUES ('1', '19', '3');
INSERT INTO `realmcharacters` VALUES ('1', '20', '0');
INSERT INTO `realmcharacters` VALUES ('1', '21', '0');
INSERT INTO `realmcharacters` VALUES ('1', '24', '0');
INSERT INTO `realmcharacters` VALUES ('1', '26', '0');
INSERT INTO `realmcharacters` VALUES ('1', '27', '0');
INSERT INTO `realmcharacters` VALUES ('1', '28', '2');
INSERT INTO `realmcharacters` VALUES ('1', '29', '0');
INSERT INTO `realmcharacters` VALUES ('1', '30', '9');
INSERT INTO `realmcharacters` VALUES ('1', '31', '0');
INSERT INTO `realmcharacters` VALUES ('1', '32', '0');
INSERT INTO `realmcharacters` VALUES ('1', '34', '0');
INSERT INTO `realmcharacters` VALUES ('1', '35', '0');
INSERT INTO `realmcharacters` VALUES ('1', '37', '0');
INSERT INTO `realmcharacters` VALUES ('1', '39', '0');
INSERT INTO `realmcharacters` VALUES ('1', '40', '0');
INSERT INTO `realmcharacters` VALUES ('1', '41', '0');
INSERT INTO `realmcharacters` VALUES ('1', '44', '0');
INSERT INTO `realmcharacters` VALUES ('1', '45', '0');
INSERT INTO `realmcharacters` VALUES ('1', '47', '1');
INSERT INTO `realmcharacters` VALUES ('1', '51', '0');
INSERT INTO `realmcharacters` VALUES ('1', '52', '0');
INSERT INTO `realmcharacters` VALUES ('1', '53', '0');
INSERT INTO `realmcharacters` VALUES ('1', '54', '0');
INSERT INTO `realmcharacters` VALUES ('1', '55', '0');
INSERT INTO `realmcharacters` VALUES ('1', '56', '0');
INSERT INTO `realmcharacters` VALUES ('1', '57', '0');
INSERT INTO `realmcharacters` VALUES ('1', '61', '0');
INSERT INTO `realmcharacters` VALUES ('1', '62', '0');
INSERT INTO `realmcharacters` VALUES ('1', '63', '0');
INSERT INTO `realmcharacters` VALUES ('1', '65', '0');
INSERT INTO `realmcharacters` VALUES ('1', '66', '0');
INSERT INTO `realmcharacters` VALUES ('1', '69', '0');
INSERT INTO `realmcharacters` VALUES ('1', '73', '0');
INSERT INTO `realmcharacters` VALUES ('1', '74', '0');
INSERT INTO `realmcharacters` VALUES ('1', '75', '3');
INSERT INTO `realmcharacters` VALUES ('1', '76', '0');
INSERT INTO `realmcharacters` VALUES ('1', '78', '0');
INSERT INTO `realmcharacters` VALUES ('1', '80', '0');
INSERT INTO `realmcharacters` VALUES ('1', '82', '0');
INSERT INTO `realmcharacters` VALUES ('1', '87', '0');
INSERT INTO `realmcharacters` VALUES ('1', '89', '0');
INSERT INTO `realmcharacters` VALUES ('1', '90', '0');
INSERT INTO `realmcharacters` VALUES ('1', '93', '0');
INSERT INTO `realmcharacters` VALUES ('1', '94', '0');
INSERT INTO `realmcharacters` VALUES ('1', '98', '0');
INSERT INTO `realmcharacters` VALUES ('1', '100', '0');
INSERT INTO `realmcharacters` VALUES ('1', '101', '0');
INSERT INTO `realmcharacters` VALUES ('1', '102', '0');
INSERT INTO `realmcharacters` VALUES ('1', '103', '4');
INSERT INTO `realmcharacters` VALUES ('1', '104', '0');
INSERT INTO `realmcharacters` VALUES ('1', '105', '0');
INSERT INTO `realmcharacters` VALUES ('1', '106', '0');
INSERT INTO `realmcharacters` VALUES ('1', '107', '0');
INSERT INTO `realmcharacters` VALUES ('1', '108', '0');
INSERT INTO `realmcharacters` VALUES ('1', '109', '0');
INSERT INTO `realmcharacters` VALUES ('1', '110', '0');
INSERT INTO `realmcharacters` VALUES ('1', '111', '0');
INSERT INTO `realmcharacters` VALUES ('1', '112', '0');
INSERT INTO `realmcharacters` VALUES ('1', '113', '0');
INSERT INTO `realmcharacters` VALUES ('1', '114', '0');
INSERT INTO `realmcharacters` VALUES ('1', '115', '0');
INSERT INTO `realmcharacters` VALUES ('1', '116', '3');
INSERT INTO `realmcharacters` VALUES ('1', '117', '0');
INSERT INTO `realmcharacters` VALUES ('1', '118', '0');
INSERT INTO `realmcharacters` VALUES ('1', '119', '0');
INSERT INTO `realmcharacters` VALUES ('1', '120', '0');
INSERT INTO `realmcharacters` VALUES ('1', '121', '0');
INSERT INTO `realmcharacters` VALUES ('1', '122', '0');
INSERT INTO `realmcharacters` VALUES ('1', '123', '0');
INSERT INTO `realmcharacters` VALUES ('1', '124', '0');
INSERT INTO `realmcharacters` VALUES ('1', '125', '0');
INSERT INTO `realmcharacters` VALUES ('1', '126', '0');
INSERT INTO `realmcharacters` VALUES ('1', '127', '0');
INSERT INTO `realmcharacters` VALUES ('1', '128', '0');
INSERT INTO `realmcharacters` VALUES ('1', '129', '0');
INSERT INTO `realmcharacters` VALUES ('1', '130', '0');
INSERT INTO `realmcharacters` VALUES ('1', '131', '0');
INSERT INTO `realmcharacters` VALUES ('1', '132', '0');
INSERT INTO `realmcharacters` VALUES ('1', '133', '0');
INSERT INTO `realmcharacters` VALUES ('1', '134', '0');
INSERT INTO `realmcharacters` VALUES ('1', '135', '0');
INSERT INTO `realmcharacters` VALUES ('1', '136', '0');
INSERT INTO `realmcharacters` VALUES ('1', '137', '0');
INSERT INTO `realmcharacters` VALUES ('1', '138', '0');
INSERT INTO `realmcharacters` VALUES ('1', '139', '0');
INSERT INTO `realmcharacters` VALUES ('1', '140', '0');
INSERT INTO `realmcharacters` VALUES ('1', '141', '0');
INSERT INTO `realmcharacters` VALUES ('1', '142', '0');
INSERT INTO `realmcharacters` VALUES ('1', '143', '0');
INSERT INTO `realmcharacters` VALUES ('1', '144', '0');
INSERT INTO `realmcharacters` VALUES ('1', '145', '0');
INSERT INTO `realmcharacters` VALUES ('1', '146', '0');
INSERT INTO `realmcharacters` VALUES ('1', '147', '0');
INSERT INTO `realmcharacters` VALUES ('1', '148', '0');
INSERT INTO `realmcharacters` VALUES ('1', '149', '2');
INSERT INTO `realmcharacters` VALUES ('1', '151', '0');
INSERT INTO `realmcharacters` VALUES ('1', '152', '0');
INSERT INTO `realmcharacters` VALUES ('1', '153', '0');
INSERT INTO `realmcharacters` VALUES ('1', '154', '0');
INSERT INTO `realmcharacters` VALUES ('1', '155', '2');
INSERT INTO `realmcharacters` VALUES ('1', '156', '0');
INSERT INTO `realmcharacters` VALUES ('1', '157', '1');
INSERT INTO `realmcharacters` VALUES ('1', '158', '0');
INSERT INTO `realmcharacters` VALUES ('1', '159', '0');
INSERT INTO `realmcharacters` VALUES ('1', '160', '0');
INSERT INTO `realmcharacters` VALUES ('1', '161', '0');
INSERT INTO `realmcharacters` VALUES ('1', '163', '0');
INSERT INTO `realmcharacters` VALUES ('1', '164', '1');
INSERT INTO `realmcharacters` VALUES ('1', '165', '0');
INSERT INTO `realmcharacters` VALUES ('1', '166', '0');
INSERT INTO `realmcharacters` VALUES ('1', '167', '0');
INSERT INTO `realmcharacters` VALUES ('1', '168', '0');
INSERT INTO `realmcharacters` VALUES ('1', '169', '0');
INSERT INTO `realmcharacters` VALUES ('1', '170', '0');
INSERT INTO `realmcharacters` VALUES ('1', '171', '0');
INSERT INTO `realmcharacters` VALUES ('1', '172', '0');
INSERT INTO `realmcharacters` VALUES ('1', '173', '0');
INSERT INTO `realmcharacters` VALUES ('1', '174', '0');
INSERT INTO `realmcharacters` VALUES ('1', '175', '0');
INSERT INTO `realmcharacters` VALUES ('1', '176', '0');
INSERT INTO `realmcharacters` VALUES ('1', '177', '0');
INSERT INTO `realmcharacters` VALUES ('1', '178', '0');
INSERT INTO `realmcharacters` VALUES ('1', '179', '0');
INSERT INTO `realmcharacters` VALUES ('1', '180', '0');
INSERT INTO `realmcharacters` VALUES ('1', '181', '0');
INSERT INTO `realmcharacters` VALUES ('1', '182', '7');
INSERT INTO `realmcharacters` VALUES ('1', '183', '4');
INSERT INTO `realmcharacters` VALUES ('1', '184', '1');
INSERT INTO `realmcharacters` VALUES ('1', '185', '0');
INSERT INTO `realmcharacters` VALUES ('1', '186', '0');
INSERT INTO `realmcharacters` VALUES ('1', '187', '0');
INSERT INTO `realmcharacters` VALUES ('1', '188', '0');
INSERT INTO `realmcharacters` VALUES ('1', '189', '0');
INSERT INTO `realmcharacters` VALUES ('1', '190', '0');
INSERT INTO `realmcharacters` VALUES ('1', '191', '0');
INSERT INTO `realmcharacters` VALUES ('1', '192', '0');
INSERT INTO `realmcharacters` VALUES ('1', '193', '0');
INSERT INTO `realmcharacters` VALUES ('1', '194', '1');
INSERT INTO `realmcharacters` VALUES ('1', '195', '0');
INSERT INTO `realmcharacters` VALUES ('1', '196', '1');
INSERT INTO `realmcharacters` VALUES ('1', '197', '6');
INSERT INTO `realmcharacters` VALUES ('1', '198', '1');
INSERT INTO `realmcharacters` VALUES ('1', '199', '1');
INSERT INTO `realmcharacters` VALUES ('1', '201', '2');
INSERT INTO `realmcharacters` VALUES ('1', '207', '2');
INSERT INTO `realmcharacters` VALUES ('1', '213', '1');
INSERT INTO `realmcharacters` VALUES ('1', '214', '1');
INSERT INTO `realmcharacters` VALUES ('1', '215', '1');
INSERT INTO `realmcharacters` VALUES ('1', '216', '1');
INSERT INTO `realmcharacters` VALUES ('1', '220', '1');
INSERT INTO `realmcharacters` VALUES ('1', '221', '5');
INSERT INTO `realmcharacters` VALUES ('1', '224', '2');
INSERT INTO `realmcharacters` VALUES ('1', '228', '5');
INSERT INTO `realmcharacters` VALUES ('1', '229', '1');
INSERT INTO `realmcharacters` VALUES ('1', '231', '10');
INSERT INTO `realmcharacters` VALUES ('1', '243', '2');
INSERT INTO `realmcharacters` VALUES ('1', '246', '1');
INSERT INTO `realmcharacters` VALUES ('1', '254', '2');
INSERT INTO `realmcharacters` VALUES ('1', '258', '1');
INSERT INTO `realmcharacters` VALUES ('1', '260', '1');
INSERT INTO `realmcharacters` VALUES ('1', '264', '2');

-- ----------------------------
-- Table structure for `realmlist`
-- ----------------------------
DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE `realmlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '127.0.0.1',
  `localAddress` varchar(255) NOT NULL DEFAULT '127.0.0.1',
  `localSubnetMask` varchar(255) NOT NULL DEFAULT '255.255.255.0',
  `port` smallint(5) unsigned NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `realmflags` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `gamebuild` int(10) unsigned NOT NULL DEFAULT '16357',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Realm System';

-- ----------------------------
-- Table structure for `realm_classes`
-- ----------------------------
DROP TABLE IF EXISTS `realm_classes`;
CREATE TABLE `realm_classes` (
  `realmId` int(11) NOT NULL,
  `class` tinyint(4) NOT NULL COMMENT 'Class Id',
  `expansion` tinyint(4) NOT NULL COMMENT 'Expansion for class activation',
  PRIMARY KEY (`realmId`,`class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realm_classes
-- ----------------------------
INSERT INTO `realm_classes` VALUES ('1', '1', '0');
INSERT INTO `realm_classes` VALUES ('1', '2', '0');
INSERT INTO `realm_classes` VALUES ('1', '3', '0');
INSERT INTO `realm_classes` VALUES ('1', '4', '0');
INSERT INTO `realm_classes` VALUES ('1', '5', '0');
INSERT INTO `realm_classes` VALUES ('1', '6', '2');
INSERT INTO `realm_classes` VALUES ('1', '7', '0');
INSERT INTO `realm_classes` VALUES ('1', '8', '0');
INSERT INTO `realm_classes` VALUES ('1', '9', '0');
INSERT INTO `realm_classes` VALUES ('1', '10', '4');
INSERT INTO `realm_classes` VALUES ('1', '11', '0');

-- ----------------------------
-- Table structure for `realm_races`
-- ----------------------------
DROP TABLE IF EXISTS `realm_races`;
CREATE TABLE `realm_races` (
  `realmId` int(11) NOT NULL,
  `race` tinyint(4) NOT NULL COMMENT 'Race Id',
  `expansion` tinyint(4) NOT NULL COMMENT 'Expansion for race activation',
  PRIMARY KEY (`realmId`,`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realm_races
-- ----------------------------
INSERT INTO `realm_races` VALUES ('1', '1', '0');
INSERT INTO `realm_races` VALUES ('1', '2', '0');
INSERT INTO `realm_races` VALUES ('1', '3', '0');
INSERT INTO `realm_races` VALUES ('1', '4', '0');
INSERT INTO `realm_races` VALUES ('1', '5', '0');
INSERT INTO `realm_races` VALUES ('1', '6', '0');
INSERT INTO `realm_races` VALUES ('1', '7', '0');
INSERT INTO `realm_races` VALUES ('1', '8', '0');
INSERT INTO `realm_races` VALUES ('1', '9', '3');
INSERT INTO `realm_races` VALUES ('1', '10', '1');
INSERT INTO `realm_races` VALUES ('1', '11', '1');
INSERT INTO `realm_races` VALUES ('1', '22', '3');
INSERT INTO `realm_races` VALUES ('1', '24', '4');
INSERT INTO `realm_races` VALUES ('1', '25', '4');
INSERT INTO `realm_races` VALUES ('1', '26', '4');

-- ----------------------------
-- Table structure for `uptime`
-- ----------------------------
DROP TABLE IF EXISTS `uptime`;
CREATE TABLE `uptime` (
  `realmid` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'Trinitycore',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Uptime system';

-- ----------------------------
-- Table structure for `word_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `word_blacklist`;
CREATE TABLE `word_blacklist` (
  `word` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of word_blacklist
-- ----------------------------
