---
title: 'Hybridauth主要类分析'
date: '2014-07-12'
description:
tags: [hybridauth, oauth]
categories: [OpenSource]
---

主要的类文件及函数说明：
## HAuth.php
### 作用
hybridauth库入口
### 函数
**authenticate()=>** 

setup(),login()
getAdapter()

**setup()=>**

添加参数：hauth_return_to

**login()=>**

删除旧session：hauth_return_to, hauth_endpoint, id_provider_params

设置参数：hauth_token, hauth_time, login_start, login_done

添加session：hauth_return_to, hauth_endpoint, id_provider_params

redirect：跳转到login_start页面

**getAdapter()=>**

## HAuth_Adapter.php
### 作用
连接用户到指定的provider，比较常见的有facebook，twitter

## Storage.php
### 作用
session storage manager

## Provider_Model.php
### 作用
abstract类，提供了统一的provider接口

### 函数（以`Provider_Model_OAuth2.php`为例）

**initialize()=>**

thirdparty/oAuth2Client(client_id, client_secret, redirect_url)
token数据包括：access_token, refresh_token, access_token_expires_in, access_tocket_expires_in, sign_tocket_name
方法：

**loginBegin()=>**

redirect并调用authorizeUrl()进行授权操作

**loginFinish()=>**

authenticate()，并保存token值，同时setUserConnection()状态

**getUserProfile()=>**


## Endpoint.php
### 作用
provider的终端
### 函数

**process()=>**

处理当前request请求，主要包括：processAuthStart()和processAuthDone()方法，分别调用loginBegin()和loginFinish()


