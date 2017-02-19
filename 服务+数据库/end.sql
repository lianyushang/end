-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 ending 的数据库结构
CREATE DATABASE IF NOT EXISTS `ending` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ending`;


-- 导出  表 ending.orderclass 结构
CREATE TABLE IF NOT EXISTS `orderclass` (
  `fID` int(11) NOT NULL,
  `fUserID` varchar(50) DEFAULT NULL COMMENT '下单人',
  `fPhone` varchar(500) NOT NULL COMMENT '联系号码',
  `fContent` varchar(200) DEFAULT NULL COMMENT '下单菜品名称',
  `fNumber` int(11) DEFAULT NULL COMMENT '下单菜品数量',
  `fMoney` int(11) DEFAULT NULL COMMENT '下单菜品单价',
  `fSum` int(11) DEFAULT NULL COMMENT '合计金额',
  `fData` date DEFAULT NULL COMMENT '订单时间',
  `fTime` time DEFAULT NULL COMMENT '时间',
  `fAddress` varchar(500) DEFAULT NULL COMMENT '订单地址',
  `fType` varchar(500) DEFAULT NULL COMMENT 'o未处理1已处理',
  `fRoom` varchar(500) DEFAULT NULL COMMENT '就餐位置',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ending.orderclass 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `orderclass` DISABLE KEYS */;
INSERT IGNORE INTO `orderclass` (`fID`, `fUserID`, `fPhone`, `fContent`, `fNumber`, `fMoney`, `fSum`, `fData`, `fTime`, `fAddress`, `fType`, `fRoom`) VALUES
	(1, '练羽裳', '17826815685', '宫保鸡丁', 3, 10, 30, '2017-01-07', '20:46:33', '商职院4号楼', '0', '包厢'),
	(2, '蔡珍一', '17826815679', '宫保鸡丁', 1, 10, 10, '2017-01-07', '20:46:35', '立志园5号院', '1', '包厢');
/*!40000 ALTER TABLE `orderclass` ENABLE KEYS */;


-- 导出  表 ending.rootclass 结构
CREATE TABLE IF NOT EXISTS `rootclass` (
  `fID` varchar(50) NOT NULL,
  `fClassName` varchar(50) DEFAULT NULL COMMENT '左列名称',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ending.rootclass 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `rootclass` DISABLE KEYS */;
INSERT IGNORE INTO `rootclass` (`fID`, `fClassName`) VALUES
	('r001', '推荐菜'),
	('r002', '家常菜'),
	('r003', '卤味'),
	('r004', '炖品'),
	('r005', '主食'),
	('r006', '甜品'),
	('r007', '饮品'),
	('r008', '小吃类');
/*!40000 ALTER TABLE `rootclass` ENABLE KEYS */;


-- 导出  表 ending.secondclass 结构
CREATE TABLE IF NOT EXISTS `secondclass` (
  `fID` varchar(50) NOT NULL,
  `fRootID` varchar(50) NOT NULL COMMENT 'rootId',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ending.secondclass 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `secondclass` DISABLE KEYS */;
INSERT IGNORE INTO `secondclass` (`fID`, `fRootID`) VALUES
	('s001', 'r001'),
	('s002', 'r002'),
	('s003', 'r003'),
	('s004', 'r004'),
	('s005', 'r005'),
	('s006', 'r006'),
	('s007', 'r007'),
	('s008', 'r008');
/*!40000 ALTER TABLE `secondclass` ENABLE KEYS */;


-- 导出  表 ending.takeout 结构
CREATE TABLE IF NOT EXISTS `takeout` (
  `fID` int(11) NOT NULL,
  `fImage` varchar(50) DEFAULT NULL COMMENT '外卖图片',
  `fName` varchar(50) DEFAULT NULL COMMENT '外卖名称',
  `fPrice` float DEFAULT NULL COMMENT '外卖价格',
  `fDescription` varchar(50) DEFAULT NULL COMMENT '外卖描述',
  `fNumber` int(11) DEFAULT NULL COMMENT '外卖已购买数量',
  `fType` int(11) NOT NULL COMMENT '套餐0盖饭1',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外卖-套餐';

-- 正在导出表  ending.takeout 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `takeout` DISABLE KEYS */;
INSERT IGNORE INTO `takeout` (`fID`, `fImage`, `fName`, `fPrice`, `fDescription`, `fNumber`, `fType`) VALUES
	(1, '秘制大排套餐.jpg', '秘制大排套餐', 12, '加米饭加饮料', 0, 0),
	(3, '台式卤肉饭套餐.jpg', '台式卤肉饭套餐', 10, '加米饭加饮料', 0, 0),
	(4, '扬州狮子头套餐.jpg', '扬州狮子头套餐', 15, '加米饭加饮料', 0, 0),
	(5, '炸猪排草鸡汤套餐.jpg', '炸猪排草鸡汤套餐', 20, '加米饭加饮料', 0, 0),
	(6, '皇牌八宝饭.jpg', '皇牌八宝饭', 14, NULL, 0, 1),
	(7, '姜葱白切鸡饭.jpg', '姜葱白切鸡饭', 12, NULL, 0, 1),
	(8, '玫瑰豉油鸡饭.jpg', '玫瑰豉油鸡饭', 18, NULL, 0, 1),
	(9, '蜜汁叉烧饭.jpg', '蜜汁叉烧饭', 15, NULL, 0, 1);
/*!40000 ALTER TABLE `takeout` ENABLE KEYS */;


-- 导出  表 ending.thirdclass 结构
CREATE TABLE IF NOT EXISTS `thirdclass` (
  `fID` varchar(50) NOT NULL,
  `fSecondID` varchar(50) NOT NULL COMMENT 'SecondId',
  `fClassName` varchar(50) DEFAULT NULL COMMENT '菜品名称',
  `fClassImg` varchar(50) DEFAULT NULL COMMENT '菜品图片',
  `fClassPrice` int(11) DEFAULT NULL COMMENT '菜品价格',
  `fClassDiscount` int(11) DEFAULT NULL COMMENT '菜品折扣价',
  `fClassNumber` int(11) DEFAULT NULL COMMENT '菜品已购买数量',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ending.thirdclass 的数据：~44 rows (大约)
/*!40000 ALTER TABLE `thirdclass` DISABLE KEYS */;
INSERT IGNORE INTO `thirdclass` (`fID`, `fSecondID`, `fClassName`, `fClassImg`, `fClassPrice`, `fClassDiscount`, `fClassNumber`) VALUES
	('t001', 's001', '爆炒海虹', '爆炒海虹.jpg', 25, 25, 1235),
	('t002', 's001', '五谷丰登', '五谷丰登.jpg', 25, 18, 1002),
	('t003', 's001', '香辣牛肉片', '香辣牛肉片.jpg', 25, 49, 1564),
	('t004', 's001', '香芋焖排骨', '香芋焖排骨.jpg', 50, 76, 1846),
	('t005', 's001', '燕麦苦瓜酿', '燕麦苦瓜酿.jpg', 25, 42, 1002),
	('t006', 's002', '麻婆豆腐', '麻婆豆腐.jpg', 20, 64, 1051),
	('t007', 's002', '双蛋快乐', '双蛋快乐.jpg', 20, 50, 1003),
	('t008', 's002', '素炒土豆丝', '素炒土豆丝.jpg', 15, 64, 2316),
	('t009', 's002', '鱼香肉丝', '鱼香肉丝.jpg', 20, 15, 1023),
	('t010', 's003', '卤风爪', '卤风爪.jpg', 30, 75, 1648),
	('t011', 's003', '卤水猪耳朵', '卤水猪耳朵.jpg', 35, 86, 1564),
	('t012', 's003', '卤香牛肉', '卤香牛肉.jpg', 35, 78, 1849),
	('t013', 's003', '卤鸭子', '卤鸭子.jpg', 40, 86, 1649),
	('t014', 's003', '啤酒卤排骨', '啤酒卤排骨.jpg', 40, 57, 1649),
	('t015', 's004', '牛腩炖白萝卜', '牛腩炖白萝卜.jpg', 40, 46, 1021),
	('t016', 's004', '排骨莲藕萝卜汤', '排骨莲藕萝卜汤.jpg', 35, 56, 1666),
	('t017', 's004', '清炖狮子头', '清炖狮子头.jpg', 30, 49, 1645),
	('t018', 's004', '时蔬鲫鱼汤', '时蔬鲫鱼汤.jpg', 45, 94, 1056),
	('t019', 's005', '腊肉饭', '腊肉饭.jpg', 25, 54, 1004),
	('t020', 's005', '南瓜胡萝卜酱肉焖饭', '南瓜胡萝卜酱肉焖饭.jpg', 25, 86, 1032),
	('t021', 's005', '照烧鸡腿饭', '照烧鸡腿饭.jpg', 25, 94, 1111),
	('t022', 's006', '冰镇红豆绿茶拿铁', '冰镇红豆绿茶拿铁.jpg', 18, 75, 1002),
	('t023', 's006', '桂圆红枣茶', '桂圆红枣茶.jpg', 12, 84, 1302),
	('t024', 's006', '红腰豆南瓜豆浆', '红腰豆南瓜豆浆.jpg', 15, 86, 1846),
	('t025', 's006', '酸梅汤', '酸梅汤.jpg', 10, 89, 1021),
	('t026', 's006', '香蕉咖啡奶茶', '香蕉咖啡奶茶.jpg', 15, 94, 1993),
	('t027', 's007', '红薯饼', '红薯饼.jpg', 20, 94, 1992),
	('t028', 's007', '柠檬酥皮派', '柠檬酥皮派.jpg', 25, 48, 2016),
	('t029', 's007', '圣诞树蛋糕卷', '圣诞树蛋糕卷.jpg', 15, 68, 2160),
	('t030', 's007', '香蕉牛奶松饼', '香蕉牛奶松饼.jpg', 25, 79, 2301),
	('t031', 's005', '米饭', '米饭.jpg', 2, 100, 1094),
	('t032', 's002', '桂花糖藕', '桂花糖藕.jpg', 8, 56, 1000),
	('t033', 's002', '千叶豆腐', '千叶豆腐.jpg', 20, 94, 1230),
	('t034', 's002', '香辣啤酒鸭', '香辣啤酒鸭.jpg', 35, 55, 1205),
	('t035', 's002', '松花豆腐', '松花豆腐.jpg', 15, 66, 1649),
	('t037', 's006', '可乐', '可乐.jpg', 4, 111, 1649),
	('t038', 's006', '雪碧', '雪碧.jpg', 4, 103, 1084),
	('t039', 's006', '旺仔', '旺仔.jpg', 8, 52, 1326),
	('t040', 's006', '椰汁', '椰汁.png', 8, 95, 1000),
	('t042', 's008', '海皇星星薯', '海皇星星薯.jpg', 15, 78, 1064),
	('t043', 's008', '粒粒香鸡块', '粒粒香鸡块.jpg', 13, 98, 1978),
	('t044', 's008', '秘制蝴蝶虾', '秘制蝴蝶虾.jpg', 13, 48, 1994),
	('t045', 's008', '如意鸡翅', '如意鸡翅.jpg', 18, 68, 1648),
	('t046', 's008', '天山鸡柳', '天山鸡柳.jpg', 16, 46, 1032);
/*!40000 ALTER TABLE `thirdclass` ENABLE KEYS */;


-- 导出  表 ending.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `fID` int(11) NOT NULL,
  `fPhone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `fName` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `fDate` date DEFAULT NULL COMMENT '送餐时间（年月日）',
  `fTime` time DEFAULT NULL COMMENT '送餐时间',
  `fNumber` int(11) DEFAULT NULL COMMENT '预定人数',
  `fRoom` int(11) DEFAULT NULL COMMENT '预定位置大厅1包厢0',
  `fRemarks` varchar(500) DEFAULT NULL COMMENT '备注说明',
  `fAddress` varchar(500) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户信息';

-- 正在导出表  ending.user 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT IGNORE INTO `user` (`fID`, `fPhone`, `fName`, `fDate`, `fTime`, `fNumber`, `fRoom`, `fRemarks`, `fAddress`) VALUES
	(1, 'phone', '新用户', '2017-01-07', '16:14:02', 0, 1, 'none', '地址');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- 导出  表 ending.vip 结构
CREATE TABLE IF NOT EXISTS `vip` (
  `fID` int(11) NOT NULL,
  `fVipName` varchar(50) DEFAULT NULL,
  `fVipPhone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  ending.vip 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `vip` DISABLE KEYS */;
INSERT IGNORE INTO `vip` (`fID`, `fVipName`, `fVipPhone`) VALUES
	(1, '新用户', 'phone');
/*!40000 ALTER TABLE `vip` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
