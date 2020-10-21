use electricpower;

insert into tbl_role(code,name) values('ADMIN','Quản trị');
insert into tbl_role(code,name) values('USER','Người dùng');

insert into tbl_user(username,password,fullname,status)
values('admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','admin',1);
insert into tbl_user(username,password,fullname,status)
values('user1','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','user',1);
insert into tbl_user(username,password,fullname,status)
values('user2','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','user',1);

INSERT INTO user_role(user_id,role_id) VALUES (1,1);
INSERT INTO user_role(user_id,role_id) VALUES (2,2);
INSERT INTO user_role(user_id,role_id) VALUES (3,2);

INSERT INTO `tbl_box` (`id`, `address`, `description`, `status`, `isdeleted`, `box_code`, `createddate`) VALUES
(1, 'CDIT-Học viện Bưu Chính', 'Đây là trạm điện tại Học viện Bưu chính VT', 0, 0, 'BOX01', '2020-07-27 17:38:08'),
(2, 'Hà Đông Hà Nội', 'Trạm sạc tiêu chuẩn ISO 9000', 0, 0, 'BOX02', '2020-08-05 20:44:51'),
(3, 'ABC', 'ABC', 0, 0, 'Box03', '2020-08-07 09:57:42');

INSERT INTO `tbl_cardrecharge` (`id`, `code`, `datetime_issued`, `value`, `status`, `activedatetime`, `card_id`) VALUES
(1, '216426014511', '2020-07-31 15:52:46', 100000, 1, NULL, NULL),
(2, '300032551875', '2020-07-31 16:02:54', 200000, 1, NULL, NULL),
(3, '209455489330', '2020-07-31 16:03:46', 500000, 1, '2020-08-05 19:54:41', '13 AB FF 02'),
(4, '836291701803', '2020-07-31 16:03:50', 1000000, 0, NULL, NULL),
(5, '553351183232', '2020-07-31 16:03:55', 300000, 0, NULL, NULL),
(6, '816926787755', '2020-08-03 11:06:50', 100000, 1, '2020-08-06 10:32:17', '13 AB FF 02'),
(7, '937474133358', '2020-08-07 09:54:43', 100000, 1, '2020-08-07 09:56:03', '13 AB FF 02'),
(8, '216513503740', '2020-08-07 09:55:09', 200000, 0, NULL, NULL);

