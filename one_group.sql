/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 127.0.0.1:3306
 Source Schema         : one_group

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 13/12/2023 16:18:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_alarm
-- ----------------------------
DROP TABLE IF EXISTS `sys_alarm`;
CREATE TABLE `sys_alarm`  (
  `alarm_id` int NULL DEFAULT NULL,
  `alarm_time` date NULL DEFAULT NULL,
  `alarm_equipment` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `alarm_data` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `alarm_current` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `alarm_content` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `alarm_man` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `alarm_pstatus` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_alarm
-- ----------------------------
INSERT INTO `sys_alarm` VALUES (1, '2023-11-01', '传感器01', NULL, NULL, NULL, 'user-01', 1);
INSERT INTO `sys_alarm` VALUES (2, '2023-11-02', '传感器02', NULL, NULL, NULL, 'user-02', 0);
INSERT INTO `sys_alarm` VALUES (3, '2023-11-02', '传感器02', NULL, NULL, NULL, 'user-03', 0);
INSERT INTO `sys_alarm` VALUES (4, '2023-11-04', '传感器02', NULL, NULL, NULL, 'user-04', 0);
INSERT INTO `sys_alarm` VALUES (5, '2023-11-07', '传感器01', NULL, NULL, NULL, 'user-04', 1);
INSERT INTO `sys_alarm` VALUES (6, '2023-11-06', '传感器03', NULL, NULL, NULL, 'user-05', 1);
INSERT INTO `sys_alarm` VALUES (7, '2023-11-07', '传感器05', NULL, NULL, NULL, 'user-05', 1);
INSERT INTO `sys_alarm` VALUES (8, '2023-11-13', '传感器05', NULL, NULL, NULL, 'user-06', 0);
INSERT INTO `sys_alarm` VALUES (9, '2023-11-13', '传感器06', NULL, NULL, NULL, 'user-06', 1);
INSERT INTO `sys_alarm` VALUES (10, '2023-11-15', '传感器08', NULL, NULL, NULL, 'user-06', 0);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '部门名称',
  `parent_id` bigint NOT NULL DEFAULT 0 COMMENT '父节点id',
  `tree_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '父节点id路径',
  `sort` int NULL DEFAULT 0 COMMENT '显示顺序',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态(1:正常;0:禁用)',
  `deleted` tinyint NULL DEFAULT 0 COMMENT '逻辑删除标识(1:已删除;0:未删除)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint NULL DEFAULT NULL COMMENT '创建人ID',
  `update_by` bigint NULL DEFAULT NULL COMMENT '修改人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '工业互联网第一组', 0, '0', 1, 1, 0, NULL, '2023-12-13 15:41:17', 1, 1);
INSERT INTO `sys_dept` VALUES (2, '研发部门', 1, '0,1', 1, 1, 0, NULL, '2022-04-19 12:46:37', 2, 2);
INSERT INTO `sys_dept` VALUES (3, '测试部门', 1, '0,1', 1, 1, 1, NULL, '2022-04-19 12:46:37', 2, 2);
INSERT INTO `sys_dept` VALUES (171, '测试', 0, '0', 2, 1, 0, '2023-12-13 15:37:29', '2023-12-13 15:40:47', NULL, NULL);
INSERT INTO `sys_dept` VALUES (172, '测试部门', 171, '0,171', 1, 1, 0, '2023-12-13 15:37:35', '2023-12-13 15:38:55', NULL, NULL);
INSERT INTO `sys_dept` VALUES (173, '访客', 0, '0', 3, 1, 0, '2023-12-13 15:39:26', '2023-12-13 15:41:09', NULL, NULL);
INSERT INTO `sys_dept` VALUES (174, '陌生访客', 173, '0,173', 1, 1, 0, '2023-12-13 15:39:45', '2023-12-13 15:39:45', NULL, NULL);
INSERT INTO `sys_dept` VALUES (175, '管理', 0, '0', 4, 1, 0, '2023-12-13 15:40:32', '2023-12-13 15:41:31', NULL, NULL);
INSERT INTO `sys_dept` VALUES (176, '管理部门', 175, '0,175', 1, 1, 0, '2023-12-13 15:40:42', '2023-12-13 15:40:42', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典类型编码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典项名称',
  `value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典项值',
  `sort` int NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint NULL DEFAULT 0 COMMENT '状态(1:正常;0:禁用)',
  `defaulted` tinyint NULL DEFAULT 0 COMMENT '是否默认(1:是;0:否)',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, 'gender', '男', '1', 1, 1, 0, NULL, '2019-05-05 13:07:52', '2022-06-12 23:20:39');
