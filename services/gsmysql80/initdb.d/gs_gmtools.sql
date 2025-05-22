use gs_gmtools;

CREATE TABLE if not exists `event_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(255) NOT NULL COMMENT '事件标识',
  `note` varchar(255) NOT NULL COMMENT '事件说明',
  `create_time` datetime DEFAULT NULL COMMENT '事件创建时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '执行状态',
  `request_time` datetime DEFAULT NULL COMMENT '事件请求回执时间',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `param1` varchar(255) DEFAULT NULL COMMENT '参数1',
  `param2` varchar(255) DEFAULT NULL COMMENT '参数2',
  `param3` varchar(255) DEFAULT NULL COMMENT '参数3',
  `param4` varchar(255) DEFAULT NULL COMMENT '参数4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;