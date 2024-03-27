

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `fill_time` datetime(6) NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question_id` int(11) NULL DEFAULT NULL,
  `question_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `write_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`answer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 214 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (209, '2021-10-10 10:33:52.882000', '113.104.201.120', 282000, '你的姓名', 'single_line_text', '11');
INSERT INTO `answer` VALUES (210, '2021-10-10 10:33:52.887000', '113.104.201.120', 282001, '你的性别', 'single_check', '11');
INSERT INTO `answer` VALUES (211, '2021-10-10 10:33:52.889000', '113.104.201.120', 282002, '是什么？', 'single_line_text', '11');
INSERT INTO `answer` VALUES (212, '2021-10-10 10:33:52.890000', '113.104.201.120', 282003, 'test', 'single_line_text', '1');
INSERT INTO `answer` VALUES (213, '2021-10-10 10:33:52.890000', '113.104.201.120', 282004, 'test？', 'multi_line_text', '1');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `question_id` int(11) NOT NULL,
  `details` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `question_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `question_nullable` bit(1) NULL DEFAULT NULL,
  `question_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `questionnaire_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (282000, '{\"questionOptions\":[\"\"],\"frontOptions\":[[]],\"frontChoose\":false,\"numberType\":\"integer\",\"defaultNumber\":0,\"gradeMax\":5,\"date\":\"2021-10-10T10:29:51.024Z\",\"textDescription\":\"\"}', '', b'0', '你的姓名', 'single_line_text', 282);
INSERT INTO `question` VALUES (282001, '{\"questionOptions\":[\"男\",\"女\",\"第三性别\"],\"frontOptions\":[[]],\"frontChoose\":false,\"numberType\":\"integer\",\"defaultNumber\":0,\"gradeMax\":5,\"date\":\"2021-10-10T10:30:16.376Z\",\"textDescription\":\"\"}', '', b'0', '你的性别', 'single_check', 282);
INSERT INTO `question` VALUES (282002, '{\"questionOptions\":[\"\"],\"frontOptions\":[[]],\"frontChoose\":false,\"numberType\":\"integer\",\"defaultNumber\":0,\"gradeMax\":5,\"date\":\"2021-10-10T10:30:45.409Z\",\"textDescription\":\"\"}', '', b'0', '11', 'single_line_text', 282);
INSERT INTO `question` VALUES (282003, '{\"questionOptions\":[\"\"],\"frontOptions\":[[]],\"frontChoose\":false,\"numberType\":\"integer\",\"defaultNumber\":0,\"gradeMax\":5,\"date\":\"2021-10-10T10:31:06.216Z\",\"textDescription\":\"\"}', '', b'0', '11', 'single_line_text', 282);
INSERT INTO `question` VALUES (282004, '{\"questionOptions\":[\"\"],\"frontOptions\":[[]],\"frontChoose\":false,\"numberType\":\"integer\",\"defaultNumber\":0,\"gradeMax\":5,\"date\":\"2021-10-10T10:31:35.560Z\",\"textDescription\":\"\"}', '', b'0', '11', 'multi_line_text', 282);

-- ----------------------------
-- Table structure for questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire`  (
  `questionnaire_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `end_time` datetime(6) NULL DEFAULT NULL,
  `fill_count` int(11) NULL DEFAULT NULL,
  `start_time` datetime(6) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`questionnaire_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 286 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questionnaire
-- ----------------------------
INSERT INTO `questionnaire` VALUES (282, '2021-10-10 10:29:18.895000', '？', NULL, 1, NULL, 'collecting', '11', '11');
INSERT INTO `questionnaire` VALUES (283, '2021-11-13 08:47:51.779000', '请输入描述', NULL, NULL, NULL, 'editing', '请输入标题', 'user');
INSERT INTO `questionnaire` VALUES (284, '2021-11-13 08:48:00.964000', '请输入描述', NULL, NULL, NULL, 'editing', '请输入标题', 'user');
INSERT INTO `questionnaire` VALUES (285, '2021-11-13 08:50:16.685000', '请输入描述', NULL, NULL, NULL, 'editing', '请输入标题', '11');

-- ----------------------------
-- Table structure for questionnaire_ip
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_ip`;
CREATE TABLE `questionnaire_ip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `questionnaire_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questionnaire_ip
-- ----------------------------
INSERT INTO `questionnaire_ip` VALUES (67, '113.104.201.120', 282);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login_time` datetime(6) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_num` int(11) NULL DEFAULT NULL,
  `random_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `UK_sb8bbouer5wak8vyiiy4pf2bx`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '2020-07-03 23:06:33.118000', NULL, NULL, '$2a$10$mMgG82u0/kIUIUMRWTyT5OGXNyYXgmm3.PGBlgHKqNrltIQRjid9K', NULL, NULL, NULL, 'user');