INSERT INTO `tbl_consume` (`id`, `card_id`, `box_id`, `datetime_start`, `datetime_end`, `consume_kw`, `money_spended`, `session_id`, `status`) VALUES
(2, '13 AB FF 02', 1, '2020-08-04 09:33:27', NULL, 0, NULL, '5ff2471e-abf5-4bea-8ba6-c314189da689', 1),
(3, '13 AB FF 02', 1, '2020-08-04 09:34:18', NULL, 0.1, NULL, '5ff2471e-abf5-4bea-8ba6-c314189da689', 1),
(4, '13 AB FF 02', 1, '2020-08-04 09:35:41', NULL, 0.2, NULL, '5ff2471e-abf5-4bea-8ba6-c314189da689', 1),
(5, '13 AB FF 02', 1, '2020-08-04 09:37:12', NULL, 1, NULL, '5ff2471e-abf5-4bea-8ba6-c314189da689', 0),
(6, '13 AB FF 02', 2, '2020-08-05 19:56:58', NULL, 0, NULL, '5ff2471e-abf5', 1),
(7, '13 AB FF 02', 2, '2020-08-05 19:57:09', NULL, 1, NULL, '5ff2471e-abf5', 1),
(8, '13 AB FF 02', 2, '2020-08-05 19:57:12', NULL, 2, NULL, '5ff2471e-abf5', 1),
(9, '13 AB FF 02', 2, '2020-08-05 19:57:17', NULL, 3, NULL, '5ff2471e-abf5', 1),
(10, '13 AB FF 02', 2, '2020-08-05 19:57:21', NULL, 4, NULL, '5ff2471e-abf5', 1),
(11, '13 AB FF 02', 2, '2020-08-05 19:57:24', NULL, 5, NULL, '5ff2471e-abf5', 1),
(12, '13 AB FF 02', 2, '2020-08-05 19:57:28', NULL, 5, NULL, '5ff2471e-abf5', 0),
(13, '13 AB FF 02', 1, '2020-08-05 20:51:45', NULL, 0, NULL, '5ff2471e-abf5-112-1', 1),
(14, '13 AB FF 02', 1, '2020-08-05 20:51:53', NULL, 1, NULL, '5ff2471e-abf5-112-1', 1),
(15, '13 AB FF 02', 1, '2020-08-05 20:52:00', NULL, 1.4, NULL, '5ff2471e-abf5-112-1', 1),
(16, '13 AB FF 02', 1, '2020-08-05 20:52:07', NULL, 1.9, NULL, '5ff2471e-abf5-112-1', 1),
(17, '13 AB FF 02', 1, '2020-08-05 20:52:40', NULL, 10, NULL, '5ff2471e-abf5-112-1', 0),
(18, '13 AB FF 02', 1, '2020-08-07 09:28:08', NULL, 1, NULL, '5ff2471e-abf5-112-2', 1),
(19, '13 AB FF 02', 1, '2020-08-07 09:52:10', NULL, 0, NULL, '5ff2471e-abf5-112-2', 1),
(20, '13 AB FF 02', 1, '2020-08-07 09:52:45', NULL, 3, NULL, '5ff2471e-abf5-112-2', 1),
(21, '13 AB FF 02', 1, '2020-08-07 09:53:27', NULL, 0, NULL, '5ff2471e-abf5-112-3', 1),
(22, '13 AB FF 02', 1, '2020-08-07 09:53:34', NULL, 1, NULL, '5ff2471e-abf5-112-3', 1),
(23, '13 AB FF 02', 1, '2020-08-07 09:53:38', NULL, 2, NULL, '5ff2471e-abf5-112-3', 1),
(24, '13 AB FF 02', 1, '2020-08-07 09:53:41', NULL, 3, NULL, '5ff2471e-abf5-112-3', 1),
(25, '13 AB FF 02', 1, '2020-08-07 09:53:50', NULL, 5, NULL, '5ff2471e-abf5-112-3', 0),
(26, '1S 2D 3F 4H', 1, '2020-08-07 10:00:15', NULL, 0, NULL, '5ff2471e-abf5-112-232', 1),
(27, '1S 2D 3F 4H', 1, '2020-08-07 10:00:20', NULL, 1, NULL, '5ff2471e-abf5-112-232', 1),
(28, '1S 2D 3F 4H', 1, '2020-08-07 10:00:24', NULL, 2, NULL, '5ff2471e-abf5-112-232', 1),
(29, '1S 2D 3F 4H', 1, '2020-08-07 10:00:32', NULL, 5, NULL, '5ff2471e-abf5-112-232', 0),
(30, '1S 2D 3F 4H', 1, '2020-08-07 10:45:36', NULL, 0, NULL, '5ff2471e-abf5-112-21232', 1),
(31, '1S 2D 3F 4H', 1, '2020-08-07 10:45:47', NULL, 1, NULL, '5ff2471e-abf5-112-21232', 1),
(32, '1S 2D 3F 4H', 1, '2020-08-07 10:46:00', NULL, 2, NULL, '5ff2471e-abf5-112-21232', 1),
(33, '1S 2D 3F 4H', 1, '2020-08-07 10:46:09', NULL, 3, NULL, '5ff2471e-abf5-112-21232', 1),
(34, '1S 2D 3F 4H', 1, '2020-08-07 10:46:24', NULL, 4, NULL, '5ff2471e-abf5-112-21232', 0),
(35, '1S 2D 3F 4H', 1, '2020-08-12 11:54:01', NULL, 0, NULL, '5ff2471e-abf5-112-2121212', 1),
(36, '1S 2D 3F 4H', 1, '2020-08-12 11:54:12', NULL, 0, NULL, '5ff2471e-abf5-112-2121212', 1),
(37, '1S 2D 3F 4H', 1, '2020-08-12 11:54:13', NULL, 0, NULL, '5ff2471e-abf5-112-2121212', 1),
(38, '1S 2D 3F 4H', 1, '2020-08-12 11:55:16', NULL, 10, NULL, '5ff2471e-abf5-112-2121212', 0);


INSERT INTO `tbl_electriccard` (`id`, `card_id`, `pin_code`, `money`, `card_status`, `pin_status`, `isdeleted`, `createddate`, `activedate`) VALUES
(1, '13 AB FF 02', '922834', 1789600, 1, 1, 0, '2020-07-30 10:57:57', '2020-07-30 11:20:37'),
(2, '1Q 2W 3E 4R', '623460', 100000, 0, 0, 1, '2020-07-30 10:59:38', NULL),
(3, '1A 2S 3D 4F', '802993', 1000000, 0, 0, 1, '2020-07-30 11:01:01', NULL),
(4, '1Q 2W 3E 4R', '783327', 100000, 0, 0, 1, '2020-07-31 15:16:36', NULL),
(5, '1W 2R 3R 4T', '965051', 500000, 0, 0, 1, '2020-07-31 15:16:53', NULL),
(6, 'QU 2D 4F 6H', '261105', 500000, 1, 1, 0, '2020-08-03 10:51:30', '2020-08-03 10:52:52'),
(7, '1Q 2E 4T 5Y', '168152', 1000000, 0, 0, 1, '2020-08-07 09:58:03', NULL),
(8, '1S 2D 3F 4H', '085640', 912000, 1, 1, 0, '2020-08-07 09:58:18', '2020-08-07 09:59:39');
