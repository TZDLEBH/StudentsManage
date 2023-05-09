/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50067
 Source Host           : localhost:3306
 Source Schema         : student

 Target Server Type    : MySQL
 Target Server Version : 50067
 File Encoding         : 65001

 Date: 13/05/2020 23:55:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `majorid` int(11) NOT NULL AUTO_INCREMENT,
  `majorname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`majorid`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, 'javaee');
INSERT INTO `major` VALUES (2, 'html5');
INSERT INTO `major` VALUES (3, 'android');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentno` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` double NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES (1, 's001', 100);
INSERT INTO `result` VALUES (2, 's002', 90);
INSERT INTO `result` VALUES (3, 's003', 80);
INSERT INTO `result` VALUES (4, 's004', 70);
INSERT INTO `result` VALUES (5, 's005', 60);
INSERT INTO `result` VALUES (6, 's006', 50);
INSERT INTO `result` VALUES (7, 's006', 40);
INSERT INTO `result` VALUES (8, 's005', 95);
INSERT INTO `result` VALUES (9, 's006', 88);

-- ----------------------------
-- Table structure for s_admin
-- ----------------------------
DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createDate` datetime NOT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_admin
-- ----------------------------
INSERT INTO `s_admin` VALUES (1, 'admin', 'admin', '2018-03-17 14:24:09');

