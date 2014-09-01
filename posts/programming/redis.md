---
title: 'redis源码结构'
date: '2014-09-01'
description:
tags: [redis, opensource]
categories: [Programming]
---

redis中主要类说明：

ae.h/ae.c：redis的事件处理类，包括句柄事件和超时事件

anet.h/anet.c：Server/Client通信的基础封装类，包括anetTcpServer,anetTcpConnect,anetTcpAccept,anetRead,anetWrite等方法

networking.c：定义网络协议传输方法。包括Client连接Server，Slave连接Master，Server/Client之间的信息交互的实现等

aof.c：append only file,AOF则以协议文本的方式，将所有对数据库进行过写入的命令
（及其参数）记录到 AOF 文件，以此达到记录数据库状态的目的；
rdb.c：RDB 将数据库的快照（snapshot）以二进制的方式保存到磁盘中

db.c：内存数据库操作类

multi.c：事务处理操作类

redis-cli.c：客户端程序类

redis.h/redis.c：服务端类

replication.c：主从数据库的复制类

pubsub.c：订阅模式类

基础数据结构类：


除分析redis中常见的数据结构、事件管理、内存管理，还需认识redis多机环境中的复制、sentinel监视、及集群功能。