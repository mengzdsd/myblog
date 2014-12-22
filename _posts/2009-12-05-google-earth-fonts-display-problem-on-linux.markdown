---
layout: post
title: "Google Earth在Linux下字体显示问题"
date: 2009-12-05 00:48:16 +0800
comments: true
categories: Linux
description: "记录解决Google Earth无法显示中文字符的方法"
---

最近在我的openSUSE 11.2上安装了Google Earth，安装非常简单，就是给下载下来的bin安装文件添加可执行属性，然后直接执行安装。

可是当安装完成后打开，中文字体完全显示不出来，界面上仅有一些英文。
<!-- more -->

![GoogleEarth_Fonts_Bad][pic_1]

遇上在网上搜索相关问题，终于找到了原因和解决方法：

原来是由于Google Earth自带的Qt库的问题，所以解决方法就是删除掉安装目录里的Qt库，让程序使用系统安装的Qt库，当然前提是系统安装了Qt库。因此简单的执行如下命令：
> $ cd ~/google-earth  </br>
> $ rm libQt\*

然后再启动google earth，OK，显示正常！！

![GoogleEarth_Fonts_Good][pic_2]

[pic_1]: /images/posts/GoogleEarth_Fonts_Bad.png
[pic_2]: /images/posts/GoogleEarth_Fonts_Good.png