INSERT INTO `user` VALUES (2, '2020-07-03 23:21:45.562000', NULL, NULL, '$2a$10$LgFhJ.UYNFOR6bUoETOM2ORzSQPsAYYw.jz.dyNMve1ZoghM1/wn.', NULL, NULL, NULL, 'test');
INSERT INTO `user` VALUES (3, '2020-07-03 23:34:40.926000', NULL, NULL, '$2a$10$0U6.Kbj0I6y1FuCOqqkWyO7YSp/agyM8D6.XxXkpHWg4mVzIsbpkm', NULL, NULL, NULL, 'test1');
INSERT INTO `user` VALUES (4, '2020-10-12 22:35:13.742000', NULL, NULL, '$2a$10$6c5/Y0sgo8VlZ3fevFJbCONhOI9x5644DMXlZnoPQhIKcAFmj7qOG', NULL, NULL, NULL, '123');
INSERT INTO `user` VALUES (5, '2020-12-19 04:44:56.169000', NULL, NULL, '$2a$10$RkjeThW7Fns3UgnC0Gn0IulYCwbbTO3hoqpPMAVizqj0d2ISqzrWe', NULL, NULL, NULL, '123456');
INSERT INTO `user` VALUES (6, NULL, NULL, NULL, '$2a$10$5FOBHXyue8imJ1NTBz/TruRUzKwz76/dG4cfANn/24B6KJqfG3shy', NULL, NULL, NULL, '123123');
INSERT INTO `user` VALUES (7, NULL, NULL, NULL, '$2a$10$7B.WmemaBryFi2V0FegB4OouEJXLs1Fw8/8JBmyW.AR5XYKrVRePi', NULL, NULL, NULL, 'john');
INSERT INTO `user` VALUES (8, '2021-01-18 00:37:42.233000', NULL, NULL, '$2a$10$2PPTa.iT9r6pSh211eGqSu5NeD0CFuFO0QgH4u6shsqWjCebfb4r6', NULL, NULL, NULL, 'rashomon');
INSERT INTO `user` VALUES (9, '2021-01-24 08:58:31.283000', NULL, NULL, '$2a$10$G3JkQPnIrIkx8/Krz3JDPOmHDLiybodnMAyNOKB0npuNMeGBdEKSC', NULL, NULL, NULL, 'jjj');
INSERT INTO `user` VALUES (10, '2021-02-27 19:29:33.790000', NULL, NULL, '$2a$10$mhjwNs5laEEpjVgcI4XBq.wd13n0FCsFyYEPew3uingdBz/ICc1ka', NULL, NULL, NULL, 'cyy2021');
INSERT INTO `user` VALUES (11, '2021-10-10 10:27:15.964000', NULL, NULL, '$2a$10$qmDNOuwNYwIYpmnScoFSNOOsozUqGKN0rV2Ipz.du5iIvYy6ivtne', NULL, NULL, NULL, 'echo');
INSERT INTO `user` VALUES (12, '2021-10-10 10:28:05.676000', NULL, NULL, '$2a$10$E/FJEyTcVukMlcZyloUpf.avfv8.XIE/CbYyJSWM1ffg5QQlniO.m', NULL, NULL, NULL, '11');

SET FOREIGN_KEY_CHECKS = 1;
