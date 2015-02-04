---
layout: post
title: '一台机子双网卡同时上电信ADSL和校园网'
date: 2006-10-12 13:58:46 +0800
comments: true
categories: "Ittech"
description: "记录路由配置"
---

由于校园网的开通，电信网又还没到期，所以给机子再加了一个网卡，插上校园网线路，免得换线太麻烦。原以为开启两个网卡就能同时上两个网，可是却只以校园网为主，上外网时需要禁用内网，实在麻烦，于是上网查找方法，终于找到一个，就是设置静态路由列表：用以下代码：
<!-- more -->

> @echo off   
> set edu=校园网网关   
> set ADSL=电信网网关   
> ：下面是设置默认路由列表   
> route change 0.0.0.0 mask 0.0.0.0 %ADSL% Metric 10   
> route add 61.0.0.0 mask 255.0.0.0 %ADSL% Metric 10   
> ：下面是设置外网路由列表   
> route add 162.105.0.0 mask 255.255.0.0 %edu% Metric 20   
> route add 166.111.0.0 mask 255.255.0.0 %edu% Metric 20   
> route add 202.0.0.0 mask 255.0.0.0 %edu% Metric 20   
> route add 210.0.0.0 mask 255.0.0.0 %edu% Metric 20   
> route add 218.0.0.0 mask 255.0.0.0 %edu% Metric 20   
> route add 219.0.0.0 mask 255.0.0.0 %edu% Metric 20   

将此代码保存为*setroute.bat*文件运行，若需开机就启动，将此文件放入“启动”项目里。今天才试，基本上可以同时使用两网，对于下载教育网和外网的资源可以同时，还真不错！