INSERT INTO `sys_dict` VALUES (2, 'gender', '女', '2', 2, 1, 0, NULL, '2019-04-19 11:33:00', '2019-07-02 14:23:05');
INSERT INTO `sys_dict` VALUES (3, 'gender', '未知', '0', 1, 1, 0, NULL, '2020-10-17 08:09:31', '2020-10-17 08:09:31');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '类型名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '类型编码',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态(0:正常;1:禁用)',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '性别', 'gender', 1, NULL, '2019-12-06 19:03:32', '2022-06-12 16:21:28');

-- ----------------------------
-- Table structure for sys_index
-- ----------------------------
DROP TABLE IF EXISTS `sys_index`;
CREATE TABLE `sys_index`  (
  `index_xm` int NULL DEFAULT NULL,
  `index_wcl` int NULL DEFAULT NULL,
  `index_cgq` int NULL DEFAULT NULL,
  `index_bc` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_index
-- ----------------------------
INSERT INTO `sys_index` VALUES (1368, 1425, 1645, 1355);

-- ----------------------------
-- Table structure for sys_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_item`;
CREATE TABLE `sys_item`  (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_number` int NULL DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `item_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `org_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_item
-- ----------------------------
INSERT INTO `sys_item` VALUES (1, 1001, '项目一', '南京市雨花台区', '10293827136', 1);
INSERT INTO `sys_item` VALUES (2, 1002, '项目二', '南京市玄武区', '10293842784', 1);
INSERT INTO `sys_item` VALUES (3, 1003, '项目三', '南京市栖霞区', '10293841726', 2);

-- ----------------------------
-- Table structure for sys_lishijiance
-- ----------------------------
DROP TABLE IF EXISTS `sys_lishijiance`;
CREATE TABLE `sys_lishijiance`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pipes_id` int NULL DEFAULT NULL,
  `sensor_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_lishijiance
-- ----------------------------
INSERT INTO `sys_lishijiance` VALUES (1, '传感器异常', 1, 1);
INSERT INTO `sys_lishijiance` VALUES (2, '管道异常', 1, 1);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ope_time` datetime NOT NULL,
  `ope_content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, '维尼', '添加', '2023-11-16 11:39:52', NULL, 1);
INSERT INTO `sys_log` VALUES (2, 'james', '删除', '2023-11-03 11:44:45', '执行删除操作', 0);
INSERT INTO `sys_log` VALUES (3, 'james', '删除', '2023-11-03 11:44:45', '执行删除操作', 0);
INSERT INTO `sys_log` VALUES (4, 'james', '删除', '2023-11-03 11:44:45', '执行删除操作', 0);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NOT NULL COMMENT '父菜单ID',
  `tree_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父节点ID路径',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `type` tinyint NOT NULL COMMENT '菜单类型(1:菜单 2:目录 3:外链 4:按钮)',
  `path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由路径(浏览器地址栏路径)',
  `component` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径(vue页面完整路径，省略.vue后缀)',
  `perm` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `visible` tinyint(1) NOT NULL DEFAULT 1 COMMENT '显示状态(1-显示;0-隐藏)',
  `sort` int NULL DEFAULT 0 COMMENT '排序',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单图标',
  `redirect` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '跳转路径',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `always_show` tinyint NULL DEFAULT NULL COMMENT '【目录】只有一个子路由是否始终显示(1:是 0:否)',
  `keep_alive` tinyint NULL DEFAULT NULL COMMENT '【菜单】是否开启页面缓存(1:是 0:否)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '0', '系统管理', 2, '/system', 'Layout', NULL, 1, 1, 'system', '/system/user', '2021-08-28 09:12:21', '2023-12-13 14:49:17', NULL, NULL);
