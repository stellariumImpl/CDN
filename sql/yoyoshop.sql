/*
 Navicat Premium Data Transfer

 Source Server         : mysql-local
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : yoyoshop

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 24/12/2021 17:14:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '\"管理员id\"',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"用户名\"',
  `password` char(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"密码\"',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'HAMVRZRssPCADKqGjGWJtQ==');
INSERT INTO `admin` VALUES (2, 'cuiyayun', 'HAMVRZRssPCADKqGjGWJtQ==');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '\"商品id\"',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"商品名称\"',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '\"商品的单价\"',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"商品的描述\"',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"封面图片的url地址\"',
  `image1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"商品细节图片1的url地址\"',
  `image2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"商品细节图片2的url地址\"',
  `stock` int(10) NULL DEFAULT 10 COMMENT '\"商品库存数量\"',
  `type_id` int(10) NULL DEFAULT NULL COMMENT '\"商品分类的id，关联type表\"',
  `status` int(2) NULL DEFAULT 1 COMMENT '\"商品的状态，1表示在售，0表示删除\"',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (15, 'DANISA/皇冠曲奇饼干', 98.00, '百草味-冻干榴莲干30g/袋休闲零食特产水果干金枕头泰国风味进口', 'picture/21.jpg', 'picture/20.jpg', 'picture/19.jpg', 100, 1, 1);
INSERT INTO `goods` VALUES (16, '冻干榴莲干', 13.00, '百草味-冻干榴莲干30g/袋休闲零食特产水果干金枕头泰国风味进口', 'picture/6.jpg', 'picture/5.jpg', 'picture/4.jpg', 50, 5, 1);
INSERT INTO `goods` VALUES (17, '卤味零食大礼包', 49.00, '包邮三只松鼠零食大礼包505g卤味鸭脖整箱鸭肉小吃充饥夜宵送女友', 'picture/8.jpg', 'picture/7.jpg', 'picture/9.jpg', 50, 5, 1);
INSERT INTO `goods` VALUES (18, '猪肉脯', 28.00, '良品铺子猪肉脯100g靖江特产猪肉干网红小吃办公室休闲零食猪肉铺', 'picture/2.jpg', 'picture/3.jpg', 'picture/1.jpg', 50, 5, 1);
INSERT INTO `goods` VALUES (19, '山核桃仁', 149.00, '包邮三只松鼠山核桃仁500g30天装坚果量贩装每日坚果送礼孕妇干果', 'picture/10.jpg', 'picture/11.jpg', 'picture/12.jpg', 48, 5, 1);
INSERT INTO `goods` VALUES (20, '熟制板栗仁', 12.00, '百草味 熟制板栗仁80g*2坚果炒货零食特产甘栗仁新鲜即食干果栗子', 'picture/15.jpg', 'picture/14.jpg', 'picture/13.jpg', 46, 5, 1);
INSERT INTO `goods` VALUES (21, '什锦蔬菜脆', 12.00, '百草味什锦蔬菜脆108g果蔬干秋葵脆片综合水果零食混合装脱水即食', 'picture/16.jpg', 'picture/18.jpg', 'picture/17.jpg', 50, 5, 1);
INSERT INTO `goods` VALUES (24, '农夫山泉', 16.00, '农夫山泉饮用天然水550ml*12瓶/组春游踏春出行露营居家常备', 'picture/23.jpg', 'picture/22.jpg', 'picture/24.jpg', 50, 5, 1);
INSERT INTO `goods` VALUES (25, '百事可乐', 45.00, '百事可乐原味碳酸汽水330mL*24罐经典罐饮料饮品整箱装 宅家囤货', 'picture/25.jpg', 'picture/26.jpg', 'picture/27.jpg', 50, 5, 1);
INSERT INTO `goods` VALUES (26, '儿童磨牙棒饼干', 38.00, '韩国进口艾唯倪宝宝零食无添加蔗糖盐原味米饼30g儿童磨牙棒饼干', 'picture/28.jpg', 'picture/29.jpg', 'picture/30.jpg', 50, 1, 1);
INSERT INTO `goods` VALUES (27, '奶酪威化饼干', 10.00, '【进口】印尼丽芝士nabati纳宝帝奶酪威化饼干290g网红休闲零食品', 'picture/31.jpg', 'picture/32.jpg', 'picture/33.jpg', 100, 1, 1);
INSERT INTO `goods` VALUES (28, '欧德堡全脂纯牛奶', 60.00, '【进口】德国欧德堡全脂纯牛奶200ml*16盒早餐牛奶营养牛奶整箱', 'picture/36.png', 'picture/35.jpg', 'picture/34.jpg', 50, 1, 1);
INSERT INTO `goods` VALUES (29, '德亚儿童牛奶', 30.00, '德国进口牛奶 德亚儿童宝宝婴儿婴幼儿牛奶调制乳 200ml*3 汪汪队', 'picture/37.png', 'picture/38.jpg', 'picture/39.jpg', 100, 1, 1);
INSERT INTO `goods` VALUES (30, '旧街场白咖啡', 62.00, '【进口】马来西亚旧街场白咖啡榛果味20条盒装3合1榛果浓香', 'picture/40.jpg', 'picture/41.jpg', 'picture/42.jpg', 48, 1, 1);
INSERT INTO `goods` VALUES (31, '农心辣白菜小碗面', 7.00, '韩国进口农心辣白菜小碗面86g方便面泡菜拉面泡面杯面', 'picture/43.jpg', 'picture/44.jpg', 'picture/45.jpg', 50, 1, 1);
INSERT INTO `goods` VALUES (32, '纯可可黑巧克力', 20.00, '诺梵88%纯可可黑巧克力礼盒装休闲零食520礼物礼品送女友130g', 'picture/46.jpg', 'picture/47.jpg', 'picture/48.jpg', 50, 1, 1);
INSERT INTO `goods` VALUES (33, '川娃子炭烧烧椒酱辣椒酱', 14.00, '川娃子炭烧烧椒酱辣椒酱230g农家手工虎皮青辣椒剁椒酱拌面下饭菜', 'picture/49.png', 'picture/50.jpg', 'picture/51.jpg', 45, 4, 1);
INSERT INTO `goods` VALUES (34, '乌江涪陵榨菜', 14.00, '乌江涪陵清爽榨菜鲜脆菜丝70g*5酱菜泡菜下饭菜咸菜小菜早餐配粥', 'picture/52.jpg', 'picture/53.jpg', 'picture/54.jpg', 50, 4, 1);
INSERT INTO `goods` VALUES (35, '老干妈豆豉油辣椒', 13.00, '陶华碧老干妈风味豆豉油辣椒280g辣椒酱辣酱调味酱下饭菜佐餐酱', 'picture/55.jpg', 'picture/56.jpg', 'picture/57.jpg', 50, 4, 1);
INSERT INTO `goods` VALUES (36, '古方红糖', 39.00, '古方红糖180g/罐古法手工老红糖块经期产妇月子土红糖姨妈黑糖', 'picture/58.jpg', 'picture/59.jpg', 'picture/60.jpg', 50, 4, 1);
INSERT INTO `goods` VALUES (37, '自嗨锅自热米饭', 60.00, '自嗨锅自热米饭大份量方便速食4桶广式香肠菌菇牛肉煲仔饭多口味', 'picture/61.jpg', 'picture/62.jpg', 'picture/63.jpg', 50, 4, 1);
INSERT INTO `goods` VALUES (38, '双汇王中王火腿肠', 11.00, '双汇王中王火腿肠30g*8支香肠肉类休闲零食速食配泡面网红零食', 'picture/64.png', 'picture/65.jpg', 'picture/66.jpg', 99, 1, 1);
INSERT INTO `goods` VALUES (39, '午餐肉罐头', 17.00, '【上海梅林】午餐肉罐头198g方便速食螺蛳粉火锅泡面搭档即食', 'picture/67.jpg', 'picture/68.jpg', 'picture/69.jpg', 50, 4, 1);
INSERT INTO `goods` VALUES (40, '盖亚农场云南紫米', 30.00, '盖亚农场云南紫米1kg粗粮饭五谷杂粮墨江紫糯米黑米黑糯米饭团', 'picture/70.jpg', 'picture/72.jpg', 'picture/71.jpg', 50, 4, 1);
INSERT INTO `goods` VALUES (41, '舒肤佳香皂', 15.00, '舒肤佳沐浴香皂纯白清香型男女持久留香抑菌家庭装115g*3肥皂', 'picture/73.jpg', 'picture/74.jpg', 'picture/75.jpg', 55, 3, 1);
INSERT INTO `goods` VALUES (42, '李施德漱口水', 21.00, '李施德林零度漱口水进口无酒精除口臭清新口气便携去牙渍口腔清洁', 'picture/76.jpg', 'picture/77.jpg', 'picture/78.jpg', 50, 3, 1);
INSERT INTO `goods` VALUES (43, '云南白药牙膏', 33.00, '云南白药牙膏薄荷清爽210g去牙渍去口臭口气清新家用家庭正品', 'picture/79.jpg', 'picture/80.png', 'picture/81.png', 49, 3, 1);
INSERT INTO `goods` VALUES (44, '舒肤佳沐浴露', 44.00, '舒肤佳沐浴露官方正品柠檬700ml+纯白700ml男女持久留香家庭装', 'picture/82.jpg', 'picture/83.png', 'picture/84.jpg', 49, 3, 1);
INSERT INTO `goods` VALUES (45, '高露洁牙刷', 12.00, '高露洁纤柔含炭超细软毛牙刷5支深入清洁去牙渍家庭套装家用组合', 'picture/85.jpg', 'picture/86.jpg', 'picture/87.jpg', 99, 3, 1);
INSERT INTO `goods` VALUES (46, '潘婷氨基酸膜护发素', 19.00, '潘婷3分钟三分钟奇迹氨基酸发膜护发素70ml改善毛躁护色修护烫染', 'picture/88.jpg', 'picture/89.jpg', 'picture/90.jpg', 49, 3, 1);
INSERT INTO `goods` VALUES (47, '欧莱雅男士洗面奶', 36.00, '欧莱雅男士洗面奶控油炭爽双效去黑头清洁收缩毛孔洁面膏100ml', 'picture/91.jpg', 'picture/92.jpg', 'picture/93.jpg', 50, 3, 1);
INSERT INTO `goods` VALUES (48, '凡士林身体乳', 49.00, '凡士林亮采修护夏维他亮肤提亮身体乳400ML烟酰胺匀均肤色防晒', 'picture/94.jpg', 'picture/95.jpg', 'picture/96.jpg', 50, 3, 1);
INSERT INTO `goods` VALUES (49, '汰渍洗衣粉', 39.00, '【薇娅推荐】汰渍洗衣粉10斤装净白去渍柠檬清袋装洗衣护理', 'picture/97.jpg', 'picture/98.jpg', 'picture/99.jpg', 21, 2, 1);
INSERT INTO `goods` VALUES (50, '雷达杀虫气雾剂', 34.00, '雷达杀虫气雾剂无香550ml*2灭蟑螂杀苍蝇喷雾剂 杀虫剂家用驱蚊', 'picture/100.jpg', 'picture/101.jpg', 'picture/102.jpg', 50, 2, 1);
INSERT INTO `goods` VALUES (51, '榄菊蚊香', 9.00, '榄菊蚊香艾草40单圈送支架家用室内驱蚊灭蚊艾叶盘香婴儿孕妇适用', 'picture/103.jpg', 'picture/104.jpg', 'picture/105.jpg', 50, 2, 1);
INSERT INTO `goods` VALUES (52, '奥妙洗衣液', 37.00, '奥妙 除菌除螨洗衣液3KG 酵素隔断技术 长效抑菌 除菌除螨祛渍', 'picture/106.jpg', 'picture/107.jpg', 'picture/108.jpg', 50, 2, 1);
INSERT INTO `goods` VALUES (53, '超能清洁肥皂', 9.00, '超能内衣专用皂202g*2清洗血渍去异味抑菌内裤清洁肥皂男女通用好', 'picture/109.jpg', 'picture/110.jpg', 'picture/111.jpg', 50, 2, 1);
INSERT INTO `goods` VALUES (54, 'Dettol/滴露消毒液', 54.00, '【薇娅推荐】Dettol/滴露皮肤衣物衣服家居消毒液750ml 有效杀菌', 'picture/112.jpg', 'picture/113.jpg', 'picture/114.jpg', 50, 2, 1);
INSERT INTO `goods` VALUES (55, '金纺护理剂', 47.00, '金纺花漾香氛护理剂普罗旺斯薰衣草 500ML 护衣留香凝露', 'picture/115.jpg', 'picture/116.jpg', 'picture/117.jpg', 50, 2, 1);
INSERT INTO `goods` VALUES (56, '狮王酵素除渍', 39.00, '日本进口狮王TOP高效洁白衣领净250ml酵素除渍领口袖口去污洗衣液', 'picture/118.jpg', 'picture/119.jpg', 'picture/120.jpg', 50, 2, 1);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '\"商品项id\"',
  `price` double(10, 2) NULL DEFAULT 0.00 COMMENT '\"商品单价\"',
  `amount` int(5) NULL DEFAULT 0 COMMENT '\"购买数量\"',
  `good_id` int(10) NULL DEFAULT NULL COMMENT '\"商品的id，关联goods表\"',
  `order_id` int(10) NULL DEFAULT NULL COMMENT '\"订单id，关联order\"',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (2, 11.00, 1, 38, 2);
INSERT INTO `item` VALUES (3, 12.00, 1, 20, 2);
INSERT INTO `item` VALUES (4, 14.00, 2, 33, 3);
INSERT INTO `item` VALUES (5, 62.00, 2, 30, 3);
INSERT INTO `item` VALUES (6, 149.00, 1, 19, 4);
INSERT INTO `item` VALUES (7, 36.00, 1, 47, 5);
INSERT INTO `item` VALUES (8, 45.00, 1, 25, 5);
INSERT INTO `item` VALUES (9, 9.00, 2, 51, 6);
INSERT INTO `item` VALUES (10, 39.00, 1, 56, 6);
INSERT INTO `item` VALUES (11, 14.00, 2, 41, 7);
INSERT INTO `item` VALUES (12, 12.00, 3, 20, 7);
INSERT INTO `item` VALUES (13, 33.00, 1, 43, 8);
INSERT INTO `item` VALUES (14, 44.00, 1, 44, 8);
INSERT INTO `item` VALUES (15, 12.00, 1, 45, 8);
INSERT INTO `item` VALUES (16, 19.00, 1, 46, 8);
INSERT INTO `item` VALUES (17, 149.00, 1, 19, 9);
INSERT INTO `item` VALUES (18, 14.00, 1, 33, 9);
INSERT INTO `item` VALUES (19, 14.00, 1, 33, 10);
INSERT INTO `item` VALUES (20, 14.00, 1, 33, 11);
INSERT INTO `item` VALUES (21, 11.00, 1, 38, 11);
INSERT INTO `item` VALUES (22, 15.00, 1, 41, 11);
INSERT INTO `item` VALUES (23, 39.00, 1, 49, 11);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '\"订单id\"',
  `total` double(10, 2) NULL DEFAULT NULL COMMENT '\"订单总价\"',
  `amount` int(5) NULL DEFAULT 0 COMMENT '\"订单中商品总件数\"',
  `status` int(2) NULL DEFAULT 1 COMMENT '\"订单状态 0表示删除，1表示未付款，2表示已付款，3表示配送中，4表示已完成\"',
  `paytype` int(2) NULL DEFAULT 0 COMMENT '\"支付方式0表示未支付 1表示微信支付，2表示支付宝支付，3表示货到付款\"',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"收货人姓名\"',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"收货人手机号\"',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"收货人地址\"',
  `systime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '\"下单时间\"',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '\"用户的id，关联user表\"',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (2, 23.00, 2, 3, 2, '王大爷', '15101185711', '河南省郑州市高新区莲花街11号纽科科技园1号楼B座216', '2021-12-20 10:19:52', 2);
INSERT INTO `order` VALUES (3, 152.00, 4, 2, 2, '张三', '15900001111', '西海太子大厦二层205', '2021-12-20 10:55:38', 3);
INSERT INTO `order` VALUES (4, 149.00, 1, 2, 1, '崔亚允', '15101185711', '河南省郑州市高新区莲花街11号纽科科技园1号楼B座216', '2021-12-20 15:21:50', 2);
INSERT INTO `order` VALUES (5, 81.00, 2, 1, 0, NULL, NULL, NULL, '2021-12-20 15:33:23', 2);
INSERT INTO `order` VALUES (6, 57.00, 3, 1, 0, NULL, NULL, NULL, '2021-12-20 15:36:17', 3);
INSERT INTO `order` VALUES (7, 64.00, 5, 2, 1, '李四', '18579577609', '西海太子大厦二层', '2021-12-20 16:21:55', 3);
INSERT INTO `order` VALUES (8, 108.00, 4, 2, 3, '李四', '18579577609', '西海太子大厦二层', '2021-12-20 16:51:48', 3);
INSERT INTO `order` VALUES (9, 163.00, 2, 2, 2, '崔亚允', '15101185711', '河南省郑州市高新区莲花街11号纽科科技园1号楼B座216', '2021-12-21 09:06:22', 2);
INSERT INTO `order` VALUES (10, 14.00, 1, 2, 3, '崔亚允', '15101185711', '河南省郑州市高新区莲花街11号纽科科技园1号楼B座216', '2021-12-21 09:06:43', 2);
INSERT INTO `order` VALUES (11, 79.00, 4, 4, 2, '田七', '17777777788', '浙江省杭州市西湖区左岸公社11层1107室', '2021-12-24 16:57:35', 6);

-- ----------------------------
-- Table structure for top
-- ----------------------------
DROP TABLE IF EXISTS `top`;
CREATE TABLE `top`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '\"榜单id\"',
  `type` int(2) NULL DEFAULT 0 COMMENT '\"榜单类型(1今日推荐/2热销/3新品)\"',
  `good_id` int(10) NULL DEFAULT NULL COMMENT '\"商品id\"',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 196 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首页推荐商品' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of top
-- ----------------------------
INSERT INTO `top` VALUES (50, 2, 41);
INSERT INTO `top` VALUES (51, 2, 38);
INSERT INTO `top` VALUES (52, 2, 49);
INSERT INTO `top` VALUES (53, 2, 47);
INSERT INTO `top` VALUES (54, 2, 17);
INSERT INTO `top` VALUES (55, 2, 21);
INSERT INTO `top` VALUES (56, 3, 20);
INSERT INTO `top` VALUES (57, 3, 19);
INSERT INTO `top` VALUES (58, 3, 33);
INSERT INTO `top` VALUES (59, 3, 30);
INSERT INTO `top` VALUES (61, 3, 46);
INSERT INTO `top` VALUES (63, 3, 48);
INSERT INTO `top` VALUES (65, 2, 51);
INSERT INTO `top` VALUES (66, 2, 18);
INSERT INTO `top` VALUES (67, 2, 25);
INSERT INTO `top` VALUES (184, 3, 56);
INSERT INTO `top` VALUES (187, 2, 19);
INSERT INTO `top` VALUES (189, 2, 15);
INSERT INTO `top` VALUES (191, 1, 15);
INSERT INTO `top` VALUES (192, 1, 18);
INSERT INTO `top` VALUES (193, 1, 16);
INSERT INTO `top` VALUES (195, 3, 16);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '\"分类id\"',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"分类的名称，例如：零食饮料\"',
  `status` int(2) NULL DEFAULT 1 COMMENT '\"分类的状态，1表示正常，0表示删除\"',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '食品饮料', 1);
INSERT INTO `type` VALUES (2, '粮油副食', 1);
INSERT INTO `type` VALUES (3, '美容洗护', 1);
INSERT INTO `type` VALUES (4, '家庭清洁', 1);
INSERT INTO `type` VALUES (5, '进口食品', 1);
INSERT INTO `type` VALUES (6, '水果生鲜', 1);
INSERT INTO `type` VALUES (7, '膨化食品', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '\"用户id\"',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"用户名\"',
  `password` char(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"用户密码，加密后的密码\"',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"用户的真实姓名，可以作为默认收货人\"',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"用户手机号，可以作为默认收货人手机号\"',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '\"用户住址，可以作为默认收货地址\"',
  `status` int(2) NULL DEFAULT 1 COMMENT '\"用户状态，1表示正常，0表示删除\"',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', 'VbkbA/vOpMyFF03AX62B8A==', '哈哈', '15512342345', '浙江省杭州市西湖区左岸大厦1107室', 1);
INSERT INTO `user` VALUES (2, 'cui', 'HAMVRZRssPCADKqGjGWJtQ==', '崔亚允', '15101185711', '河南省郑州市高新区莲花街11号纽科科技园1号楼B座216', 1);
INSERT INTO `user` VALUES (3, 'lisi', 'HAMVRZRssPCADKqGjGWJtQ==', '李四', '18579577609', '西海太子大厦二层', 1);
INSERT INTO `user` VALUES (4, 'wangwu', 'VbkbA/vOpMyFF03AX62B8A==', '王八', '13623728888', '北京市海淀区中关村11号海龙大厦1608室', 1);
INSERT INTO `user` VALUES (5, 'zhaoliu', 'HAMVRZRssPCADKqGjGWJtQ==', '赵六流', '17838394321', '西海太子大厦二层', 1);
INSERT INTO `user` VALUES (6, 'tianqi', 'CK2bJgsivIO/Q5AC0FM3OA==', '田七', '17777777788', '浙江省杭州市西湖区左岸公社11层1107室', 1);

SET FOREIGN_KEY_CHECKS = 1;