-- ----------------------------
-- Table structure for s_attendance
-- ----------------------------
DROP TABLE IF EXISTS `s_attendance`;
CREATE TABLE `s_attendance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `attendance_date` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `student_attendance_foreign` USING BTREE(`student_id`),
  INDEX `course_attendance_foreign` USING BTREE(`course_id`),
  CONSTRAINT `course_attendance_foreign` FOREIGN KEY (`course_id`) REFERENCES `s_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_attendance_foreign` FOREIGN KEY (`student_id`) REFERENCES `s_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB; (`course_id`) REFER `student/s_course`(`id`); (`student_id' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_attendance
-- ----------------------------
INSERT INTO `s_attendance` VALUES (1, 1, 1, '2018-05-17');
INSERT INTO `s_attendance` VALUES (2, 1, 1, '2018-04-17');
INSERT INTO `s_attendance` VALUES (3, 1, 4, '2018-04-17');
INSERT INTO `s_attendance` VALUES (4, 1, 3, '2018-04-17');
INSERT INTO `s_attendance` VALUES (5, 1, 1, '2018-04-18');
INSERT INTO `s_attendance` VALUES (6, 1, 4, '2018-04-18');
INSERT INTO `s_attendance` VALUES (7, 1, 3, '2018-04-18');
INSERT INTO `s_attendance` VALUES (8, 4, 1, '2018-04-19');
INSERT INTO `s_attendance` VALUES (9, 4, 2, '2018-04-19');
INSERT INTO `s_attendance` VALUES (10, 4, 6, '2018-04-19');
INSERT INTO `s_attendance` VALUES (11, 4, 4, '2018-04-19');
INSERT INTO `s_attendance` VALUES (12, 3, 1, '2018-04-19');
INSERT INTO `s_attendance` VALUES (15, 3, 4, '2018-04-19');
INSERT INTO `s_attendance` VALUES (16, 1, 1, '2018-04-19');
INSERT INTO `s_attendance` VALUES (17, 1, 4, '2018-04-19');
INSERT INTO `s_attendance` VALUES (18, 1, 3, '2018-04-19');
INSERT INTO `s_attendance` VALUES (19, 1, 2, '2018-04-19');
INSERT INTO `s_attendance` VALUES (20, 3, 6, '2018-04-19');
INSERT INTO `s_attendance` VALUES (21, 3, 5, '2018-04-19');
INSERT INTO `s_attendance` VALUES (22, 1, 1, '2018-04-20');
INSERT INTO `s_attendance` VALUES (24, 1, 3, '2018-04-20');
INSERT INTO `s_attendance` VALUES (25, 1, 2, '2018-04-21');
INSERT INTO `s_attendance` VALUES (27, 1, 1, '2018-05-03');
INSERT INTO `s_attendance` VALUES (28, 1, 1, '2020-04-14');
INSERT INTO `s_attendance` VALUES (29, 1, 8, '2020-04-14');
INSERT INTO `s_attendance` VALUES (30, 1, 9, '2020-04-14');

-- ----------------------------
-- Table structure for s_class
-- ----------------------------
DROP TABLE IF EXISTS `s_class`;
CREATE TABLE `s_class`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_class
-- ----------------------------
INSERT INTO `s_class` VALUES (2, '软件一班', '这是软件一班。');
INSERT INTO `s_class` VALUES (6, '的撒旦', '的撒旦');
INSERT INTO `s_class` VALUES (7, '奋斗的公司的', '');
INSERT INTO `s_class` VALUES (9, '大撒333', '');
INSERT INTO `s_class` VALUES (10, 'aaa', 'aaa');
INSERT INTO `s_class` VALUES (11, '1', '1');
INSERT INTO `s_class` VALUES (12, 'abc', 'abc');
INSERT INTO `s_class` VALUES (13, '2222', '2222');
INSERT INTO `s_class` VALUES (14, 'bbb', 'bbb');

-- ----------------------------
-- Table structure for s_course
-- ----------------------------
DROP TABLE IF EXISTS `s_course`;
CREATE TABLE `s_course`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int(5) NOT NULL,
  `max_student_num` int(3) NOT NULL,
  `info` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `selected_num` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `teacher_foreign` USING BTREE(`teacher_id`),
  CONSTRAINT `teacher_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `s_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB; (`teacher_id`) REFER `student/s_teacher`(`id`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_course
-- ----------------------------
INSERT INTO `s_course` VALUES (1, '大学数学', 3, 50, '数学课程', 3);
INSERT INTO `s_course` VALUES (2, '大学英语', 4, 45, '大英3', 3);
INSERT INTO `s_course` VALUES (3, '原子弹原理技术', 5, 66, '制造原子弹技术，很牛逼！', 1);
INSERT INTO `s_course` VALUES (4, '软件工程', 3, 66, '666', 3);
INSERT INTO `s_course` VALUES (5, '计算机原理', 4, 45, '计算机组成原理，非常重要。', 2);
INSERT INTO `s_course` VALUES (6, '人工智能', 5, 2, '人工智能课程。', 2);
INSERT INTO `s_course` VALUES (7, 'abc', 3, 2, 'abc', 1);
INSERT INTO `s_course` VALUES (8, '2221', 3, 2, '22', 1);
INSERT INTO `s_course` VALUES (9, 'bbb', 3, 2, '', 1);

-- ----------------------------
-- Table structure for s_score
-- ----------------------------
DROP TABLE IF EXISTS `s_score`;
CREATE TABLE `s_score`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `student_id` int(5) NOT NULL,
  `course_id` int(5) NOT NULL,
  `score` int(3) NOT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `student_score_foreign` USING BTREE(`student_id`),
  INDEX `course_id_score_foreign` USING BTREE(`course_id`),
  CONSTRAINT `course_id_score_foreign` FOREIGN KEY (`course_id`) REFERENCES `s_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_score_foreign` FOREIGN KEY (`student_id`) REFERENCES `s_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB; (`course_id`) REFER `student/s_course`(`id`); (`student_id' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_score
-- ----------------------------
INSERT INTO `s_score` VALUES (1, 1, 1, 78);
INSERT INTO `s_score` VALUES (2, 1, 4, 87);
INSERT INTO `s_score` VALUES (4, 1, 2, 78);
INSERT INTO `s_score` VALUES (5, 1, 3, 98);
INSERT INTO `s_score` VALUES (6, 1, 5, 78);
INSERT INTO `s_score` VALUES (7, 3, 6, 89);
INSERT INTO `s_score` VALUES (8, 3, 1, 68);
INSERT INTO `s_score` VALUES (9, 4, 1, 87);
INSERT INTO `s_score` VALUES (10, 3, 2, 78);
INSERT INTO `s_score` VALUES (11, 4, 2, 56);
INSERT INTO `s_score` VALUES (12, 3, 4, 56);
INSERT INTO `s_score` VALUES (13, 4, 4, 77);
INSERT INTO `s_score` VALUES (14, 3, 5, 67);
INSERT INTO `s_score` VALUES (15, 4, 6, 68);
INSERT INTO `s_score` VALUES (16, 1, 7, 20);
INSERT INTO `s_score` VALUES (17, 1, 8, 22);
INSERT INTO `s_score` VALUES (18, 1, 9, 11);

-- ----------------------------
-- Table structure for s_selected_course
-- ----------------------------
DROP TABLE IF EXISTS `s_selected_course`;
CREATE TABLE `s_selected_course`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `student_id` int(5) NULL DEFAULT NULL,
  `course_id` int(5) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `student_foreign` USING BTREE(`student_id`),
  INDEX `course_foreign` USING BTREE(`course_id`),
  CONSTRAINT `course_foreign` FOREIGN KEY (`course_id`) REFERENCES `s_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_foreign` FOREIGN KEY (`student_id`) REFERENCES `s_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB; (`course_id`) REFER `student/s_course`(`id`); (`student_id' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_selected_course
-- ----------------------------
INSERT INTO `s_selected_course` VALUES (12, 1, 1);
INSERT INTO `s_selected_course` VALUES (13, 1, 4);
INSERT INTO `s_selected_course` VALUES (14, 1, 3);
INSERT INTO `s_selected_course` VALUES (15, 3, 1);
INSERT INTO `s_selected_course` VALUES (16, 3, 6);
INSERT INTO `s_selected_course` VALUES (17, 3, 5);
INSERT INTO `s_selected_course` VALUES (18, 3, 2);
INSERT INTO `s_selected_course` VALUES (19, 4, 1);
INSERT INTO `s_selected_course` VALUES (20, 4, 2);
INSERT INTO `s_selected_course` VALUES (21, 1, 2);
INSERT INTO `s_selected_course` VALUES (22, 3, 4);
INSERT INTO `s_selected_course` VALUES (23, 4, 6);
INSERT INTO `s_selected_course` VALUES (24, 4, 4);
INSERT INTO `s_selected_course` VALUES (25, 1, 5);
INSERT INTO `s_selected_course` VALUES (28, 1, 7);
INSERT INTO `s_selected_course` VALUES (29, 1, 8);
INSERT INTO `s_selected_course` VALUES (30, 1, 9);

-- ----------------------------
-- Table structure for s_student
-- ----------------------------
DROP TABLE IF EXISTS `s_student`;
CREATE TABLE `s_student`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classId` int(5) NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `class_foreign` USING BTREE(`classId`),
  CONSTRAINT `class_foreign` FOREIGN KEY (`classId`) REFERENCES `s_class` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 9216 kB; (`classId`) REFER `student/s_class`(`id`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_student
-- ----------------------------
INSERT INTO `s_student` VALUES (1, '张三1', 2, '1', '女');
INSERT INTO `s_student` VALUES (3, '李四', 6, '11', '女');
INSERT INTO `s_student` VALUES (4, '王麻子', 7, '1', '保密');
INSERT INTO `s_student` VALUES (5, '111', 2, '111', '男');
INSERT INTO `s_student` VALUES (6, '1', 2, '1', '男');
INSERT INTO `s_student` VALUES (7, 'test', 2, '111', '男');
INSERT INTO `s_student` VALUES (8, '2221', 2, '222', '男');
INSERT INTO `s_student` VALUES (9, 'aaa', 2, 'bbb', '女');

-- ----------------------------
-- Table structure for s_teacher
-- ----------------------------
DROP TABLE IF EXISTS `s_teacher`;
CREATE TABLE `s_teacher`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(5) NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of s_teacher
-- ----------------------------
INSERT INTO `s_teacher` VALUES (3, '张三', '男', '教授', 36, '1');
INSERT INTO `s_teacher` VALUES (4, '李四', '男', '博导', 58, '222');
INSERT INTO `s_teacher` VALUES (5, '王麻子', '男', '讲师', 28, '000000');
INSERT INTO `s_teacher` VALUES (6, 'aaa', '男', 'aa', 11, '11');
INSERT INTO `s_teacher` VALUES (7, 'abc', '男', 'abc', 11, '111');
INSERT INTO `s_teacher` VALUES (8, '2222', '男', '22', 22, '2222');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `studentno` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `studentname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loginpwd` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `majorid` int(11) NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `borndate` datetime NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`studentno`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('S001', '张三封', '8888', '男', 1, '13288886666', 'zhangsanfeng@126.com', '1966-09-01 00:00:00');
INSERT INTO `student` VALUES ('S002', '殷天正', '8888', '男', 1, '13888881234', 'yintianzheng@qq.com', '1976-09-02 00:00:00');
INSERT INTO `student` VALUES ('S003', '周伯通', '8888', '男', 2, '13288886666', 'zhoubotong@126.com', '1986-09-03 00:00:00');
INSERT INTO `student` VALUES ('S004', '张翠山', '8888', '男', 1, '13288886666', NULL, '1995-09-04 00:00:00');
INSERT INTO `student` VALUES ('S005', '小小张', '8888', '女', 3, '13288885678', 'xiaozhang@126.com', '1990-09-05 00:00:00');
INSERT INTO `student` VALUES ('S006', '张无忌', '8888', '男', 2, '13288886666', 'zhangwuji@126.com', '1998-08-09 00:00:00');
INSERT INTO `student` VALUES ('S007', '赵敏', '0000', '女', 1, '13288880987', 'zhaomin@126.com', '1998-06-09 00:00:00');
INSERT INTO `student` VALUES ('S008', '周芷若', '6666', '女', 1, '13288883456', 'zhouzhiruo@126.com', '1996-07-09 00:00:00');
INSERT INTO `student` VALUES ('S009', '殷素素', '8888', '女', 1, '13288886666', 'yinsusu@163.com', '1986-01-09 00:00:00');
INSERT INTO `student` VALUES ('S010', '宋远桥', '6666', '男', 3, '1328888890', 'songyuanqiao@qq.com', '1996-02-09 00:00:00');
INSERT INTO `student` VALUES ('S011', '杨不悔', '6666', '女', 2, '13288882345', NULL, '1995-09-09 00:00:00');
INSERT INTO `student` VALUES ('S012', '杨逍', '9999', '男', 1, '13288885432', NULL, '1976-09-09 00:00:00');
INSERT INTO `student` VALUES ('S013', '纪晓芙', '9999', '女', 3, '13288888765', NULL, '1976-09-09 00:00:00');
INSERT INTO `student` VALUES ('S014', '谢逊', '9999', '男', 1, '13288882211', NULL, '1946-09-09 00:00:00');
INSERT INTO `student` VALUES ('S015', '宋青书', '9999', '男', 3, '13288889900', NULL, '1976-06-08 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
