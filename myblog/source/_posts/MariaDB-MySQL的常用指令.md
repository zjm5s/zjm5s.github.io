---
title: MariaDB/MySQL的常用指令
date: 2018-01-14 16:10:36
tags: SQL
---
逆水行舟，不进则退。数据库的sql增删查改都生疏了，那还了得，在这里记一下吧。

#### 以root用户登陆
```
mysql -u root -p
```
#### 查看所有数据库
```
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
3 rows in set (0.01 sec)
```
#### 使用一个数据库
```
MariaDB [(none)]> use mysql
Database changed
```
#### 列出所有表
```
MariaDB [mysql]> show tables
    -> ;
```
#### 查看表的字段
```
MariaDB [mysql]> desc func
    -> ;
+-------+------------------------------+------+-----+---------+-------+
| Field | Type                         | Null | Key | Default | Extra |
+-------+------------------------------+------+-----+---------+-------+
| name  | char(64)                     | NO   | PRI |         |       |
| ret   | tinyint(1)                   | NO   |     | 0       |       |
| dl    | char(128)                    | NO   |     |         |       |
| type  | enum('function','aggregate') | NO   |     | NULL    |       |
+-------+------------------------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
```
#### 查看表结构(创建表时的详细语句)
```
MariaDB [mysql]> show create table func;
```
#### 创建一个数据库
```
MariaDB [mysql]> create database bookshop;
Query OK, 1 row affected (0.00 sec)
``` 

#### 创建新表
```
MariaDB [mysql]> create table tb1
    -> (
    -> id int(4) not null,
    -> name char(10)
    -> );
Query OK, 0 rows affected (0.01 sec)
//这里忘了切换到 bookshop了
```
#### 未完