INSERT INTO `sys_menu` VALUES (2, 1, '0,1', '用户管理', 1, 'user', 'system/user/index', NULL, 1, 1, 'user', NULL, '2021-08-28 09:12:21', '2021-08-28 09:12:21', NULL, 1);
INSERT INTO `sys_menu` VALUES (3, 1, '0,1', '角色管理', 1, 'role', 'system/role/index', NULL, 1, 2, 'role', NULL, '2021-08-28 09:12:21', '2021-08-28 09:12:21', NULL, 1);
INSERT INTO `sys_menu` VALUES (4, 1, '0,1', '菜单管理', 1, 'menu', 'system/menu/index', NULL, 1, 7, 'menu', NULL, '2021-08-28 09:12:21', '2023-12-13 15:43:06', NULL, 1);
INSERT INTO `sys_menu` VALUES (5, 1, '0,1', '部门管理', 1, 'dept', 'system/dept/index', NULL, 1, 4, 'tree', NULL, '2021-08-28 09:12:21', '2021-08-28 09:12:21', NULL, 1);
INSERT INTO `sys_menu` VALUES (6, 1, '0,1', '字典管理', 1, 'dict', 'system/dict/index', NULL, 0, 5, 'dict', NULL, '2021-08-28 09:12:21', '2023-12-13 14:02:30', NULL, 1);
INSERT INTO `sys_menu` VALUES (31, 2, '0,1,2', '用户新增', 4, '', NULL, 'sys:user:add', 1, 1, '', '', '2022-10-23 11:04:08', '2022-10-23 11:04:11', NULL, NULL);
INSERT INTO `sys_menu` VALUES (32, 2, '0,1,2', '用户编辑', 4, '', NULL, 'sys:user:edit', 1, 2, '', '', '2022-10-23 11:04:08', '2022-10-23 11:04:11', NULL, NULL);
INSERT INTO `sys_menu` VALUES (33, 2, '0,1,2', '用户删除', 4, '', NULL, 'sys:user:delete', 1, 3, '', '', '2022-10-23 11:04:08', '2022-10-23 11:04:11', NULL, NULL);
INSERT INTO `sys_menu` VALUES (36, 0, '0', '组件封装', 2, '/component', 'Layout', NULL, 0, 11, 'menu', '', '2022-10-31 09:18:44', '2023-12-13 14:27:11', NULL, NULL);
INSERT INTO `sys_menu` VALUES (37, 36, '0,36', '富文本编辑器', 1, 'wang-editor', 'demo/wang-editor', NULL, 1, 1, '', '', NULL, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (38, 36, '0,36', '图片上传', 1, 'upload', 'demo/upload', NULL, 1, 2, '', '', '2022-11-20 23:16:30', '2022-11-20 23:16:32', NULL, 1);
INSERT INTO `sys_menu` VALUES (39, 36, '0,36', '图标选择器', 1, 'icon-selector', 'demo/icon-selector', NULL, 1, 3, '', '', '2022-11-20 23:16:30', '2022-11-20 23:16:32', NULL, 1);
INSERT INTO `sys_menu` VALUES (70, 3, '0,1,3', '角色新增', 4, '', NULL, 'sys:role:add', 1, 1, '', NULL, '2023-05-20 23:39:09', '2023-05-20 23:39:09', NULL, NULL);
INSERT INTO `sys_menu` VALUES (71, 3, '0,1,3', '角色编辑', 4, '', NULL, 'sys:role:edit', 1, 2, '', NULL, '2023-05-20 23:40:31', '2023-05-20 23:40:31', NULL, NULL);
INSERT INTO `sys_menu` VALUES (72, 3, '0,1,3', '角色删除', 4, '', NULL, 'sys:role:delete', 1, 3, '', NULL, '2023-05-20 23:41:08', '2023-05-20 23:41:08', NULL, NULL);
INSERT INTO `sys_menu` VALUES (73, 4, '0,1,4', '菜单新增', 4, '', NULL, 'sys:menu:add', 1, 1, '', NULL, '2023-05-20 23:41:35', '2023-05-20 23:41:35', NULL, NULL);
INSERT INTO `sys_menu` VALUES (74, 4, '0,1,4', '菜单编辑', 4, '', NULL, 'sys:menu:edit', 1, 3, '', NULL, '2023-05-20 23:41:58', '2023-05-20 23:41:58', NULL, NULL);
INSERT INTO `sys_menu` VALUES (75, 4, '0,1,4', '菜单删除', 4, '', NULL, 'sys:menu:delete', 1, 3, '', NULL, '2023-05-20 23:44:18', '2023-05-20 23:44:18', NULL, NULL);
INSERT INTO `sys_menu` VALUES (76, 5, '0,1,5', '部门新增', 4, '', NULL, 'sys:dept:add', 1, 1, '', NULL, '2023-05-20 23:45:00', '2023-05-20 23:45:00', NULL, NULL);
INSERT INTO `sys_menu` VALUES (77, 5, '0,1,5', '部门编辑', 4, '', NULL, 'sys:dept:edit', 1, 2, '', NULL, '2023-05-20 23:46:16', '2023-05-20 23:46:16', NULL, NULL);
INSERT INTO `sys_menu` VALUES (78, 5, '0,1,5', '部门删除', 4, '', NULL, 'sys:dept:delete', 1, 3, '', NULL, '2023-05-20 23:46:36', '2023-05-20 23:46:36', NULL, NULL);
INSERT INTO `sys_menu` VALUES (79, 6, '0,1,6', '字典类型新增', 4, '', NULL, 'sys:dict_type:add', 1, 1, '', NULL, '2023-05-21 00:16:06', '2023-05-21 00:16:06', NULL, NULL);
INSERT INTO `sys_menu` VALUES (81, 6, '0,1,6', '字典类型编辑', 4, '', NULL, 'sys:dict_type:edit', 1, 2, '', NULL, '2023-05-21 00:27:37', '2023-05-21 00:27:37', NULL, NULL);
INSERT INTO `sys_menu` VALUES (84, 6, '0,1,6', '字典类型删除', 4, '', NULL, 'sys:dict_type:delete', 1, 3, '', NULL, '2023-05-21 00:29:39', '2023-05-21 00:29:39', NULL, NULL);
INSERT INTO `sys_menu` VALUES (85, 6, '0,1,6', '字典数据新增', 4, '', NULL, 'sys:dict:add', 1, 4, '', NULL, '2023-05-21 00:46:56', '2023-05-21 00:47:06', NULL, NULL);
INSERT INTO `sys_menu` VALUES (86, 6, '0,1,6', '字典数据编辑', 4, '', NULL, 'sys:dict:edit', 1, 5, '', NULL, '2023-05-21 00:47:36', '2023-05-21 00:47:36', NULL, NULL);
INSERT INTO `sys_menu` VALUES (87, 6, '0,1,6', '字典数据删除', 4, '', NULL, 'sys:dict:delete', 1, 6, '', NULL, '2023-05-21 00:48:10', '2023-05-21 00:48:20', NULL, NULL);
INSERT INTO `sys_menu` VALUES (88, 2, '0,1,2', '重置密码', 4, '', NULL, 'sys:user:reset_pwd', 1, 4, '', NULL, '2023-05-21 00:49:18', '2023-05-21 00:49:18', NULL, NULL);
INSERT INTO `sys_menu` VALUES (93, 36, '0,36', '签名', 1, 'signature', 'demo/signature', NULL, 1, 6, '', '', '2022-11-20 23:16:30', '2022-11-20 23:16:32', NULL, 1);
INSERT INTO `sys_menu` VALUES (94, 36, '0,36', '表格', 1, 'table', 'demo/table', NULL, 1, 7, '', '', '2022-11-20 23:16:30', '2022-11-20 23:16:32', NULL, 1);
INSERT INTO `sys_menu` VALUES (95, 36, '0,36', '字典组件', 1, 'dict-demo', 'demo/dict', NULL, 1, 4, '', '', '2022-11-20 23:16:30', '2022-11-20 23:16:32', NULL, 1);
INSERT INTO `sys_menu` VALUES (98, 0, '0', 'Table', 2, '/table', 'Layout', NULL, 0, 10, 'table', '', '2023-08-08 20:49:50', '2023-08-08 20:49:50', NULL, NULL);
INSERT INTO `sys_menu` VALUES (99, 98, '0,98', '动态Table', 1, 'dynamic-table', 'table/dynamic-table/index', NULL, 0, 1, '', '', '2023-08-08 20:54:42', '2023-08-08 20:54:42', NULL, 1);
INSERT INTO `sys_menu` VALUES (100, 98, '0,98', '拖拽Table', 1, 'drag-table', 'table/drag-table', NULL, 0, 2, '', '', '2023-08-08 20:54:42', '2023-08-08 20:54:42', NULL, 1);
INSERT INTO `sys_menu` VALUES (101, 98, '0,98', '综合Table', 1, 'complex-table', 'table/complex-table', NULL, 0, 3, '', '', '2023-08-08 20:54:42', '2023-08-08 20:54:42', NULL, 1);
INSERT INTO `sys_menu` VALUES (104, 0, '0', '资源管理', 2, '/assetmag', 'Layout', NULL, 1, 3, 'cascader', '/assetmag', '2023-12-12 16:53:35', '2023-12-13 14:36:14', NULL, 1);
INSERT INTO `sys_menu` VALUES (106, 0, '0', '模型管理', 2, '/model', 'Layout', NULL, 1, 4, 'client', '/model', '2023-12-12 16:55:01', '2023-12-13 14:32:39', NULL, NULL);
INSERT INTO `sys_menu` VALUES (107, 0, '0', '管道信息监测管理', 2, '/monitor', 'Layout', NULL, 1, 6, 'tree', '/monitor', '2023-12-12 16:56:04', '2023-12-13 14:36:40', NULL, NULL);
INSERT INTO `sys_menu` VALUES (108, 104, '0,104', '传感器管理', 1, 'Pipelinemanagement', 'assetmag/Pipelinemanagement/index', NULL, 1, 2, '', NULL, '2023-12-12 16:57:00', '2023-12-13 14:23:04', NULL, 1);
INSERT INTO `sys_menu` VALUES (109, 104, '0,104', '管道管理', 1, 'sensormanagement', 'assetmag/sensormanagement/index', NULL, 1, 1, '', NULL, '2023-12-12 16:57:44', '2023-12-13 14:22:54', NULL, 1);
INSERT INTO `sys_menu` VALUES (110, 106, '0,106', '传感器模型管理', 1, 'tunnel', 'model/tunnel/index', NULL, 1, 2, '', NULL, '2023-12-12 16:58:20', '2023-12-12 17:01:23', NULL, NULL);
INSERT INTO `sys_menu` VALUES (111, 106, '0,106', '工业管道模型管理', 1, 'sensor', 'model/sensor/index', NULL, 1, 1, '', NULL, '2023-12-12 16:58:43', '2023-12-12 16:58:43', NULL, 1);
INSERT INTO `sys_menu` VALUES (112, 107, '0,107', '历史监测信息', 1, 'Historycallog', 'monitor/Historycallog', NULL, 1, 1, '', NULL, '2023-12-12 16:59:11', '2023-12-12 16:59:11', NULL, NULL);
INSERT INTO `sys_menu` VALUES (113, 107, '0,107', '实时监测信息', 1, 'newlog', 'monitor/newlog', NULL, 1, 2, '', NULL, '2023-12-12 16:59:24', '2023-12-12 17:01:36', NULL, NULL);
INSERT INTO `sys_menu` VALUES (114, 0, '0', '报警管理', 2, '/alarm', 'Layout', NULL, 1, 5, 'security', '/alarm', '2023-12-12 16:59:49', '2023-12-13 14:36:33', NULL, NULL);
INSERT INTO `sys_menu` VALUES (115, 114, '0,114', '全部报警', 1, 'allalarm', 'alarm/allalarm/index', NULL, 1, 1, '', NULL, '2023-12-12 17:00:23', '2023-12-12 17:00:23', NULL, NULL);
INSERT INTO `sys_menu` VALUES (116, 114, '0,114', '已处理报警', 1, 'overalarm', 'alarm/overalarm/index', NULL, 1, 2, '', NULL, '2023-12-12 17:00:38', '2023-12-12 17:00:45', NULL, NULL);
INSERT INTO `sys_menu` VALUES (117, 114, '0,114', '未处理报警', 1, 'noalarm', 'alarm/noalarm/index', NULL, 1, 3, '', NULL, '2023-12-12 17:01:02', '2023-12-12 17:01:18', NULL, NULL);
INSERT INTO `sys_menu` VALUES (118, 1, '0,1', '日志管理', 1, 'log', 'system/log/index', NULL, 1, 6, 'edit', NULL, '2023-12-12 18:18:12', '2023-12-12 18:19:44', NULL, 1);
INSERT INTO `sys_menu` VALUES (119, 0, '0', '项目管理', 2, '/item', 'Layout', NULL, 1, 2, 'document', '/item', '2023-12-13 14:48:11', '2023-12-13 14:49:22', NULL, NULL);
INSERT INTO `sys_menu` VALUES (120, 119, '0,119', '项目详细', 1, 'item', 'item/index', NULL, 1, 1, '', NULL, '2023-12-13 14:48:51', '2023-12-13 14:49:08', NULL, NULL);

-- ----------------------------
-- Table structure for sys_model_pipe
-- ----------------------------
DROP TABLE IF EXISTS `sys_model_pipe`;
CREATE TABLE `sys_model_pipe`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pipeName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pipeNumber` int NOT NULL,
  `pipeType` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pipeIntroduce` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `pipePic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `pipeManual` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `pipeCreatetime` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_model_pipe
-- ----------------------------
INSERT INTO `sys_model_pipe` VALUES (1, 'zt', 12138, '单波纹管型', '', '', '', '2023-11-16 11:59:08');
INSERT INTO `sys_model_pipe` VALUES (2, 'qt', 12139, '双波纹管型', NULL, NULL, NULL, '2023-11-17 08:12:23');
INSERT INTO `sys_model_pipe` VALUES (3, 'er', 12140, '单波纹管型', NULL, NULL, NULL, '2023-11-17 08:22:43');

-- ----------------------------
-- Table structure for sys_model_sensor
-- ----------------------------
DROP TABLE IF EXISTS `sys_model_sensor`;
CREATE TABLE `sys_model_sensor`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `deviceName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `deviceType` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `deviceNumber` int NULL DEFAULT NULL,
  `createTime` datetime NULL DEFAULT NULL,
  `upInterval` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `protocol` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `dataPointName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `lowThreshold` int NULL DEFAULT NULL,
  `highThreshold` int NULL DEFAULT NULL,
  `dataPointExtra` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_model_sensor
-- ----------------------------
INSERT INTO `sys_model_sensor` VALUES (1, '温度传感器', '温度传感器', 1, '2021-12-09 00:00:00', '10', 'MQTT', '温度', 11, 19, '腐蚀');
INSERT INTO `sys_model_sensor` VALUES (2, '压力传感器', '压力传感器', 2, '2021-12-05 12:03:38', '2', 'COAP', '压力', 5, 20, '泄露');
INSERT INTO `sys_model_sensor` VALUES (3, '位移传感器', '位移传感器', 222, '2021-12-05 12:03:54', '11', 'MQTT', '压力', 5, 20, '泄露');
INSERT INTO `sys_model_sensor` VALUES (7, '压力传感器', '压力传感器', 3, '2021-12-08 09:50:08', '15', 'MQTT', '压力', 10, 50, '泄露');

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization`  (
  `org_id` int NOT NULL AUTO_INCREMENT,
  `org_dept` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `parent_org` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `org_region` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `org_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `org_status` int NOT NULL,
  PRIMARY KEY (`org_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_organization
-- ----------------------------
INSERT INTO `sys_organization` VALUES (1, '徐工汉云', '总部', '北京市', '公司', 1);
INSERT INTO `sys_organization` VALUES (2, '徐工维修', '检测部', '上海市', '集团', 1);
INSERT INTO `sys_organization` VALUES (3, '徐工信息', '维修部', '广州市', '部门', 0);

-- ----------------------------
-- Table structure for sys_pipe
-- ----------------------------
DROP TABLE IF EXISTS `sys_pipe`;
CREATE TABLE `sys_pipe`  (
  `pipe_id` int NOT NULL AUTO_INCREMENT,
  `pipe_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `pipe_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `pipe_model` int NULL DEFAULT NULL,
  `pipe_generate_time` datetime NULL DEFAULT NULL,
  `pipe_create_time` datetime NULL DEFAULT NULL,
  `pipe_item` int NULL DEFAULT NULL,
  `pipe_sensor` int NULL DEFAULT NULL,
  PRIMARY KEY (`pipe_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_pipe
-- ----------------------------
INSERT INTO `sys_pipe` VALUES (1, 'PZJ001', '膨胀节001', 1, '2023-11-17 08:38:17', '2023-11-17 08:38:24', 1, 1);
INSERT INTO `sys_pipe` VALUES (2, 'PZJ002', '膨胀节002', 2, '2023-11-17 08:40:41', '2023-11-17 08:40:45', 1, 1);
INSERT INTO `sys_pipe` VALUES (3, 'PZJ003', '膨胀节003', 3, '2023-11-17 08:42:01', '2023-11-17 08:42:05', 2, 2);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `sort` int NULL DEFAULT NULL COMMENT '显示顺序',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '角色状态(1-正常；0-停用)',
  `data_scope` tinyint NULL DEFAULT NULL COMMENT '数据权限(0-所有数据；1-部门及子部门数据；2-本部门数据；3-本人数据)',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '逻辑删除标识(0-未删除；1-已删除)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'ROOT', 1, 1, 0, 0, '2021-05-21 14:56:51', '2018-12-23 16:00:00');
INSERT INTO `sys_role` VALUES (2, '系统管理员', 'ADMIN', 1, 1, 0, 0, '2021-03-25 12:39:54', '2023-12-13 14:10:14');
INSERT INTO `sys_role` VALUES (3, '访问游客', 'GUEST', 4, 1, 0, 0, '2021-05-26 15:49:05', '2023-12-13 14:10:18');
INSERT INTO `sys_role` VALUES (128, '测试', 'Test', 2, 1, 0, 0, '2023-12-12 17:02:33', '2023-12-13 15:37:59');
INSERT INTO `sys_role` VALUES (129, '研发部', 'YF001', 3, 1, 0, 0, '2023-12-12 18:14:07', '2023-12-13 13:58:16');
INSERT INTO `sys_role` VALUES (130, '公司高层', 'Gs001', 5, 1, 0, 0, '2023-12-12 18:15:03', '2023-12-12 18:15:03');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (128, 1);
INSERT INTO `sys_role_menu` VALUES (128, 2);
INSERT INTO `sys_role_menu` VALUES (128, 31);
INSERT INTO `sys_role_menu` VALUES (128, 32);
INSERT INTO `sys_role_menu` VALUES (128, 33);
INSERT INTO `sys_role_menu` VALUES (128, 88);
INSERT INTO `sys_role_menu` VALUES (128, 3);
INSERT INTO `sys_role_menu` VALUES (128, 70);
INSERT INTO `sys_role_menu` VALUES (128, 71);
INSERT INTO `sys_role_menu` VALUES (128, 72);
INSERT INTO `sys_role_menu` VALUES (128, 4);
INSERT INTO `sys_role_menu` VALUES (128, 73);
INSERT INTO `sys_role_menu` VALUES (128, 74);
INSERT INTO `sys_role_menu` VALUES (128, 75);
INSERT INTO `sys_role_menu` VALUES (128, 5);
INSERT INTO `sys_role_menu` VALUES (128, 76);
INSERT INTO `sys_role_menu` VALUES (128, 77);
INSERT INTO `sys_role_menu` VALUES (128, 78);
INSERT INTO `sys_role_menu` VALUES (128, 6);
INSERT INTO `sys_role_menu` VALUES (128, 79);
INSERT INTO `sys_role_menu` VALUES (128, 81);
INSERT INTO `sys_role_menu` VALUES (128, 84);
INSERT INTO `sys_role_menu` VALUES (128, 85);
INSERT INTO `sys_role_menu` VALUES (128, 86);
INSERT INTO `sys_role_menu` VALUES (128, 87);
INSERT INTO `sys_role_menu` VALUES (128, 118);
INSERT INTO `sys_role_menu` VALUES (130, 1);
INSERT INTO `sys_role_menu` VALUES (130, 2);
INSERT INTO `sys_role_menu` VALUES (130, 31);
INSERT INTO `sys_role_menu` VALUES (130, 32);
INSERT INTO `sys_role_menu` VALUES (130, 33);
INSERT INTO `sys_role_menu` VALUES (130, 88);
INSERT INTO `sys_role_menu` VALUES (130, 3);
INSERT INTO `sys_role_menu` VALUES (130, 70);
INSERT INTO `sys_role_menu` VALUES (130, 71);
INSERT INTO `sys_role_menu` VALUES (130, 72);
INSERT INTO `sys_role_menu` VALUES (130, 4);
INSERT INTO `sys_role_menu` VALUES (130, 73);
INSERT INTO `sys_role_menu` VALUES (130, 74);
INSERT INTO `sys_role_menu` VALUES (130, 75);
INSERT INTO `sys_role_menu` VALUES (130, 5);
INSERT INTO `sys_role_menu` VALUES (130, 76);
INSERT INTO `sys_role_menu` VALUES (130, 77);
INSERT INTO `sys_role_menu` VALUES (130, 78);
INSERT INTO `sys_role_menu` VALUES (130, 6);
INSERT INTO `sys_role_menu` VALUES (130, 79);
INSERT INTO `sys_role_menu` VALUES (130, 81);
INSERT INTO `sys_role_menu` VALUES (130, 84);
INSERT INTO `sys_role_menu` VALUES (130, 85);
INSERT INTO `sys_role_menu` VALUES (130, 86);
INSERT INTO `sys_role_menu` VALUES (130, 87);
INSERT INTO `sys_role_menu` VALUES (130, 118);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 31);
INSERT INTO `sys_role_menu` VALUES (2, 32);
INSERT INTO `sys_role_menu` VALUES (2, 33);
INSERT INTO `sys_role_menu` VALUES (2, 88);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 70);
INSERT INTO `sys_role_menu` VALUES (2, 71);
INSERT INTO `sys_role_menu` VALUES (2, 72);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 73);
INSERT INTO `sys_role_menu` VALUES (2, 75);
INSERT INTO `sys_role_menu` VALUES (2, 74);
INSERT INTO `sys_role_menu` VALUES (2, 5);
INSERT INTO `sys_role_menu` VALUES (2, 76);
INSERT INTO `sys_role_menu` VALUES (2, 77);
INSERT INTO `sys_role_menu` VALUES (2, 78);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 79);
INSERT INTO `sys_role_menu` VALUES (2, 81);
INSERT INTO `sys_role_menu` VALUES (2, 84);
INSERT INTO `sys_role_menu` VALUES (2, 85);
INSERT INTO `sys_role_menu` VALUES (2, 86);
INSERT INTO `sys_role_menu` VALUES (2, 87);
INSERT INTO `sys_role_menu` VALUES (2, 118);
INSERT INTO `sys_role_menu` VALUES (2, 119);
INSERT INTO `sys_role_menu` VALUES (2, 120);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 36);
INSERT INTO `sys_role_menu` VALUES (2, 37);
INSERT INTO `sys_role_menu` VALUES (2, 38);
INSERT INTO `sys_role_menu` VALUES (2, 39);
INSERT INTO `sys_role_menu` VALUES (2, 95);
INSERT INTO `sys_role_menu` VALUES (2, 93);
INSERT INTO `sys_role_menu` VALUES (2, 94);

-- ----------------------------
-- Table structure for sys_sensor
-- ----------------------------
DROP TABLE IF EXISTS `sys_sensor`;
CREATE TABLE `sys_sensor`  (
  `id` int NOT NULL,
  `sensor_number` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sensor_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sensor_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sensor_generate_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_sensor
-- ----------------------------
INSERT INTO `sys_sensor` VALUES (1, 'PZJ001', '温度传感器', '1', '2023-11-17 09:31:02');
INSERT INTO `sys_sensor` VALUES (2, 'PZJ002', '湿度传感器', '2', '2023-11-17 10:46:02');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `gender` tinyint(1) NULL DEFAULT 1 COMMENT '性别((1:男;2:女))',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `dept_id` int NULL DEFAULT NULL COMMENT '部门ID',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户头像',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '用户状态((1:正常;0:禁用))',
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除标识(0:未删除;1:已删除)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_name`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 291 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'root', '系统默认', 0, '$2a$10$xVWsNOhHrCxh5UbpCE7/HuJ.PAOKcYAqRxD2CO2nVnJS.IAXkr5aq', NULL, 'https://p.qqan.com/up/2023-12/17019088533343900.jpg', '13233111133', 1, '13233111133@163.com', 0, NULL, NULL);
INSERT INTO `sys_user` VALUES (2, 'admin', '系统管理员', 1, '$2a$10$xVWsNOhHrCxh5UbpCE7/HuJ.PAOKcYAqRxD2CO2nVnJS.IAXkr5aq', 176, 'https://p.qqan.com/up/2023-12/17019088533343900.jpg', '13233111133', 1, '', 0, '2019-10-10 13:41:22', '2023-12-13 15:41:48');
INSERT INTO `sys_user` VALUES (3, 'test', '测试用户', 1, '$2a$10$xVWsNOhHrCxh5UbpCE7/HuJ.PAOKcYAqRxD2CO2nVnJS.IAXkr5aq', 172, 'https://p.qqan.com/up/2023-12/17019088533343900.jpg', '13233111133', 1, '13233111133@163.com', 0, '2021-06-05 01:31:29', '2023-12-13 15:38:35');
INSERT INTO `sys_user` VALUES (4, '123', '123', 1, '$2a$10$xVWsNOhHrCxh5UbpCE7/HuJ.PAOKcYAqRxD2CO2nVnJS.IAXkr5aq', 3, 'https://p.qqan.com/up/2023-12/17019088533343900.jpg', NULL, 1, NULL, 1, '2023-05-21 14:11:19', '2023-05-21 14:11:25');
INSERT INTO `sys_user` VALUES (5, 'niit', '南工管理员', 1, '$2a$10$xVWsNOhHrCxh5UbpCE7/HuJ.PAOKcYAqRxD2CO2nVnJS.IAXkr5aq', 176, 'https://p.qqan.com/up/2023-12/17019088533343900.jpg', '13030303030', 1, NULL, 0, '2023-12-12 18:12:04', '2023-12-13 15:41:57');
INSERT INTO `sys_user` VALUES (6, 'user01', '访客', 1, '$2a$10$NwCcLFzLjdmgyQvaZSGoPOPjfWCvySTDibWKlPc7jtK67qA99dIvK', 174, 'https://p.qqan.com/up/2023-12/17019088533343900.jpg', '13030303030', 1, NULL, 0, '2023-12-12 18:12:23', '2023-12-13 15:40:07');
INSERT INTO `sys_user` VALUES (290, 'Yf001', '研发工程师', 1, '$2a$10$pr3Lrdew3Alk35IZCswSmOJOw4cGPuBIufYe0pURs8oT6q8DXXwAm', 2, 'https://p.qqan.com/up/2023-12/17019088533343900.jpg', '13030303030', 1, NULL, 0, '2023-12-12 18:13:54', '2023-12-12 18:13:54');
INSERT INTO `sys_user` VALUES (291, 'admin01', '管理员01', 1, '$2a$10$agX.IMJDR/de8gfVlydsFORBloIsdYQHkBonqq0c2/fimdQMT8n3u', 176, 'https://p.qqan.com/up/2023-12/17019088533343900.jpg', '13030303030', 1, NULL, 0, '2023-12-13 14:10:00', '2023-12-13 15:42:30');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 128);
INSERT INTO `sys_user_role` VALUES (5, 130);
INSERT INTO `sys_user_role` VALUES (6, 3);
INSERT INTO `sys_user_role` VALUES (287, 2);
INSERT INTO `sys_user_role` VALUES (288, 2);
INSERT INTO `sys_user_role` VALUES (289, 3);
INSERT INTO `sys_user_role` VALUES (290, 128);
INSERT INTO `sys_user_role` VALUES (291, 2);

SET FOREIGN_KEY_CHECKS = 1;
