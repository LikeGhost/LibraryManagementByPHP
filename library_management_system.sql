/*
 Navicat Premium Data Transfer

 Source Server         : xp
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : library_management_system

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 28/01/2022 02:41:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `clc_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `publish_id` int(11) NULL DEFAULT NULL,
  `publish_at` datetime NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (18, '9787208169944', 100, '我从哪里来', '[德] 萨沙·斯坦尼西奇', 4, '2022-01-10 00:00:00', 28.00, '山内的自杀引发媒体哗然，1991年，28岁的导演是枝裕和，因执导《可是……抛弃福祉的时代》纪录片拜访了山内的遗孀，借此走进这位官员53年的人生轨迹。过程中，是枝被山内丰德这个人物深深吸引。跟随着山内夫人的证言和山内留下的大量信件、诗歌、随笔、论文等，一个理想主义者的悲剧侧面渐渐浮现出来。', '2', NULL, '2022-01-10 11:40:39', NULL);
INSERT INTO `book` VALUES (61, '9787533966102', 34, '生死疲劳', '莫言', 4, '2022-01-01 00:00:00', 69.90, '不看不知道，欲哭又想笑。活着不容易，幽默无价宝。——莫言\n\n五十年间西门闹经历六次转世，\n\n一世为驴，二世为牛，三世为猪，四世为狗，五世为猴，最终降生为人。\n\n在这六世里，他目睹蓝脸一家三代经历人生的生死疲劳，\n\n他们爱就爱到底，恨就恨到底，犟就犟到底，干就干到底，\n\n有极致的痛苦，也有彻底的放纵。', '4', NULL, '2022-01-10 14:35:37', NULL);
INSERT INTO `book` VALUES (62, '9787532179374', 56, '重走', '杨潇', 3, '2022-01-12 00:00:00', 95.00, '青年作家杨潇以徒步为主，历时40余天，重走西南联大西迁路，在公路、河流和驿道上寻找联大往事，还原80年前一群年轻人“在路上”的故事，回到传奇的起点，看它如何在战乱中点滴成形。', '0', NULL, '2022-01-11 16:22:50', NULL);
INSERT INTO `book` VALUES (63, '9787201172002', 24, '微尘', '陈年喜', 6, '2021-05-01 00:00:00', 58.00, '这本书收录了陈年喜21篇非虚构故事集。\n\n书中写了一群平凡而朴素的劳动者的故事。\n\n他们是爆破工、运石工、乡村木匠、农夫、农妇、小作坊老板……\n\n而作家自己的故事，贯穿始终：在地下五千米开山炸石，在烟尘和轰鸣中养家糊口，在工棚和山野中写下诗篇，记录命运的爆裂和寂静。\n\n他们虽历经生活的磨砺，却淳朴而硬扎，沉静地诉说关于亲情、爱情、死亡、欲望的生活主题……\n\n这是一本生命的书，也是死亡的书，归根到底，是一本生活的书。', '3', NULL, '2022-01-10 14:35:35', NULL);
INSERT INTO `book` VALUES (64, '9787532179251', 53, '全球真实故事集', '吴琦', 5, '2021-12-08 00:00:00', 54.00, '这些故事来自洪都拉斯、波兰、刚果、塞内加尔、南非、古巴、英国、日本等12个国家和地区，涉及移民、养老、种族、性别等当下性、全球性的议题。由专业写作者深入现场调查，挖掘复杂事件的前因后果，呈现现实世界的光明与灰暗，直击全球社会的矛盾与不公——在真实故事里，世界是不平的。', '2', NULL, '2022-01-10 14:35:31', NULL);
INSERT INTO `book` VALUES (65, '9787559827999', 64, '声誉', '唐诺', 4, '2022-01-12 00:00:00', 23.00, '人们在本雅明死后多年才一拥而来的那些赞誉和崇拜，要是能够分一点到他生前，本雅明就不必如此狼狈一生，也不用四十几岁就绝望自杀于法西边界的比利牛斯山区。当然，能救援他的不直接是声誉，而是声誉带来的可换得的东西：一些钱，或一本护照。诸如此类的故事还能想到许多，比方梵高，还有爱伦·坡。', '0', NULL, '2022-01-11 16:24:33', NULL);
INSERT INTO `book` VALUES (66, '9787542673053', 25, '梁庄十年', '梁鸿', 3, '2022-01-10 00:00:00', 52.00, '从失去声音的农村女性到返乡的打工者\n\n梁鸿蕞新非虚构作品\n\n展现急速变化时代下中国村庄的变迁', '0', NULL, NULL, NULL);
INSERT INTO `book` VALUES (67, '9787542669964', 74, '夜晚的潜水艇', '陈春成', 6, '2020-09-01 00:00:00', 52.00, '《夜晚的潜水艇》 是陈春成的首部小说集。九个故事，游走于旧山河与未知宇宙间，以瑰奇飘扬的想象、温厚清幽的笔法，在现实与幻境间辟开秘密的通道：海底漫游的少年、深山遗落的古碑、弥散入万物的字句、云彩修剪站、铸剑与酿酒、铁幕下的萨克斯、蓝鲸内的演奏厅…… 关于藏匿与寻找、追捕与逃遁，种种无常中的一点确凿，烈日与深渊间的一小片清凉。陈春成的小说世界，是可供藏身的洞窟，悬浮于纸上的宫殿，航向往昔的潜艇。', '4', NULL, '2022-01-10 14:35:28', NULL);
INSERT INTO `book` VALUES (68, '9787559640666', 34, '秋园', '杨本芬', 5, '2020-06-01 00:00:00', 38.00, '听八旬奶奶讲述她和妈妈的故事。\n\n1914年，世上有了“秋园”这个人。1918年，汉语有了“她”这个字。秋园，她来过，挣扎过，绝望过，幸福过。今天，她80岁的女儿，把普普通通的她，讲给世界听。\n\n“我写了一位普通中国女性一生的故事，写了我们一家人如何像水中的浮木般挣扎求生，写了中南腹地那些乡间人物的生生死死。我知道自己写出的故事如同一滴水，最终将汇入人类历史的长河。”', '0', NULL, NULL, NULL);
INSERT INTO `book` VALUES (69, '9787521714289', 23, '煤气灯效应', '[美] 罗宾·斯特恩', 4, '2020-01-01 00:00:00', 34.80, '你努力改变自己，希望成为好伴侣、好员工、好儿女，却始终无法获得肯定。也许这不是因为你还不够好，而是你无意识地被操控了……你对自己的看法往往来自周围人的评价？你是否总在向父母、伴侣和领导道歉？你的父母数落你的穿着、工作、朋友还有交往对象，你却反思也许他们的意见都是对的？你很难做出简单的决定，并且经常自我怀疑？如果你也符合以上的情形，小心！你很可能已经被“煤气灯操纵”了！', '0', NULL, NULL, NULL);
INSERT INTO `book` VALUES (70, '9787569942514', 57, '工作', '[美] 埃伦·拉佩尔·谢尔', 5, '2021-01-01 00:00:00', 54.00, '在本书中，作者埃伦·拉佩尔·谢尔从历史、社会、经济、心理、教育等多个角度揭示现代“工作”困境的形成。她令人信服地表明，技术创新、全球竞争和体制改革等一系列力量，正在日益削弱许多人寻找展现个人价值的工作的能力；她同时认为，对制度创新的集体想象力和能力，最终将证明人们能够应对挑战，为工作创造出光明的未来。', '0', NULL, NULL, NULL);
INSERT INTO `book` VALUES (71, '9787020162338', 86, '柔软的距离', '邓安庆', 6, '2021-04-01 00:00:00', 25.00, '本书是作家邓安庆的短篇随笔集。书中多描写社会底层的众多人物，从北漂族、打工仔、女工、个体小老板，到修路工、保安、讨债人……他们纷纷被裹挟进变革的洪流，在细碎的生活中品尝着悲喜人生。', '0', NULL, '2022-01-10 09:02:30', NULL);
INSERT INTO `book` VALUES (72, '9787020042494', 100, '小王子', '[法国] 安东尼·德·圣-埃克苏佩里', 3, '2003-08-01 00:00:00', 22.00, '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行星，开始了遨游太空的旅行。他先后访问了六个行星，各种见闻使他陷入忧伤，他感到大人们荒唐可笑、太不正常。只有在其中一个点灯人的星球上，小王子才找到一个可以作为朋友的人。但点灯人的天地又十分狭小，除了点灯人他自己，不能容下第二个人。在地理学家的指点下，孤单的小王子来到人类居住的地球。', '4', NULL, '2022-01-10 16:56:09', NULL);
INSERT INTO `book` VALUES (73, '9787020002207', 34, '红楼梦', '  [清] 曹雪芹 著 - 高鹗 续', 4, '1996-12-01 00:00:00', 59.70, '《红楼梦》是一部百科全书式的长篇小说。以宝黛爱情悲剧为主线，以四大家族的荣辱兴衰为背景，描绘出18世纪中国封建社会的方方面面，以及封建专制下新兴资本主义民主思想的萌动。结构宏大、情节委婉、细节精致，人物形象栩栩如生，声口毕现，堪称中国古代小说中的经 典。', '0', NULL, NULL, NULL);
INSERT INTO `book` VALUES (74, '9787506365437', 67, '活着', '余华', 5, '2012-08-01 00:00:00', 20.00, '《活着(新版)》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵前去求药，却在途中被国民党抓去当壮丁。经过几番波折回到家里，才知道母亲早已去世，妻子家珍含辛茹苦地养大两个儿女。此后更加悲惨的命运一次又一次降临到福贵身上，他的妻子、儿女和孙子相继死去，最后只剩福贵和一头老牛相依为命，但老人依旧活着，仿佛比往日更加洒脱与坚强。', '0', NULL, '2022-01-10 16:57:14', NULL);
INSERT INTO `book` VALUES (75, '9787544253994', 37, '百年孤独', '[哥伦比亚] 加西亚·马尔克斯', 6, '2011-06-01 00:00:00', 39.50, '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪最重要的经典文学巨著之一。1982年加西亚•马尔克斯获得诺贝尔文学奖，奠定世界级文学大师的地位，很大程度上乃是凭借《百年孤独》的巨大影响。', '0', NULL, '2022-01-10 16:57:01', NULL);
INSERT INTO `book` VALUES (76, '9787530210291', 53, '1984', '[英] 乔治·奥威尔', 3, '2010-04-01 00:00:00', 28.00, '《1984》是一部杰出的政治寓言小说，也是一部幻想小说。作品刻画了人类在极权主义社会的生存状态，有若一个永不褪色的警示标签，警醒世人提防这种预想中的黑暗成为现实。历经几十年，其生命力益显强大，被誉为20世纪影响最为深远的文学经典之一。', '0', NULL, '2022-01-10 16:56:35', NULL);
INSERT INTO `book` VALUES (77, '9787806570920', 27, '飘', '[美国] 玛格丽特·米切尔', 4, '2000-09-01 00:00:00', 40.00, '小说中的故事发生在1861年美国南北战争前夕。生活在南方的少女郝思嘉从小深受南方文化传统的熏陶，可在她的血液里却流淌着野性的叛逆因素。随着战火的蔓廷和生活环境的恶化，郝思嘉的叛逆个性越来越丰满，越鲜明，在一系列的的挫折中她改造了自我，改变了个人甚至整个家族的命运，成为时代时势造就的新女性的形象。', '0', NULL, '2022-01-10 16:55:17', NULL);
INSERT INTO `book` VALUES (78, '9787229042066', 14, '三体全集', '刘慈欣', 5, '2012-01-01 00:00:00', 168.00, '三体三部曲 (《三体》《三体Ⅱ·黑暗森林》《三体Ⅲ·死神永生》) ，原名“地球往事三部曲”，是中国著名科幻作家刘慈欣的首个长篇系列，由科幻世界杂志社策划制作，重庆出版集团出版。小说讲述了文革期间一次偶然的星际通讯引发的三体世界对地球的入侵以及之后人类文明与三体文明三百多年的恩怨情仇。三体三部曲出版后十分畅销，并深受读者和主流媒体好评，被普遍认为是中国科幻文学的里程碑之作，为中国科幻确立了一个新高度。', '0', NULL, '2022-01-10 16:54:28', NULL);
INSERT INTO `book` VALUES (79, '9787544242516', 78, '白夜行', '[日本] 东野圭吾', 6, '2008-09-01 00:00:00', 29.80, '“只希望能手牵手在太阳下散步”，这个象征故事内核的绝望念想，有如一个美丽的幌子，随着无数凌乱、压抑、悲凉的故事片段像纪录片一样一一还原：没有痴痴相思，没有海枯石烂，只剩下一个冰冷绝望的诡计，最后一丝温情也被完全抛弃，万千读者在一曲救赎罪恶的凄苦爱情中悲切动容……', '0', NULL, '2022-01-10 16:54:14', NULL);
INSERT INTO `book` VALUES (80, '9787806398791', 54, '撒哈拉的故事', '三毛', 3, '2003-08-01 00:00:00', 15.80, '三毛作品中最脍炙人口的《撒哈拉的故事》，由12篇精彩动人的散文结合而成，其中《沙漠中的饭店》，是三毛适应荒凉单调的沙漠生活后，重新拾笔的第一篇文字，自此之后，三毛便写出一系列以沙漠为背景的故事，倾倒了全世界的中文读者', '0', NULL, '2022-01-10 16:49:58', NULL);
INSERT INTO `book` VALUES (81, '9787559614636', 33, '房思琪的初恋乐园', '林奕含', 4, '2022-01-12 00:00:00', 43.00, '令人心碎却无能为力的真实故事。\n\n向死而生的文学绝唱 打动万千读者的年度华语小说。\n\n李银河 戴锦华 骆以军 张悦然 冯唐 詹宏志 蒋方舟 史航 等多位学者作家社会名人郑重推荐。\n\n痛苦的际遇是如此难以分享，好险这个世界还有文学。', '1', NULL, '2022-01-11 16:22:35', NULL);
INSERT INTO `book` VALUES (82, '9787020049295', 25, '平凡的世界（全三部）', '路遥', 5, '2022-01-12 00:00:00', 65.00, '《平凡的世界》是一部现实主义小说，也是一部小说形式的家族史。作者浓缩了中国西北农村的历史变迁过程，在小说中全景式地表现了中国当代城乡的社会生活。在近十年的广阔背景下，通过复杂的矛盾纠葛，刻划社会各阶层众多普通人的形象。劳动与爱情，挫折与追求，痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。', '0', NULL, '2022-01-11 16:24:42', NULL);

-- ----------------------------
-- Table structure for book_status
-- ----------------------------
DROP TABLE IF EXISTS `book_status`;
CREATE TABLE `book_status`  (
  `id` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_status
-- ----------------------------
INSERT INTO `book_status` VALUES (1, '可借阅');
INSERT INTO `book_status` VALUES (2, '已借出');

-- ----------------------------
-- Table structure for clc
-- ----------------------------
DROP TABLE IF EXISTS `clc`;
CREATE TABLE `clc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clc
-- ----------------------------
INSERT INTO `clc` VALUES (1, '马克思、列宁、毛泽东、邓小平理论', 'A');
INSERT INTO `clc` VALUES (2, '马克思、恩格斯著作', 'A1');
INSERT INTO `clc` VALUES (3, '列宁著作', 'A2');
INSERT INTO `clc` VALUES (4, '斯大林著作', 'A3');
INSERT INTO `clc` VALUES (5, '毛泽东著作', 'A4');
INSERT INTO `clc` VALUES (6, '邓小平著作', 'A49');
INSERT INTO `clc` VALUES (7, '马克思、恩格斯、列宁、斯大林、毛泽东、邓小平著作汇编', 'A5');
INSERT INTO `clc` VALUES (8, '马克思、恩格斯、列宁、斯大林、毛泽东、邓小平生平和传记', 'A7');
INSERT INTO `clc` VALUES (9, '马克思主义、列宁主义、毛泽东思想、邓小平理论的学习和研究', 'A8');
INSERT INTO `clc` VALUES (10, '哲学、宗教', 'B');
INSERT INTO `clc` VALUES (11, '哲学理论', 'B0');
INSERT INTO `clc` VALUES (12, '世界哲学', 'B1');
INSERT INTO `clc` VALUES (13, '中国哲学', 'B2');
INSERT INTO `clc` VALUES (14, '亚洲哲学', 'B3');
INSERT INTO `clc` VALUES (15, '非洲哲学', 'B4');
INSERT INTO `clc` VALUES (16, '欧洲哲学', 'B5');
INSERT INTO `clc` VALUES (17, '大洋州哲学', 'B6');
INSERT INTO `clc` VALUES (18, '美洲哲学', 'B7');
INSERT INTO `clc` VALUES (19, '思维科学', 'B80');
INSERT INTO `clc` VALUES (20, '逻辑学（论理学）', 'B81');
INSERT INTO `clc` VALUES (21, '伦理学（道德哲学）', 'B82');
INSERT INTO `clc` VALUES (22, '美学', 'B83');
INSERT INTO `clc` VALUES (23, '心理学', 'B84');
INSERT INTO `clc` VALUES (24, '宗教', 'B9');
INSERT INTO `clc` VALUES (25, '社会科学总论', 'C');
INSERT INTO `clc` VALUES (26, '社会科学理论与方法论', 'C0');
INSERT INTO `clc` VALUES (27, '社会科学概况、现状、进展', 'C1');
INSERT INTO `clc` VALUES (28, '社会科学机构、团体、会议', 'C2');
INSERT INTO `clc` VALUES (29, '社会科学研究方法', 'C3');
INSERT INTO `clc` VALUES (30, '社会科学教育与普及', 'C4');
INSERT INTO `clc` VALUES (31, '社会科学丛书、文集、连续性出版物', 'C5');
INSERT INTO `clc` VALUES (32, '社会科学参考工具书', 'C6');
INSERT INTO `clc` VALUES (33, '社会科学文献检索工具书', 'C7');
INSERT INTO `clc` VALUES (34, '非书资料、视听资料', 'C79');
INSERT INTO `clc` VALUES (35, '统计学', 'C8');
INSERT INTO `clc` VALUES (36, '社会学', 'C91');
INSERT INTO `clc` VALUES (37, '人口学', 'C92');
INSERT INTO `clc` VALUES (38, '管理学', 'C93');
INSERT INTO `clc` VALUES (39, '系统科学', 'C94');
INSERT INTO `clc` VALUES (40, '民族学、文化人类学', 'C95');
INSERT INTO `clc` VALUES (41, '人才学', 'C96');
INSERT INTO `clc` VALUES (42, '劳动科学', 'C97');
INSERT INTO `clc` VALUES (43, '政治、法律', 'D');
INSERT INTO `clc` VALUES (44, '政治学、政治理论', 'D0');
INSERT INTO `clc` VALUES (45, '国际共产主义运动', 'D1');
INSERT INTO `clc` VALUES (46, '中国共产党', 'D2');
INSERT INTO `clc` VALUES (47, '各国共产党', 'D33/37');
INSERT INTO `clc` VALUES (48, '工人、农民、青年、妇女运动与组织', 'D4');
INSERT INTO `clc` VALUES (49, '世界政治', 'D5');
INSERT INTO `clc` VALUES (50, '中国政治', 'D6');
INSERT INTO `clc` VALUES (51, '各国政治', 'D73/77');
INSERT INTO `clc` VALUES (52, '外交、国际关系', 'D8');
INSERT INTO `clc` VALUES (53, '法律', 'D9');
INSERT INTO `clc` VALUES (54, '军事', 'E');
INSERT INTO `clc` VALUES (55, '军事理论', 'E0');
INSERT INTO `clc` VALUES (56, '世界军事', 'E1');
INSERT INTO `clc` VALUES (57, '中国军事', 'E2');
INSERT INTO `clc` VALUES (58, '各国军事', 'E3/7');
INSERT INTO `clc` VALUES (59, '战略学、战役学、战术学', 'E8');
INSERT INTO `clc` VALUES (60, '军事技术', 'E9');
INSERT INTO `clc` VALUES (61, '军事地形学、军事地理学', 'E99');
INSERT INTO `clc` VALUES (62, '经济', 'F');
INSERT INTO `clc` VALUES (63, '经济学', 'F0');
INSERT INTO `clc` VALUES (64, '世界各国经济概况、经济史、经济地理', 'F1');
INSERT INTO `clc` VALUES (65, '经济管理', 'F2');
INSERT INTO `clc` VALUES (66, '农业经济', 'F3');
INSERT INTO `clc` VALUES (67, '工业经济', 'F4');
INSERT INTO `clc` VALUES (68, '信息产业经济', 'F49');
INSERT INTO `clc` VALUES (69, '交通运输经济', 'F5');
INSERT INTO `clc` VALUES (70, '旅游经济', 'F59');
INSERT INTO `clc` VALUES (71, '邮电通信经济', 'F6');
INSERT INTO `clc` VALUES (72, '贸易经济', 'F7');
INSERT INTO `clc` VALUES (73, '财政、金融', 'F8');
INSERT INTO `clc` VALUES (74, '文化、科学、教育、体育', 'G');
INSERT INTO `clc` VALUES (75, '文化理论', 'G0');
INSERT INTO `clc` VALUES (76, '世界各国文化与文化事业', 'G1');
INSERT INTO `clc` VALUES (77, '信息与知识传播', 'G2');
INSERT INTO `clc` VALUES (78, '科学、科学研究', 'G3');
INSERT INTO `clc` VALUES (79, '教育', 'G4');
INSERT INTO `clc` VALUES (80, '体育', 'G8');
INSERT INTO `clc` VALUES (81, '语言、文字', 'H');
INSERT INTO `clc` VALUES (82, '语言学', 'H0');
INSERT INTO `clc` VALUES (83, '汉语', 'H1');
INSERT INTO `clc` VALUES (84, '中国少数民族语言', 'H2');
INSERT INTO `clc` VALUES (85, '常用外国语', 'H3');
INSERT INTO `clc` VALUES (86, '汉藏语系', 'H4');
INSERT INTO `clc` VALUES (87, '阿尔泰语系(突厥-蒙古-通古斯语系）', 'H5');
INSERT INTO `clc` VALUES (88, '南亚语系（澳斯特罗-亚细亚语系）', 'H61');
INSERT INTO `clc` VALUES (89, '南印语系（达罗毗荼语系、德拉维达语系）', 'H62');
INSERT INTO `clc` VALUES (90, '南岛语系（马来亚-玻里尼西亚语系）', 'H63');
INSERT INTO `clc` VALUES (91, '东北亚诸语言', 'H64');
INSERT INTO `clc` VALUES (92, '高加索语系（伊比利亚-高加索语系）', 'H65');
INSERT INTO `clc` VALUES (93, '乌拉尔语系（芬兰-乌戈尔语系）', 'H66');
INSERT INTO `clc` VALUES (94, '闪-含语系（阿非罗-亚细亚语系）', 'H67');
INSERT INTO `clc` VALUES (95, '印欧语系', 'H7');
INSERT INTO `clc` VALUES (96, '非洲诸语言', 'H81');
INSERT INTO `clc` VALUES (97, '美洲诸语言', 'H83');
INSERT INTO `clc` VALUES (98, '大洋州诸语言', 'H84');
INSERT INTO `clc` VALUES (99, '国际辅助语', 'H9');
INSERT INTO `clc` VALUES (100, '文学', 'I');
INSERT INTO `clc` VALUES (101, '文学理论', 'I0');
INSERT INTO `clc` VALUES (102, '世界文学', 'I1');
INSERT INTO `clc` VALUES (103, '中国文学', 'I2');
INSERT INTO `clc` VALUES (104, '各国文学', 'I3/7');
INSERT INTO `clc` VALUES (105, '艺术', 'J');
INSERT INTO `clc` VALUES (106, '艺术理论', 'J0');
INSERT INTO `clc` VALUES (107, '世界各国艺术概况', 'J1');
INSERT INTO `clc` VALUES (108, '专题艺术与现代边缘艺术', 'J19');
INSERT INTO `clc` VALUES (109, '绘画', 'J2');
INSERT INTO `clc` VALUES (110, '书法、篆刻', 'J29');
INSERT INTO `clc` VALUES (111, '雕塑', 'J3');
INSERT INTO `clc` VALUES (112, '摄影艺术', 'J4');
INSERT INTO `clc` VALUES (113, '工艺美术', 'J5');
INSERT INTO `clc` VALUES (114, '建筑艺术', 'J59');
INSERT INTO `clc` VALUES (115, '音乐', 'J6');
INSERT INTO `clc` VALUES (116, '舞蹈', 'J7');
INSERT INTO `clc` VALUES (117, '戏剧、曲艺、杂技艺术', 'J8');
INSERT INTO `clc` VALUES (118, '电影、电视艺术', 'J9');
INSERT INTO `clc` VALUES (119, '历史、地理', 'K');
INSERT INTO `clc` VALUES (120, '史学理论', 'K0');
INSERT INTO `clc` VALUES (121, '世界史', 'K1');
INSERT INTO `clc` VALUES (122, '中国史', 'K2');
INSERT INTO `clc` VALUES (123, '亚洲史', 'K3');
INSERT INTO `clc` VALUES (124, '非洲史', 'K4');
INSERT INTO `clc` VALUES (125, '欧洲史', 'K5');
INSERT INTO `clc` VALUES (126, '大洋州史', 'K6');
INSERT INTO `clc` VALUES (127, '美洲史', 'K7');
INSERT INTO `clc` VALUES (128, '传记', 'K81');
INSERT INTO `clc` VALUES (129, '文物考古', 'K85');
INSERT INTO `clc` VALUES (130, '风俗习惯', 'K89');
INSERT INTO `clc` VALUES (131, '自然科学总论', 'N');
INSERT INTO `clc` VALUES (132, '自然科学理论与方法论', 'N0');
INSERT INTO `clc` VALUES (133, '自然科学概况、现状、进展', 'N1');
INSERT INTO `clc` VALUES (134, '自然科学机构、团体、会议', 'N2');
INSERT INTO `clc` VALUES (135, '自然科学研究方法', 'N3');
INSERT INTO `clc` VALUES (136, '自然科学教育与普及', 'N4');
INSERT INTO `clc` VALUES (137, '自然科学丛书、文集、连续性出版物', 'N5');
INSERT INTO `clc` VALUES (138, '自然科学参考工具书', 'N6');
INSERT INTO `clc` VALUES (139, '自然科学文献检索工具', 'N7');
INSERT INTO `clc` VALUES (140, '非书资料、视听资料', 'N79');
INSERT INTO `clc` VALUES (141, '自然科学调查、考察', 'N8');
INSERT INTO `clc` VALUES (142, '自然研究、自然历史', 'N91');
INSERT INTO `clc` VALUES (143, '非线性科学', 'N93');
INSERT INTO `clc` VALUES (144, '系统科学', 'N94');
INSERT INTO `clc` VALUES (145, '情报学、情报工作', 'N99');
INSERT INTO `clc` VALUES (146, '数理科学和化学', 'O ');
INSERT INTO `clc` VALUES (147, '数学', 'O1');
INSERT INTO `clc` VALUES (148, '力学', 'O3');
INSERT INTO `clc` VALUES (149, '物理学', 'O4');
INSERT INTO `clc` VALUES (150, '化学', 'O6');
INSERT INTO `clc` VALUES (151, '晶体学', 'O7');
INSERT INTO `clc` VALUES (152, '天文学、地球科学', 'P');
INSERT INTO `clc` VALUES (153, '天文学', 'P1');
INSERT INTO `clc` VALUES (154, '测绘学', 'P2');
INSERT INTO `clc` VALUES (155, '地球物理学', 'P3');
INSERT INTO `clc` VALUES (156, '大气科学（气象学）', 'P4');
INSERT INTO `clc` VALUES (157, '地质学', 'P5');
INSERT INTO `clc` VALUES (158, '海洋学', 'P7');
INSERT INTO `clc` VALUES (159, '自然地理学', 'P9');
INSERT INTO `clc` VALUES (160, '生物科学', 'Q ');
INSERT INTO `clc` VALUES (161, '普通生物学', 'Q1');
INSERT INTO `clc` VALUES (162, '细胞生物学', 'Q2');
INSERT INTO `clc` VALUES (163, '遗传学', 'Q3');
INSERT INTO `clc` VALUES (164, '生理学', 'Q4');
INSERT INTO `clc` VALUES (165, '生物化学', 'Q5');
INSERT INTO `clc` VALUES (166, '生物物理学', 'Q6');
INSERT INTO `clc` VALUES (167, '分子生物学', 'Q7');
INSERT INTO `clc` VALUES (168, '生物工程学（生物技术）', 'Q81');
INSERT INTO `clc` VALUES (169, '环境生物学', 'Q89');
INSERT INTO `clc` VALUES (170, '古生物学', 'Q91');
INSERT INTO `clc` VALUES (171, '微生物学', 'Q93');
INSERT INTO `clc` VALUES (172, '植物学', 'Q94');
INSERT INTO `clc` VALUES (173, '动物学', 'Q95');
INSERT INTO `clc` VALUES (174, '昆虫学', 'Q96');
INSERT INTO `clc` VALUES (175, '人类学', 'Q98');
INSERT INTO `clc` VALUES (176, '医药、卫生', 'R');
INSERT INTO `clc` VALUES (177, '预防医学、卫生学', 'R1');
INSERT INTO `clc` VALUES (178, '中国医学', 'R2');
INSERT INTO `clc` VALUES (179, '基础医学', 'R3');
INSERT INTO `clc` VALUES (180, '临床医学', 'R4');
INSERT INTO `clc` VALUES (181, '内科学', 'R5');
INSERT INTO `clc` VALUES (182, '外科学', 'R6');
INSERT INTO `clc` VALUES (183, '妇产科学', 'R71');
INSERT INTO `clc` VALUES (184, '儿科学', 'R72');
INSERT INTO `clc` VALUES (185, '肿瘤学', 'R73');
INSERT INTO `clc` VALUES (186, '神经病学与精神病学', 'R74');
INSERT INTO `clc` VALUES (187, '皮肤病学与性病学', 'R75');
INSERT INTO `clc` VALUES (188, '耳鼻咽喉科学', 'R76');
INSERT INTO `clc` VALUES (189, '眼科学', 'R77');
INSERT INTO `clc` VALUES (190, '口腔科学', 'R78');
INSERT INTO `clc` VALUES (191, '外国民族医学', 'R79');
INSERT INTO `clc` VALUES (192, '特种医学', 'R8');
INSERT INTO `clc` VALUES (193, '药学', 'R9');
INSERT INTO `clc` VALUES (194, '农业科学', 'S');
INSERT INTO `clc` VALUES (195, '农业基础科学', 'S1');
INSERT INTO `clc` VALUES (196, '农业工程', 'S2');
INSERT INTO `clc` VALUES (197, '农学（农艺学）', 'S3');
INSERT INTO `clc` VALUES (198, '植物保护', 'S4');
INSERT INTO `clc` VALUES (199, '农作物', 'S5');
INSERT INTO `clc` VALUES (200, '园艺', 'S6');
INSERT INTO `clc` VALUES (201, '林业', 'S7');
INSERT INTO `clc` VALUES (202, '畜牧、 动物医学、狩猎、蚕、蜂', 'S8');
INSERT INTO `clc` VALUES (203, '水产、渔业', 'S9');
INSERT INTO `clc` VALUES (204, '工业技术', 'T');
INSERT INTO `clc` VALUES (205, '一般工业技术', 'TB');
INSERT INTO `clc` VALUES (206, '矿业工程', 'TD');
INSERT INTO `clc` VALUES (207, '石油、天然气工业', 'TE');
INSERT INTO `clc` VALUES (208, '冶金工业', 'TF');
INSERT INTO `clc` VALUES (209, '金属学与金属工艺', 'TG');
INSERT INTO `clc` VALUES (210, '机械、仪表工业', 'TH');
INSERT INTO `clc` VALUES (211, '武器工业', 'TJ');
INSERT INTO `clc` VALUES (212, '能源与动力工程', 'TK');
INSERT INTO `clc` VALUES (213, '原子能技术', 'TL');
INSERT INTO `clc` VALUES (214, '电工技术', 'TM');
INSERT INTO `clc` VALUES (215, '电子技术、通信技术', 'TN');
INSERT INTO `clc` VALUES (216, '自动化技术、计算机技术', 'TP');
INSERT INTO `clc` VALUES (217, '化学工业', 'TQ');
INSERT INTO `clc` VALUES (218, '轻工业、手工业、生活服务业', 'TS');
INSERT INTO `clc` VALUES (219, '建筑科学', 'TU');
INSERT INTO `clc` VALUES (220, '水利工程', 'TV');
INSERT INTO `clc` VALUES (221, '交通运输', 'U');
INSERT INTO `clc` VALUES (222, '综合运输', 'U1');
INSERT INTO `clc` VALUES (223, '铁路运输', 'U2');
INSERT INTO `clc` VALUES (224, '公路运输', 'U4');
INSERT INTO `clc` VALUES (225, '水路运输', 'U6');
INSERT INTO `clc` VALUES (226, '航空运输', 'U8');
INSERT INTO `clc` VALUES (227, '航空、航天', 'V');
INSERT INTO `clc` VALUES (228, '航空、航天技术的研究与探索', 'V1');
INSERT INTO `clc` VALUES (229, '航空', 'V2');
INSERT INTO `clc` VALUES (230, '航天（宇宙航行）', 'V4');
INSERT INTO `clc` VALUES (231, '航空、航天医学', 'V7');
INSERT INTO `clc` VALUES (232, '环境科学、安全科学', 'X');
INSERT INTO `clc` VALUES (233, '环境科学基础理论', 'X1');
INSERT INTO `clc` VALUES (234, '社会与环境', 'X2');
INSERT INTO `clc` VALUES (235, '环境保护管理', 'X3');
INSERT INTO `clc` VALUES (236, '灾害及其防治', 'X4');
INSERT INTO `clc` VALUES (237, '环境污染及其防治', 'X5');
INSERT INTO `clc` VALUES (238, '行业污染、废物处理与综合利用', 'X7');
INSERT INTO `clc` VALUES (239, '环境质量评价与环境监测', 'X8');
INSERT INTO `clc` VALUES (240, '安全科学', 'X9');
INSERT INTO `clc` VALUES (241, '综合性图书', 'Z');
INSERT INTO `clc` VALUES (242, '丛书', 'Z1');
INSERT INTO `clc` VALUES (243, '百科全书、类书', 'Z2');
INSERT INTO `clc` VALUES (244, '辞典', 'Z3');
INSERT INTO `clc` VALUES (245, '论文集、全集、选集、杂著', 'Z4');
INSERT INTO `clc` VALUES (246, '年鉴、年刊', 'Z5');
INSERT INTO `clc` VALUES (247, '期刊、连续性出版物', 'Z6');
INSERT INTO `clc` VALUES (248, '图书报刊目录、文摘、索引', 'Z8');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for fine
-- ----------------------------
DROP TABLE IF EXISTS `fine`;
CREATE TABLE `fine`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record_id` int(11) NULL DEFAULT NULL,
  `money` decimal(10, 2) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fine
-- ----------------------------
INSERT INTO `fine` VALUES (1, 18, 1.00, '2022-01-12 08:41:18', '2022-01-12 09:36:04');
INSERT INTO `fine` VALUES (2, 22, 0.00, '2022-01-12 17:28:24', '2022-01-12 21:25:17');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `id` int(11) NOT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (1, '软件1911');
INSERT INTO `grade` VALUES (2, '软件1912');
INSERT INTO `grade` VALUES (3, '软件1913');

-- ----------------------------
-- Table structure for library
-- ----------------------------
DROP TABLE IF EXISTS `library`;
CREATE TABLE `library`  (
  `id` int(11) NOT NULL,
  `library_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of library
-- ----------------------------
INSERT INTO `library` VALUES (1, '嘉庚图书馆');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 'admin');
INSERT INTO `permission` VALUES (2, 'normal');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for publish
-- ----------------------------
DROP TABLE IF EXISTS `publish`;
CREATE TABLE `publish`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of publish
-- ----------------------------
INSERT INTO `publish` VALUES (1, '湖南科学技术出版社', '湖南');
INSERT INTO `publish` VALUES (2, '中华书局', '北京');
INSERT INTO `publish` VALUES (3, '上海人民出版社', '上海');
INSERT INTO `publish` VALUES (4, '北京联合出版公司', '北京');
INSERT INTO `publish` VALUES (5, '北京十月文艺出版社', '北京');
INSERT INTO `publish` VALUES (6, '北京时代华文书局', '北京');
INSERT INTO `publish` VALUES (7, '广西师范大学出版社', '广西');
INSERT INTO `publish` VALUES (8, '哈尔滨出版社', '哈尔滨');
INSERT INTO `publish` VALUES (9, '南海出版公司', '南海');
INSERT INTO `publish` VALUES (10, '人民文学出版社', '北京');
INSERT INTO `publish` VALUES (11, '上海三联书店', '上海');
INSERT INTO `publish` VALUES (12, '上海文艺出版社', '上海');
INSERT INTO `publish` VALUES (13, '天津人民出版社', '天津');
INSERT INTO `publish` VALUES (14, '译林出版社', '江苏');
INSERT INTO `publish` VALUES (15, '浙江文艺出版社', '浙江');
INSERT INTO `publish` VALUES (16, '中信出版社', '北京');
INSERT INTO `publish` VALUES (17, '重庆出版社', '重庆');
INSERT INTO `publish` VALUES (18, '作家出版社', '北京');

-- ----------------------------
-- Table structure for real_book
-- ----------------------------
DROP TABLE IF EXISTS `real_book`;
CREATE TABLE `real_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NULL DEFAULT NULL,
  `book_status_id` int(11) NULL DEFAULT NULL,
  `put_time` datetime NULL DEFAULT NULL,
  `library_id` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of real_book
-- ----------------------------
INSERT INTO `real_book` VALUES (1, 18, 1, '2022-01-10 11:32:43', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (2, 18, 1, '2022-01-10 11:40:01', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (6, 67, 1, '2022-01-10 14:35:28', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (7, 67, 1, '2022-01-10 14:35:28', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (8, 67, 1, '2022-01-10 14:35:28', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (9, 67, 1, '2022-01-10 14:35:28', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (10, 64, 1, '2022-01-10 14:35:31', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (11, 64, 1, '2022-01-10 14:35:31', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (12, 63, 1, '2022-01-10 14:35:35', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (13, 63, 1, '2022-01-10 14:35:35', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (14, 63, 1, '2022-01-10 14:35:35', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (15, 61, 1, '2022-01-10 14:35:37', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (16, 61, 1, '2022-01-10 14:35:37', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (17, 61, 1, '2022-01-10 14:35:37', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (18, 61, 2, '2022-01-10 14:35:37', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (19, 72, 1, '2022-01-10 14:35:42', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (20, 72, 1, '2022-01-10 14:35:42', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (21, 72, 1, '2022-01-10 14:35:42', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (22, 72, 1, '2022-01-10 14:35:42', 1, NULL, NULL);
INSERT INTO `real_book` VALUES (23, 72, 1, '2022-01-10 14:35:42', 1, NULL, '2022-01-10 16:56:09');
INSERT INTO `real_book` VALUES (24, 81, 1, '2022-01-10 15:59:09', 1, NULL, NULL);

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `real_book_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `borrow_at` datetime NULL DEFAULT NULL,
  `return_at` datetime NULL DEFAULT NULL,
  `record_status_id` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (16, 2, 2, '2022-01-12 08:08:54', '2022-01-12 09:36:51', 3, '2022-01-12 09:36:51', '2022-01-12 08:08:54', NULL);
INSERT INTO `record` VALUES (17, 18, 2, '2022-01-12 08:08:58', '2022-01-12 09:36:50', 3, '2022-01-12 09:36:50', '2022-01-12 08:08:58', NULL);
INSERT INTO `record` VALUES (18, 20, 2, '2022-01-12 08:09:05', '2022-01-12 09:36:07', 3, '2022-01-12 09:36:07', '2022-01-12 08:09:05', NULL);
INSERT INTO `record` VALUES (19, 24, 20, '2022-01-12 11:07:33', '2022-01-12 11:07:38', 3, '2022-01-12 11:07:38', '2022-01-12 11:07:33', NULL);
INSERT INTO `record` VALUES (20, 9, 2, '2022-01-12 16:37:19', '2022-01-12 16:41:57', 3, '2022-01-12 16:41:57', '2022-01-12 16:37:19', NULL);
INSERT INTO `record` VALUES (21, 18, 2, '2022-01-12 16:42:42', '2022-01-12 17:07:02', 3, '2022-01-12 17:07:02', '2022-01-12 16:42:42', NULL);
INSERT INTO `record` VALUES (22, 18, 2, '2022-01-12 17:07:19', '2022-01-20 00:00:00', 1, '2022-01-12 17:30:11', '2022-01-12 17:07:19', NULL);

-- ----------------------------
-- Table structure for record_status
-- ----------------------------
DROP TABLE IF EXISTS `record_status`;
CREATE TABLE `record_status`  (
  `id` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_status
-- ----------------------------
INSERT INTO `record_status` VALUES (1, '正在借阅');
INSERT INTO `record_status` VALUES (2, '超期');
INSERT INTO `record_status` VALUES (3, '已结束');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '管理员');
INSERT INTO `role` VALUES (2, '学生');
INSERT INTO `role` VALUES (3, '教师');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `permission_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 1, 1);
INSERT INTO `role_permission` VALUES (2, 2, 2);
INSERT INTO `role_permission` VALUES (3, 3, 2);

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (1, 1, 1);
INSERT INTO `role_user` VALUES (2, 2, 2);
INSERT INTO `role_user` VALUES (3, 3, 3);
INSERT INTO `role_user` VALUES (7, 2, 20);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `grade_id` int(11) NULL DEFAULT NULL,
  `student_title_id` int(11) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 2, 'ha', 1, 3, NULL, '2022-01-12 10:36:24', NULL);
INSERT INTO `student` VALUES (3, 3, 'asdas', 2, 2, NULL, '2022-01-11 16:11:25', '2022-01-11 16:11:25');
INSERT INTO `student` VALUES (5, 20, '游嘉升', 2, 2, NULL, '2022-01-12 11:16:27', '2022-01-12 11:16:27');

-- ----------------------------
-- Table structure for student_title
-- ----------------------------
DROP TABLE IF EXISTS `student_title`;
CREATE TABLE `student_title`  (
  `id` int(11) NOT NULL,
  `student_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_title
-- ----------------------------
INSERT INTO `student_title` VALUES (1, '高职生');
INSERT INTO `student_title` VALUES (2, '本科生');
INSERT INTO `student_title` VALUES (3, '硕士研究生');
INSERT INTO `student_title` VALUES (4, '博士研究生');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `teacher_title_id` int(11) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, 3, 'asdas', 2, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES (3, 2, 'hahah', 3, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for teacher_title
-- ----------------------------
DROP TABLE IF EXISTS `teacher_title`;
CREATE TABLE `teacher_title`  (
  `id` int(11) NOT NULL,
  `teacher_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_title
-- ----------------------------
INSERT INTO `teacher_title` VALUES (1, '讲师');
INSERT INTO `teacher_title` VALUES (2, '副教授');
INSERT INTO `teacher_title` VALUES (3, '教授');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '1', '115408365@qq.com', NULL, '$2y$10$s87jHAwU/R2hnjDhLiHG8efIQb5nbmGoZ0kXHR.y0JyPAGR7sMqAm', NULL, '2022-01-08 08:30:58', '2022-01-08 08:30:58', NULL);
INSERT INTO `users` VALUES (2, '2', 'student@qq.com', NULL, '$2y$10$s87jHAwU/R2hnjDhLiHG8efIQb5nbmGoZ0kXHR.y0JyPAGR7sMqAm', NULL, '2022-01-11 14:44:59', '2022-01-11 14:45:02', NULL);
INSERT INTO `users` VALUES (3, '3', 'teacher@qq.com', NULL, '$2y$10$s87jHAwU/R2hnjDhLiHG8efIQb5nbmGoZ0kXHR.y0JyPAGR7sMqAm', NULL, '2022-01-11 18:01:09', '2022-01-11 18:01:12', NULL);
INSERT INTO `users` VALUES (20, 'JasonYoo', '1154083659@qq.com', NULL, '$2y$10$PPuUQS2EJxW.euumD7WupOpUzKvHMf55knkUtBS2AtFp04k9BW2OC', NULL, '2022-01-12 11:06:58', '2022-01-12 11:28:21', NULL);

SET FOREIGN_KEY_CHECKS = 1;
