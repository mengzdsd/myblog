---
layout: post
title: "【翻译】KDE 4.6 - 新工作空间（Wrokspaces）"
date: 2011-01-29 07:31:10 +0000
comments: true
categories: [Translation, Linux]
---

【原文】[Plasma Workspaces Put You in Control][original_article]   
   
KDE在2011年1月26日通知发布了其最新版本4.6，带来了KDE Plasma工作空间，KDE应用程序和KDE平台的更新。这三个产品线各自提供了许多新的功能。   

<!-- more -->

![KDE Plasma Desktop, Gwenview and KRunner in 4.6][pic_1]

首先，我们来看看4.6版的Plasma工作空间带来了哪些更新。KDE Plasma带来了一个新的活动系统(Activites)，能够容易地将应用程序与一个特定的活动关联，比如工作和家庭任务。改进的电源管理增加了新的功能，但是提供了更简单的配置接口。Plasma 工作空间的窗口管理器 KWin 接纳了新的脚本，工作空间也接纳了视觉上的增强。Plasma Netbook，为移动设备做了优化，速度上有所增强，以及容易通过触摸屏使用。   
   
![Plasma Desktop in 4.6.0][pic_2]

活动系统被重新设计，使得更容易使用。现在通过右键点击窗口标题，你可以使应用程序和文件成为一个活动的一部分。当你需要时，改变到该活动，Plasma工作空间将显示你所需要的。添加，重命名和移除活动的过程也被改进了。   

![It is easy to associate applications with activities][pic_3]

改进的电源管理，更简短以及高模块化的代码（之前代码量的十分之一），更容易维护以及允许插件来触发电源管理功能。新的用户配置接口使得电源设置更容易理解和管理。一个新的“Policy Agent”允许屏幕禁用功能，如当你正在观看电影时禁用通知或者关闭屏幕。   


![The new simplified power management interface][pic_4]

缓存窗口设置和仅刷新屏幕上需要的区域，由于这些重要的优化，KWin，窗口复合管理器，比以前更快，能与更多的图形驱动更好地配合。带来了：   

* 重要的性能优化
* 更好的图形驱动性能检测
* 展现窗口效果 – 现在窗口可以直接从这个预览关闭

其他改进包括：   

* 现在程序启动通知处理更有效
* 改进的通知系统。现在通过拖拽，通知弹出可以出现在屏幕的任意位置，通知历史和任务弹出看起来更干净，以及当进度通知被展开时，运行的下载有一个下载速度条

![You can now drag notifications to a convenient place on the desktop][pic_5]

* [Shelf小工具（widget)][shell_link] – 当在一个面板中：自动获得弹出的大小，显示未读的邮件数和在线的联系人
* 改进的面板中的数字时钟，现在其显示阴影文字，这提升了在一些背景和主题下的可读性
* 现在任务栏（taskbar) 支持基本的启动：只需要拖拽程序的图标到任务栏，它将成为一个快捷启动方式。或者通过右键一个运行的程序使用高级菜单中的新选项将该程序订在任务栏
* Plasma Netbook 为更快的“搜索和运行”体验做了更多优化，以及在“Page One”报纸活动中更多触摸友好的行为

![The Plasma Netbook Search and Launch is faster][pic_6]

Plasma工作空间中，其它显然的改进包括改变到Oxygen图标主题，以及由于完全重写的Oxygen GTK主题，使得不是构建在KDE平台应用更好地集成。   

![The new Oxygen GTK theme helps to integrate non-KDE applications in a Plasma workspace][pic_7]

如果你想尝试安装KDE 4.6和获取更多关于KDE的信息，请关注[www.kde.org][kde_link] 。


  
[original_article]: http://www.kde.org/announcements/4.6/plasma.php
[shell_link]: http://i158.photobucket.com/albums/t120/wdawn/sjelf-1.png
[kde_link]: http://www.kde.org
[pic_1]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-w09.png
[pic_2]: http://www.kde.org/announcements/4.6/screenshots/46-w10.png
[pic_3]: http://www.kde.org/announcements/4.6/screenshots/46-w01.png
[pic_4]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-w02.png
[pic_5]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-w04.png
[pic_6]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-w07.png
[pic_7]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-w06.png