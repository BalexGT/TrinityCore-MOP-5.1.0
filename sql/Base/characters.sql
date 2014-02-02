/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50519
Source Host           : localhost:3307
Source Database       : characters

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2014-01-16 10:10:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account_data`
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_data
-- ----------------------------
INSERT INTO `account_data` VALUES ('1', '0', '1389862538', 0x53455420666C61676765645475746F7269616C732022760123232423234523232823233023233823234B23235B23232923233C23233923234923234423234A23235623236023233F23234023234623233A23233D220D0A5345542063616D65726144697374616E63654D6178466163746F72202231220D0A5345542074616C656E744672616D6553686F776E202231220D0A);

-- ----------------------------
-- Table structure for `account_instance_times`
-- ----------------------------
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_instance_times
-- ----------------------------

-- ----------------------------
-- Table structure for `account_tutorial`
-- ----------------------------
DROP TABLE IF EXISTS `account_tutorial`;
CREATE TABLE `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_tutorial
-- ----------------------------
INSERT INTO `account_tutorial` VALUES ('1', '40898609', '277086435', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `addons`
-- ----------------------------
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `name` varchar(120) NOT NULL DEFAULT '',
  `crc` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Addons';

-- ----------------------------
-- Records of addons
-- ----------------------------
INSERT INTO `addons` VALUES ('Blizzard_AchievementUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ArchaeologyUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ArenaUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_AuctionUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BarbershopUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BattlefieldMinimap', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BindingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BlackMarketUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_Calendar', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ChallengesUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ClientSavedVariables', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CombatLog', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CombatText', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CompactRaidFrames', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CUFProfiles', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_DebugTools', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_EncounterJournal', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GlyphUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GMChatUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GMSurveyUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GuildBankUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GuildControlUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GuildUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_InspectUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ItemAlterationUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ItemSocketingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ItemUpgradeUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_LookingForGuildUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_MacroUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_MovePad', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_PetBattleUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_PetJournal', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_RaidUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ReforgingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TalentUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TimeManager', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TokenUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TradeSkillUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TrainerUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_VoidStorageUI', '1276933997');

-- ----------------------------
-- Table structure for `arena_team`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team
-- ----------------------------

-- ----------------------------
-- Table structure for `arena_team_member`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team_member
-- ----------------------------

-- ----------------------------
-- Table structure for `auctionhouse`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemowner` int(10) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbid` int(10) unsigned NOT NULL DEFAULT '0',
  `startbid` int(10) unsigned NOT NULL DEFAULT '0',
  `deposit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auctionhouse
-- ----------------------------

-- ----------------------------
-- Table structure for `blackmarket`
-- ----------------------------
DROP TABLE IF EXISTS `blackmarket`;
CREATE TABLE `blackmarket` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Identifier',
  `templateId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Reference to world.blackmarket_template',
  `startTime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Start time of the bid',
  `bid` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Amount of the actual bid',
  `bidder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Player guid (highest bid)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blackmarket
-- ----------------------------
INSERT INTO `blackmarket` VALUES ('1', '46', '1389860920', '100000000', '0');
INSERT INTO `blackmarket` VALUES ('2', '88', '1389860927', '150000000', '0');
INSERT INTO `blackmarket` VALUES ('3', '38', '1389860920', '100000000', '0');
INSERT INTO `blackmarket` VALUES ('4', '36', '1389860990', '100000000', '0');
INSERT INTO `blackmarket` VALUES ('5', '256', '1389860925', '150000000', '0');
INSERT INTO `blackmarket` VALUES ('6', '21', '1389860914', '100000000', '0');
INSERT INTO `blackmarket` VALUES ('7', '86', '1389860927', '150000000', '0');
INSERT INTO `blackmarket` VALUES ('8', '22', '1389860991', '100000000', '0');
INSERT INTO `blackmarket` VALUES ('9', '132', '1389860943', '125000000', '0');
INSERT INTO `blackmarket` VALUES ('10', '20', '1389860971', '100000000', '0');

-- ----------------------------
-- Table structure for `bugreport`
-- ----------------------------
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Debug System';

-- ----------------------------
-- Records of bugreport
-- ----------------------------

-- ----------------------------
-- Table structure for `calendar_events`
-- ----------------------------
DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE `calendar_events` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creator` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `dungeon` int(10) NOT NULL DEFAULT '-1',
  `eventtime` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `time2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of calendar_events
-- ----------------------------

-- ----------------------------
-- Table structure for `calendar_invites`
-- ----------------------------
DROP TABLE IF EXISTS `calendar_invites`;
CREATE TABLE `calendar_invites` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `event` bigint(20) unsigned NOT NULL DEFAULT '0',
  `invitee` int(10) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `statustime` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of calendar_invites
-- ----------------------------

-- ----------------------------
-- Table structure for `channels`
-- ----------------------------
DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

-- ----------------------------
-- Records of channels
-- ----------------------------

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_mode_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `talentTree` varchar(10) NOT NULL DEFAULT '0 0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `speccount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `activespec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grantableLevels` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('1', '1', 'Dark', '0', '25', '1', '0', '36', '0', '961', '201330700', '16777216', '32', '-8726.6', '513.997', '96.6674', '0', '0', '49', '5.73925', '0 0 0 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '1', '2389', '361', '1389863355', '1', '35.4797', '0', '0', '72 0 ', '0', '0', '0', '0', '0', '0', '0', '0', '1519', '0', '', '0', '0', '0', '0', '4294967295', '0', '1895', '0', '0', '0', '0', '0', '0', '1', '0', '0 0 0 1073741824 0 0 0 0 0 0 0 0 0 0 0 0 0 16 0 0 0 65536 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 536870912 2 0 0 0 0 128 0 0 0 0 0 0 1073741824 0 0 0 0 0 0 55053314 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 73226 0 73219 0 73229 0 0 0 57397 0 73222 0 0 0 0 0 0 0 0 0 73223 0 73210 0 0 0 0 0 0 0 73241 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 ', '0', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for `characters_back`
-- ----------------------------
DROP TABLE IF EXISTS `characters_back`;
CREATE TABLE `characters_back` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_mode_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `talentTree` varchar(10) NOT NULL DEFAULT '0 0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `speccount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `activespec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grantableLevels` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of characters_back
-- ----------------------------

-- ----------------------------
-- Table structure for `character_account_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_account_data
-- ----------------------------
INSERT INTO `character_account_data` VALUES ('1', '1', '1389863341', 0x534554206175746F5175657374506F7055707320227601232324220D0A53455420747261636B656451756573747320227601220D0A53455420747261636B6564416368696576656D656E747320227601220D0A5345542063616D657261536176656444697374616E6365202231352E303030303030220D0A5345542063616D65726153617665645069746368202231332E373939393838220D0A5345542074616C656E74506F696E74735370656E74202231220D0A534554206D696E696D6170547261636B6564496E666F76322022323239333834220D0A534554206D696E696D617053686170657368696674547261636B696E6720227601220D0A5345542072657075746174696F6E73436F6C6C617073656420227601232324220D0A5345542061637469766543554650726F66696C6520225072696DC3A472220D0A);
INSERT INTO `character_account_data` VALUES ('1', '7', '1389862540', 0x56455253494F4E20350A0A414444454456455253494F4E2031390A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A434F4C4F52530A0A53595354454D20323535203235352030204E0A534159203235352032353520323535204E0A5041525459203137302031373020323535204E0A5241494420323535203132372030204E0A4755494C4420363420323535203634204E0A4F46464943455220363420313932203634204E0A59454C4C20323535203634203634204E0A57484953504552203235352031323820323535204E0A574849535045525F464F524549474E203235352031323820323535204E0A574849535045525F494E464F524D203235352031323820323535204E0A454D4F54452032353520313238203634204E0A544558545F454D4F54452032353520313238203634204E0A4D4F4E535445525F534159203235352032353520313539204E0A4D4F4E535445525F5041525459203137302031373020323535204E0A4D4F4E535445525F59454C4C20323535203634203634204E0A4D4F4E535445525F57484953504552203235352031383120323335204E0A4D4F4E535445525F454D4F54452032353520313238203634204E0A4348414E4E454C203235352031393220313932204E0A4348414E4E454C5F4A4F494E203139322031323820313238204E0A4348414E4E454C5F4C45415645203139322031323820313238204E0A4348414E4E454C5F4C495354203139322031323820313238204E0A4348414E4E454C5F4E4F54494345203139322031393220313932204E0A4348414E4E454C5F4E4F544943455F55534552203139322031393220313932204E0A41464B203235352031323820323535204E0A444E44203235352031323820323535204E0A49474E4F5245442032353520302030204E0A534B494C4C20383520383520323535204E0A4C4F4F542030203137302030204E0A4D4F4E455920323535203235352030204E0A4F50454E494E47203132382031323820323535204E0A5452414445534B494C4C53203235352032353520323535204E0A5045545F494E464F203132382031323820323535204E0A434F4D4241545F4D4953435F494E464F203132382031323820323535204E0A434F4D4241545F58505F4741494E203131312031313120323535204E0A434F4D4241545F484F4E4F525F4741494E2032323420323032203130204E0A434F4D4241545F46414354494F4E5F4348414E4745203132382031323820323535204E0A42475F53595354454D5F4E45555452414C2032353520313230203130204E0A42475F53595354454D5F414C4C49414E434520302031373420323339204E0A42475F53595354454D5F484F5244452032353520302030204E0A524149445F4C4541444552203235352037322039204E0A524149445F5741524E494E47203235352037322030204E0A524149445F424F53535F454D4F544520323535203232312030204E0A524149445F424F53535F5748495350455220323535203232312030204E0A46494C54455245442032353520302030204E0A524553545249435445442032353520302030204E0A424154544C454E4554203235352032353520323535204E0A414348494556454D454E5420323535203235352030204E0A4755494C445F414348494556454D454E5420363420323535203634204E0A4152454E415F504F494E5453203235352032353520323535204E0A50415254595F4C4541444552203131382032303020323535204E0A54415247455449434F4E5320323535203235352030204E0A424E5F5748495350455220302032353520323436204E0A424E5F574849535045525F494E464F524D20302032353520323436204E0A424E5F434F4E564552534154494F4E20302031373720323430204E0A424E5F434F4E564552534154494F4E5F4E4F5449434520302031373720323430204E0A424E5F434F4E564552534154494F4E5F4C49535420302031373720323430204E0A424E5F494E4C494E455F544F4153545F414C455254203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F414443415354203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F4144434153545F494E464F524D203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F434F4E564552534154494F4E203133302031393720323535204E0A424E5F574849535045525F504C415945525F4F46464C494E4520323535203235352030204E0A434F4D4241545F4755494C445F58505F4741494E203131312031313120323535204E0A43555252454E43592030203137302030204E0A51554553545F424F53535F454D4F54452032353520313238203634204E0A5045545F424154544C455F434F4D4241545F4C4F47203233312032323220313731204E0A5045545F424154544C455F494E464F2032323520323232203933204E0A494E5354414E43455F4348415420323535203132372030204E0A494E5354414E43455F434841545F4C4541444552203235352037322039204E0A4348414E4E454C31203235352031393220313932204E0A4348414E4E454C32203235352031393220313932204E0A4348414E4E454C33203235352031393220313932204E0A4348414E4E454C34203235352031393220313932204E0A4348414E4E454C35203235352031393220313932204E0A4348414E4E454C36203235352031393220313932204E0A4348414E4E454C37203235352031393220313932204E0A4348414E4E454C38203235352031393220313932204E0A4348414E4E454C39203235352031393220313932204E0A4348414E4E454C3130203235352031393220313932204E0A454E440A0A57494E444F5720310A4E414D4520416C6C67656D65696E0A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420310A53484F574E20310A4D455353414745530A53595354454D0A53595354454D5F4E4F4D454E550A5341590A454D4F54450A59454C4C0A574849535045520A50415254590A50415254595F4C45414445520A524149440A524149445F4C45414445520A524149445F5741524E494E470A4755494C440A4F4646494345520A4D4F4E535445525F5341590A4D4F4E535445525F59454C4C0A4D4F4E535445525F454D4F54450A4D4F4E535445525F574849535045520A4D4F4E535445525F424F53535F454D4F54450A4D4F4E535445525F424F53535F574849535045520A4552524F52530A41464B0A444E440A49474E4F5245440A42475F484F5244450A42475F414C4C49414E43450A42475F4E45555452414C0A434F4D4241545F46414354494F4E5F4348414E47450A534B494C4C0A4C4F4F540A4D4F4E45590A4348414E4E454C0A414348494556454D454E540A4755494C445F414348494556454D454E540A424E5F574849535045520A424E5F574849535045525F494E464F524D0A424E5F434F4E564552534154494F4E0A424E5F494E4C494E455F544F4153545F414C4552540A43555252454E43590A424E5F574849535045525F504C415945525F4F46464C494E450A5045545F424154544C455F494E464F0A494E5354414E43455F434841540A494E5354414E43455F434841545F4C45414445520A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320323039373135350A0A454E440A0A57494E444F5720320A4E414D45204B616D70666C6F670A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420320A53484F574E20300A4D455353414745530A4F50454E494E470A5452414445534B494C4C530A5045545F494E464F0A434F4D4241545F58505F4741494E0A434F4D4241545F484F4E4F525F4741494E0A434F4D4241545F4D4953435F494E464F0A434F4D4241545F4755494C445F58505F4741494E0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720330A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720340A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720350A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720360A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720370A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720380A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720390A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F572031300A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A);

-- ----------------------------
-- Table structure for `character_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement` (
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_achievement
-- ----------------------------
INSERT INTO `character_achievement` VALUES ('1', '6', '1389862976');
INSERT INTO `character_achievement` VALUES ('1', '7', '1389862976');
INSERT INTO `character_achievement` VALUES ('1', '8', '1389862976');

-- ----------------------------
-- Table structure for `character_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress` (
  `guid` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_achievement_progress
-- ----------------------------
INSERT INTO `character_achievement_progress` VALUES ('1', '34', '36', '1389862976');
INSERT INTO `character_achievement_progress` VALUES ('1', '35', '36', '1389862976');
INSERT INTO `character_achievement_progress` VALUES ('1', '36', '36', '1389862976');
INSERT INTO `character_achievement_progress` VALUES ('1', '37', '36', '1389862976');
INSERT INTO `character_achievement_progress` VALUES ('1', '167', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '230', '19', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '641', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '651', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '652', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '653', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '654', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '655', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '656', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '657', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '753', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '754', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '755', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '756', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '834', '1', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '1147', '1', '1389862752');
INSERT INTO `character_achievement_progress` VALUES ('1', '2020', '200', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '2030', '275', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '2031', '256', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '2032', '256', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '2033', '256', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '2034', '256', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '3355', '961', '1389862594');
INSERT INTO `character_achievement_progress` VALUES ('1', '3513', '961', '1389862594');
INSERT INTO `character_achievement_progress` VALUES ('1', '3631', '19', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '4092', '961', '1389862594');
INSERT INTO `character_achievement_progress` VALUES ('1', '4224', '961', '1389862594');
INSERT INTO `character_achievement_progress` VALUES ('1', '5212', '36', '1389862976');
INSERT INTO `character_achievement_progress` VALUES ('1', '5220', '36', '1389862976');
INSERT INTO `character_achievement_progress` VALUES ('1', '5301', '9', '1389863341');
INSERT INTO `character_achievement_progress` VALUES ('1', '5328', '256', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '5329', '256', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '5330', '256', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '5331', '275', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '5332', '256', '1389862787');
INSERT INTO `character_achievement_progress` VALUES ('1', '5371', '33', '1389862105');
INSERT INTO `character_achievement_progress` VALUES ('1', '5372', '801', '1389862490');
INSERT INTO `character_achievement_progress` VALUES ('1', '5373', '88', '1389862488');
INSERT INTO `character_achievement_progress` VALUES ('1', '5529', '24', '1389862492');
INSERT INTO `character_achievement_progress` VALUES ('1', '8819', '500', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '8820', '500', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '8821', '500', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '8822', '500', '1389860866');
INSERT INTO `character_achievement_progress` VALUES ('1', '9598', '36', '1389862976');
INSERT INTO `character_achievement_progress` VALUES ('1', '14174', '36', '1389862976');
INSERT INTO `character_achievement_progress` VALUES ('1', '14182', '36', '1389862976');
INSERT INTO `character_achievement_progress` VALUES ('1', '16826', '256', '1389862787');

-- ----------------------------
-- Table structure for `character_action`
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_action
-- ----------------------------
INSERT INTO `character_action` VALUES ('1', '0', '0', '6603', '0');
INSERT INTO `character_action` VALUES ('1', '0', '1', '78', '0');
INSERT INTO `character_action` VALUES ('1', '0', '2', '100', '0');
INSERT INTO `character_action` VALUES ('1', '0', '3', '34428', '0');
INSERT INTO `character_action` VALUES ('1', '0', '4', '5308', '0');
INSERT INTO `character_action` VALUES ('1', '0', '5', '355', '0');
INSERT INTO `character_action` VALUES ('1', '0', '6', '7386', '0');
INSERT INTO `character_action` VALUES ('1', '0', '7', '6343', '0');
INSERT INTO `character_action` VALUES ('1', '0', '8', '57755', '0');
INSERT INTO `character_action` VALUES ('1', '0', '9', '107079', '0');
INSERT INTO `character_action` VALUES ('1', '0', '10', '6552', '0');
INSERT INTO `character_action` VALUES ('1', '0', '11', '77273', '128');

-- ----------------------------
-- Table structure for `character_arena_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_arena_stats`;
CREATE TABLE `character_arena_stats` (
  `guid` int(10) NOT NULL,
  `slot` tinyint(3) NOT NULL,
  `matchMakerRating` smallint(5) NOT NULL,
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_arena_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `character_aura`
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `effect_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount` longtext NOT NULL,
  `base_amount` longtext NOT NULL,
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_aura
-- ----------------------------
INSERT INTO `character_aura` VALUES ('1', '1', '0', '2457', '1', '1', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '-1', '-1', '0');

-- ----------------------------
-- Table structure for `character_banned`
-- ----------------------------
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE `character_banned` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- ----------------------------
-- Records of character_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `character_battleground_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_battleground_data
-- ----------------------------
INSERT INTO `character_battleground_data` VALUES ('1', '0', '0', '0', '0', '0', '0', '65535', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_battleground_random`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_battleground_random
-- ----------------------------

-- ----------------------------
-- Table structure for `character_cuf_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `character_cuf_profiles`;
CREATE TABLE `character_cuf_profiles` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Character Guid',
  `id` tinyint(3) unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Height',
  `frameWidth` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Width',
  `sortBy` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Sort By',
  `healthText` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Health Text',
  `boolOptions` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Many Configurable Bool Options',
  `unk146` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk147` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk148` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int8',
  `unk150` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  `unk152` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  `unk154` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Unk Int16',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_cuf_profiles
-- ----------------------------
INSERT INTO `character_cuf_profiles` VALUES ('1', '0', 'Primär', '36', '72', '0', '0', '68493381', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_currency`
-- ----------------------------
DROP TABLE IF EXISTS `character_currency`;
CREATE TABLE `character_currency` (
  `guid` int(10) unsigned NOT NULL,
  `currency` smallint(5) unsigned NOT NULL,
  `total_count` int(10) unsigned NOT NULL,
  `week_count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_currency
-- ----------------------------
INSERT INTO `character_currency` VALUES ('1', '390', '0', '0');
INSERT INTO `character_currency` VALUES ('1', '392', '0', '0');
INSERT INTO `character_currency` VALUES ('1', '395', '0', '0');

-- ----------------------------
-- Table structure for `character_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for `character_equipmentsets`
-- ----------------------------
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE `character_equipmentsets` (
  `guid` int(10) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `ignore_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `item0` int(11) unsigned NOT NULL DEFAULT '0',
  `item1` int(11) unsigned NOT NULL DEFAULT '0',
  `item2` int(11) unsigned NOT NULL DEFAULT '0',
  `item3` int(11) unsigned NOT NULL DEFAULT '0',
  `item4` int(11) unsigned NOT NULL DEFAULT '0',
  `item5` int(11) unsigned NOT NULL DEFAULT '0',
  `item6` int(11) unsigned NOT NULL DEFAULT '0',
  `item7` int(11) unsigned NOT NULL DEFAULT '0',
  `item8` int(11) unsigned NOT NULL DEFAULT '0',
  `item9` int(11) unsigned NOT NULL DEFAULT '0',
  `item10` int(11) unsigned NOT NULL DEFAULT '0',
  `item11` int(11) unsigned NOT NULL DEFAULT '0',
  `item12` int(11) unsigned NOT NULL DEFAULT '0',
  `item13` int(11) unsigned NOT NULL DEFAULT '0',
  `item14` int(11) unsigned NOT NULL DEFAULT '0',
  `item15` int(11) unsigned NOT NULL DEFAULT '0',
  `item16` int(11) unsigned NOT NULL DEFAULT '0',
  `item17` int(11) unsigned NOT NULL DEFAULT '0',
  `item18` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_equipmentsets
-- ----------------------------

-- ----------------------------
-- Table structure for `character_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for `character_glyphs`
-- ----------------------------
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
  `guid` int(10) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyph1` smallint(5) unsigned DEFAULT '0',
  `glyph2` smallint(5) unsigned DEFAULT '0',
  `glyph3` smallint(5) unsigned DEFAULT '0',
  `glyph4` smallint(5) unsigned DEFAULT '0',
  `glyph5` smallint(5) unsigned DEFAULT '0',
  `glyph6` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_glyphs
-- ----------------------------
INSERT INTO `character_glyphs` VALUES ('1', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_homebind`
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_homebind
-- ----------------------------
INSERT INTO `character_homebind` VALUES ('1', '0', '5148', '-8866.29', '670.573', '97.9033');

-- ----------------------------
-- Table structure for `character_instance`
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `character_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `guid` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_inventory
-- ----------------------------
INSERT INTO `character_inventory` VALUES ('1', '0', '4', '31');
INSERT INTO `character_inventory` VALUES ('1', '0', '5', '15');
INSERT INTO `character_inventory` VALUES ('1', '0', '6', '35');
INSERT INTO `character_inventory` VALUES ('1', '0', '8', '38');
INSERT INTO `character_inventory` VALUES ('1', '0', '9', '16');
INSERT INTO `character_inventory` VALUES ('1', '0', '14', '29');
INSERT INTO `character_inventory` VALUES ('1', '0', '15', '13');
INSERT INTO `character_inventory` VALUES ('1', '0', '19', '30');
INSERT INTO `character_inventory` VALUES ('1', '0', '23', '8');
INSERT INTO `character_inventory` VALUES ('1', '0', '24', '10');
INSERT INTO `character_inventory` VALUES ('1', '0', '25', '2');
INSERT INTO `character_inventory` VALUES ('1', '0', '26', '18');
INSERT INTO `character_inventory` VALUES ('1', '0', '27', '32');
INSERT INTO `character_inventory` VALUES ('1', '0', '28', '33');
INSERT INTO `character_inventory` VALUES ('1', '0', '29', '4');
INSERT INTO `character_inventory` VALUES ('1', '0', '30', '36');
INSERT INTO `character_inventory` VALUES ('1', '0', '31', '14');
INSERT INTO `character_inventory` VALUES ('1', '0', '32', '39');
INSERT INTO `character_inventory` VALUES ('1', '0', '33', '40');

-- ----------------------------
-- Table structure for `character_pet`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of character_pet
-- ----------------------------

-- ----------------------------
-- Table structure for `character_pet_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_pet_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  `mobcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playercount` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_daily`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_daily
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_monthly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_monthly`;
CREATE TABLE `character_queststatus_monthly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_monthly
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_rewarded`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE `character_queststatus_rewarded` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_rewarded
-- ----------------------------
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '2158');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29406');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29408');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29409');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29410');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29414');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29417');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29418');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29419');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29420');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29421');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29422');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29424');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29522');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29523');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29524');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '29664');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '30038');
INSERT INTO `character_queststatus_rewarded` VALUES ('1', '30045');

-- ----------------------------
-- Table structure for `character_queststatus_seasonal`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_seasonal`;
CREATE TABLE `character_queststatus_seasonal` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_seasonal
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_weekly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_weekly
-- ----------------------------

-- ----------------------------
-- Table structure for `character_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_reputation
-- ----------------------------
INSERT INTO `character_reputation` VALUES ('1', '21', '0', '64');
INSERT INTO `character_reputation` VALUES ('1', '46', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '47', '-2844', '17');
INSERT INTO `character_reputation` VALUES ('1', '54', '-2844', '17');
INSERT INTO `character_reputation` VALUES ('1', '59', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '67', '0', '14');
INSERT INTO `character_reputation` VALUES ('1', '68', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '69', '-2844', '17');
INSERT INTO `character_reputation` VALUES ('1', '70', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '72', '-2825', '17');
INSERT INTO `character_reputation` VALUES ('1', '76', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '81', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '83', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '86', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '87', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '92', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '93', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '169', '0', '12');
INSERT INTO `character_reputation` VALUES ('1', '270', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '289', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '349', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '369', '0', '64');
INSERT INTO `character_reputation` VALUES ('1', '469', '0', '25');
INSERT INTO `character_reputation` VALUES ('1', '470', '0', '64');
INSERT INTO `character_reputation` VALUES ('1', '471', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '509', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '510', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '529', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '530', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '549', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '550', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '551', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '569', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '570', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '571', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '574', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '576', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '577', '0', '64');
INSERT INTO `character_reputation` VALUES ('1', '589', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '609', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '729', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '730', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '749', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '809', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '889', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '890', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '891', '0', '24');
INSERT INTO `character_reputation` VALUES ('1', '892', '0', '14');
INSERT INTO `character_reputation` VALUES ('1', '909', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '910', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '911', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '922', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '930', '-2744', '17');
INSERT INTO `character_reputation` VALUES ('1', '932', '0', '80');
INSERT INTO `character_reputation` VALUES ('1', '933', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '934', '0', '80');
INSERT INTO `character_reputation` VALUES ('1', '935', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '936', '0', '28');
INSERT INTO `character_reputation` VALUES ('1', '941', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '942', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '946', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '947', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '948', '0', '8');
INSERT INTO `character_reputation` VALUES ('1', '949', '0', '24');
INSERT INTO `character_reputation` VALUES ('1', '952', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '953', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '967', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '970', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '978', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '980', '0', '24');
INSERT INTO `character_reputation` VALUES ('1', '989', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '990', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1005', '0', '20');
INSERT INTO `character_reputation` VALUES ('1', '1011', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1012', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1015', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '1031', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1037', '0', '136');
INSERT INTO `character_reputation` VALUES ('1', '1038', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1050', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1052', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '1064', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1067', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '1068', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1073', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1077', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1082', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1085', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1090', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1091', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1094', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1097', '0', '12');
INSERT INTO `character_reputation` VALUES ('1', '1098', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1104', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1105', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1106', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1117', '0', '12');
INSERT INTO `character_reputation` VALUES ('1', '1118', '0', '12');
INSERT INTO `character_reputation` VALUES ('1', '1119', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '1124', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1126', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1133', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1134', '256', '17');
INSERT INTO `character_reputation` VALUES ('1', '1135', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1136', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '1137', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '1138', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1154', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '1155', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '1156', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1158', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1162', '0', '8');
INSERT INTO `character_reputation` VALUES ('1', '1163', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1168', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1169', '0', '28');
INSERT INTO `character_reputation` VALUES ('1', '1171', '0', '66');
INSERT INTO `character_reputation` VALUES ('1', '1172', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '1173', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1174', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1177', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1178', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1204', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1216', '3510', '81');
INSERT INTO `character_reputation` VALUES ('1', '1228', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '1242', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1245', '0', '8');
INSERT INTO `character_reputation` VALUES ('1', '1269', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1270', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1271', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1272', '0', '152');
INSERT INTO `character_reputation` VALUES ('1', '1273', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1275', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1276', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1277', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1278', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1279', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1280', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1281', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1282', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1283', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1302', '0', '144');
INSERT INTO `character_reputation` VALUES ('1', '1337', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1341', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1345', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1351', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1352', '0', '6');
INSERT INTO `character_reputation` VALUES ('1', '1353', '-2100', '17');
INSERT INTO `character_reputation` VALUES ('1', '1357', '0', '4');
INSERT INTO `character_reputation` VALUES ('1', '1358', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1359', '0', '16');
INSERT INTO `character_reputation` VALUES ('1', '1374', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1375', '0', '2');
INSERT INTO `character_reputation` VALUES ('1', '1376', '0', '144');
INSERT INTO `character_reputation` VALUES ('1', '1416', '0', '0');
INSERT INTO `character_reputation` VALUES ('1', '1419', '0', '16');

-- ----------------------------
-- Table structure for `character_skills`
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_skills
-- ----------------------------
INSERT INTO `character_skills` VALUES ('1', '43', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '44', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '45', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '46', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '54', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '55', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '95', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '98', '300', '300');
INSERT INTO `character_skills` VALUES ('1', '118', '1', '180');
INSERT INTO `character_skills` VALUES ('1', '136', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '160', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '162', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '172', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '173', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '226', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '229', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '413', '1', '1');
INSERT INTO `character_skills` VALUES ('1', '415', '1', '1');
INSERT INTO `character_skills` VALUES ('1', '433', '1', '1');
INSERT INTO `character_skills` VALUES ('1', '473', '1', '5');
INSERT INTO `character_skills` VALUES ('1', '795', '1', '1');
INSERT INTO `character_skills` VALUES ('1', '840', '1', '1');
INSERT INTO `character_skills` VALUES ('1', '905', '300', '300');
INSERT INTO `character_skills` VALUES ('1', '906', '300', '300');
INSERT INTO `character_skills` VALUES ('1', '924', '1', '1');

-- ----------------------------
-- Table structure for `character_social`
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_social
-- ----------------------------

-- ----------------------------
-- Table structure for `character_spell`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_spell
-- ----------------------------
INSERT INTO `character_spell` VALUES ('1', '71', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '100', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '355', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '668', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '676', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '1680', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '1715', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '2458', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '5308', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '6343', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '6552', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '7386', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '13046', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '23588', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '23881', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '29838', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '34428', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '57755', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '85288', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '100130', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '103827', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '108130', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '115767', '1', '0');
INSERT INTO `character_spell` VALUES ('1', '115768', '1', '0');

-- ----------------------------
-- Table structure for `character_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `character_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `spirit` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `resilience` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `character_talent`
-- ----------------------------
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent` (
  `guid` int(10) unsigned NOT NULL,
  `spell` mediumint(8) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_talent
-- ----------------------------
INSERT INTO `character_talent` VALUES ('1', '15757', '0');
INSERT INTO `character_talent` VALUES ('1', '16035', '0');

-- ----------------------------
-- Table structure for `character_void_storage`
-- ----------------------------
DROP TABLE IF EXISTS `character_void_storage`;
CREATE TABLE `character_void_storage` (
  `itemId` bigint(20) unsigned NOT NULL,
  `playerGuid` int(10) unsigned NOT NULL,
  `itemEntry` mediumint(8) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `randomProperty` int(10) unsigned NOT NULL DEFAULT '0',
  `suffixFactor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`),
  KEY `idx_player` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_void_storage
-- ----------------------------

-- ----------------------------
-- Table structure for `character_warn`
-- ----------------------------
DROP TABLE IF EXISTS `character_warn`;
CREATE TABLE `character_warn` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id du warn',
  `guid` int(10) unsigned DEFAULT NULL COMMENT 'characters.id',
  `account` int(10) unsigned DEFAULT NULL COMMENT 'auth.account.id',
  `gamemaster` varchar(50) DEFAULT NULL COMMENT 'Nom du MJ qui a donné l''avertissement',
  `date` datetime DEFAULT NULL COMMENT 'Date de l''ajout',
  `type` tinyint(3) unsigned DEFAULT NULL COMMENT 'Type du warn (0 = warn, 1 = note)',
  `text` text COMMENT 'Texte du warn',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_warn
-- ----------------------------

-- ----------------------------
-- Table structure for `corpse`
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse` (
  `corpseGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `phaseMask` smallint(5) unsigned NOT NULL DEFAULT '1',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`corpseGuid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_player` (`guid`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

-- ----------------------------
-- Records of corpse
-- ----------------------------

-- ----------------------------
-- Table structure for `creature_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- ----------------------------
-- Records of creature_respawn
-- ----------------------------
INSERT INTO `creature_respawn` VALUES ('178455', '1389863191', '0', '0');
INSERT INTO `creature_respawn` VALUES ('604478', '1389862131', '860', '0');
INSERT INTO `creature_respawn` VALUES ('8156131', '1389862302', '860', '0');
INSERT INTO `creature_respawn` VALUES ('8162617', '1489862551', '860', '0');
INSERT INTO `creature_respawn` VALUES ('15152672', '1389861498', '860', '0');

-- ----------------------------
-- Table structure for `gameobject_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- ----------------------------
-- Records of gameobject_respawn
-- ----------------------------

-- ----------------------------
-- Table structure for `game_event_condition_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE `game_event_condition_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_condition_save
-- ----------------------------

-- ----------------------------
-- Table structure for `game_event_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_save
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_subsurveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_subsurveys`;
CREATE TABLE `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyId` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyId`,`subsurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_subsurveys
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_surveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE `gm_surveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT '0',
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_surveys
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets` (
  `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `lastModifiedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `closedBy` int(10) NOT NULL DEFAULT '0',
  `assignedTo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `response` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `haveTicket` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_tickets
-- ----------------------------

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` int(10) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` int(10) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` int(10) unsigned NOT NULL,
  `icon2` int(10) unsigned NOT NULL,
  `icon3` int(10) unsigned NOT NULL,
  `icon4` int(10) unsigned NOT NULL,
  `icon5` int(10) unsigned NOT NULL,
  `icon6` int(10) unsigned NOT NULL,
  `icon7` int(10) unsigned NOT NULL,
  `icon8` int(10) unsigned NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `raiddifficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for `group_instance`
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `group_member`
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` int(10) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- ----------------------------
-- Records of group_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild`
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned DEFAULT '1',
  `experience` bigint(20) unsigned DEFAULT '0',
  `todayExperience` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement`;
CREATE TABLE `guild_achievement` (
  `guildId` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_achievement
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement_progress`;
CREATE TABLE `guild_achievement_progress` (
  `guildId` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_achievement_progress
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_item`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_item
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_right`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_right
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_tab`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_tab
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(10) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(10) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

-- ----------------------------
-- Records of guild_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_finder_applicant`
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_applicant`;
CREATE TABLE `guild_finder_applicant` (
  `guildId` int(10) unsigned DEFAULT NULL,
  `playerGuid` int(10) unsigned DEFAULT NULL,
  `availability` tinyint(3) unsigned DEFAULT '0',
  `classRole` tinyint(3) unsigned DEFAULT '0',
  `interests` tinyint(3) unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `submitTime` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `guildId` (`guildId`,`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_finder_applicant
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_finder_guild_settings`
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_guild_settings`;
CREATE TABLE `guild_finder_guild_settings` (
  `guildId` int(10) unsigned NOT NULL,
  `availability` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `classRoles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `interests` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_finder_guild_settings
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` int(10) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_member_withdraw`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member_withdraw`;
CREATE TABLE `guild_member_withdraw` (
  `guid` int(10) unsigned NOT NULL,
  `tab0` int(10) unsigned NOT NULL DEFAULT '0',
  `tab1` int(10) unsigned NOT NULL DEFAULT '0',
  `tab2` int(10) unsigned NOT NULL DEFAULT '0',
  `tab3` int(10) unsigned NOT NULL DEFAULT '0',
  `tab4` int(10) unsigned NOT NULL DEFAULT '0',
  `tab5` int(10) unsigned NOT NULL DEFAULT '0',
  `tab6` int(10) unsigned NOT NULL DEFAULT '0',
  `tab7` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Member Daily Withdraws';

-- ----------------------------
-- Records of guild_member_withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_newslog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_newslog`;
CREATE TABLE `guild_newslog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_newslog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_rank`
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `instance`
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance
-- ----------------------------

-- ----------------------------
-- Table structure for `instance_reset`
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance_reset
-- ----------------------------
INSERT INTO `instance_reset` VALUES ('33', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('36', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('249', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('249', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('269', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('409', '9', '1390449600');
INSERT INTO `instance_reset` VALUES ('469', '9', '1390449600');
INSERT INTO `instance_reset` VALUES ('509', '3', '1390104000');
INSERT INTO `instance_reset` VALUES ('531', '9', '1390449600');
INSERT INTO `instance_reset` VALUES ('532', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('533', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('533', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('534', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('540', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('542', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('543', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('544', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('545', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('546', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('547', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('548', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('550', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('552', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('553', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('554', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('555', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('556', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('557', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('558', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('560', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('564', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('565', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('568', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('574', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('575', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('576', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('578', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('580', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('585', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('595', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('598', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('599', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('600', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('601', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('602', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('603', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('603', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('604', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('608', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('615', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('615', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('616', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('616', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('619', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('624', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('624', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('631', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('631', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('631', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('631', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('632', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('643', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('644', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('645', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('649', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('649', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('649', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('649', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('650', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('657', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('658', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('668', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('669', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('669', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('669', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('669', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('670', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('671', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('671', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('671', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('671', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('720', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('720', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('720', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('720', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('724', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('724', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('724', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('724', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('725', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('754', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('754', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('754', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('754', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('755', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('757', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('757', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('757', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('757', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('859', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('938', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('939', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('940', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('959', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('960', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('961', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('962', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('967', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('967', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('967', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('967', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('994', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('996', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('996', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('996', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('996', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('1001', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('1004', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('1007', '2', '1389931200');
INSERT INTO `instance_reset` VALUES ('1008', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('1008', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('1008', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('1008', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('1009', '3', '1390449600');
INSERT INTO `instance_reset` VALUES ('1009', '4', '1390449600');
INSERT INTO `instance_reset` VALUES ('1009', '5', '1390449600');
INSERT INTO `instance_reset` VALUES ('1009', '6', '1390449600');
INSERT INTO `instance_reset` VALUES ('1011', '2', '1389931200');

-- ----------------------------
-- Table structure for `item_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

-- ----------------------------
-- Records of item_instance
-- ----------------------------
INSERT INTO `item_instance` VALUES ('2', '72019', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 55 55 0 0 ', '0', '55', '0', '');
INSERT INTO `item_instance` VALUES ('4', '72020', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 39 40 0 0 ', '0', '39', '0', '');
INSERT INTO `item_instance` VALUES ('8', '77273', '1', '0', '0', '6', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('10', '6948', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('13', '73210', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 40 40 0 0 ', '0', '40', '0', '');
INSERT INTO `item_instance` VALUES ('14', '73216', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 0 0 ', '0', '20', '0', '');
INSERT INTO `item_instance` VALUES ('15', '73219', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 0 0 ', '0', '20', '0', '');
INSERT INTO `item_instance` VALUES ('16', '73222', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 0 0 ', '0', '20', '0', '');
INSERT INTO `item_instance` VALUES ('18', '55973', '1', '0', '0', '6', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('29', '73223', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('30', '73241', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('31', '73226', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 60 60 0 0 ', '0', '60', '0', '');
INSERT INTO `item_instance` VALUES ('32', '55983', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('33', '72071', '1', '0', '0', '2', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('35', '73229', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 45 45 0 0 ', '0', '45', '0', '');
INSERT INTO `item_instance` VALUES ('36', '73242', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('38', '57397', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 20 0 0 ', '0', '20', '0', '');
INSERT INTO `item_instance` VALUES ('39', '4656', '1', '0', '0', '5', '0', '-1 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
INSERT INTO `item_instance` VALUES ('40', '159', '1', '0', '0', '5', '0', '-1 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `item_loot_items`
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_items`;
CREATE TABLE `item_loot_items` (
  `container_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int(10) NOT NULL DEFAULT '0' COMMENT 'stack size',
  `follow_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `under_threshold` tinyint(1) NOT NULL DEFAULT '0',
  `needs_quest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'quest drop',
  `rnd_prop` int(10) NOT NULL DEFAULT '0' COMMENT 'random enchantment added when originally rolled',
  `rnd_suffix` int(10) NOT NULL DEFAULT '0' COMMENT 'random suffix added when originally rolled'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of item_loot_items
-- ----------------------------

-- ----------------------------
-- Table structure for `item_loot_money`
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_money`;
CREATE TABLE `item_loot_money` (
  `container_id` int(10) NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `money` int(10) NOT NULL DEFAULT '0' COMMENT 'money loot (in copper)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of item_loot_money
-- ----------------------------

-- ----------------------------
-- Table structure for `item_refund_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE `item_refund_instance` (
  `item_guid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` int(10) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- ----------------------------
-- Records of item_refund_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `item_soulbound_trade_data`
-- ----------------------------
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE `item_soulbound_trade_data` (
  `itemGuid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- ----------------------------
-- Records of item_soulbound_trade_data
-- ----------------------------

-- ----------------------------
-- Table structure for `lag_reports`
-- ----------------------------
DROP TABLE IF EXISTS `lag_reports`;
CREATE TABLE `lag_reports` (
  `reportId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `lagType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `latency` int(10) unsigned NOT NULL DEFAULT '0',
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of lag_reports
-- ----------------------------

-- ----------------------------
-- Table structure for `lfg_data`
-- ----------------------------
DROP TABLE IF EXISTS `lfg_data`;
CREATE TABLE `lfg_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int(10) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LFG Data';

-- ----------------------------
-- Records of lfg_data
-- ----------------------------

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cod` bigint(20) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

-- ----------------------------
-- Records of mail
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_items`
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mail_items
-- ----------------------------

-- ----------------------------
-- Table structure for `petition`
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerguid`,`type`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of petition
-- ----------------------------

-- ----------------------------
-- Table structure for `petition_sign`
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of petition_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_aura`
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount` longtext NOT NULL,
  `base_amount` longtext NOT NULL,
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_aura
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_spell`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_spell
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `pool_quest_save`
-- ----------------------------
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pool_quest_save
-- ----------------------------
INSERT INTO `pool_quest_save` VALUES ('500', '13675');
INSERT INTO `pool_quest_save` VALUES ('501', '13764');
INSERT INTO `pool_quest_save` VALUES ('502', '13769');
INSERT INTO `pool_quest_save` VALUES ('503', '13773');
INSERT INTO `pool_quest_save` VALUES ('504', '13778');
INSERT INTO `pool_quest_save` VALUES ('505', '13784');
INSERT INTO `pool_quest_save` VALUES ('506', '13670');
INSERT INTO `pool_quest_save` VALUES ('507', '13600');
INSERT INTO `pool_quest_save` VALUES ('508', '13741');
INSERT INTO `pool_quest_save` VALUES ('509', '13746');
INSERT INTO `pool_quest_save` VALUES ('510', '13757');
INSERT INTO `pool_quest_save` VALUES ('511', '13754');
INSERT INTO `pool_quest_save` VALUES ('512', '13103');
INSERT INTO `pool_quest_save` VALUES ('513', '13115');
INSERT INTO `pool_quest_save` VALUES ('514', '13830');
INSERT INTO `pool_quest_save` VALUES ('515', '12963');
INSERT INTO `pool_quest_save` VALUES ('516', '24582');
INSERT INTO `pool_quest_save` VALUES ('523', '26226');
INSERT INTO `pool_quest_save` VALUES ('524', '26192');
INSERT INTO `pool_quest_save` VALUES ('525', '25162');
INSERT INTO `pool_quest_save` VALUES ('526', '25154');
INSERT INTO `pool_quest_save` VALUES ('527', '26588');
INSERT INTO `pool_quest_save` VALUES ('528', '26414');
INSERT INTO `pool_quest_save` VALUES ('529', '29332');
INSERT INTO `pool_quest_save` VALUES ('530', '29363');
INSERT INTO `pool_quest_save` VALUES ('531', '29352');
INSERT INTO `pool_quest_save` VALUES ('532', '29318');
INSERT INTO `pool_quest_save` VALUES ('533', '29317');
INSERT INTO `pool_quest_save` VALUES ('534', '29348');
INSERT INTO `pool_quest_save` VALUES ('535', '29347');
INSERT INTO `pool_quest_save` VALUES ('536', '29321');
INSERT INTO `pool_quest_save` VALUES ('14520', '30150');
INSERT INTO `pool_quest_save` VALUES ('14521', '30155');
INSERT INTO `pool_quest_save` VALUES ('14522', '30157');
INSERT INTO `pool_quest_save` VALUES ('14524', '31699');
INSERT INTO `pool_quest_save` VALUES ('14525', '31702');
INSERT INTO `pool_quest_save` VALUES ('14526', '31721');

-- ----------------------------
-- Table structure for `reserved_name`
-- ----------------------------
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

-- ----------------------------
-- Records of reserved_name
-- ----------------------------

-- ----------------------------
-- Table structure for `warden_action`
-- ----------------------------
DROP TABLE IF EXISTS `warden_action`;
CREATE TABLE `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warden_action
-- ----------------------------

-- ----------------------------
-- Table structure for `worldstates`
-- ----------------------------
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

-- ----------------------------
-- Records of worldstates
-- ----------------------------
INSERT INTO `worldstates` VALUES ('3781', '9000000', null);
INSERT INTO `worldstates` VALUES ('3801', '0', null);
INSERT INTO `worldstates` VALUES ('3802', '1', null);
INSERT INTO `worldstates` VALUES ('20001', '1390453200', null);
INSERT INTO `worldstates` VALUES ('20002', '1390465527', null);
INSERT INTO `worldstates` VALUES ('20003', '1389934800', null);
INSERT INTO `worldstates` VALUES ('20006', '1389934800', null);
INSERT INTO `worldstates` VALUES ('20007', '1391209200', null);
INSERT INTO `worldstates` VALUES ('20050', '1', null);
