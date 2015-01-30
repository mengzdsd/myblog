---
layout: post
title: "【翻译】KDE发布Plasma 5.2"
date: 2015-01-30 13:27 +0800
comments: true
categories: ["Ittech","Translation"]
tags: ["kde", "plasma", "linux"]
description: "翻译KDE Plasma 5.2发布说明，看看其新的特性，还补充一些关于KDE的说明"
---

本文章大部分内容是翻译自[KDE][link_kde]官方的[发行说明][link_kde_release_announce]。

不过首先还是让我们来看看什么是KDE。

###什么是KDE###
+ KDE是一个开源的应用软件，运行在[Linux][link_wiki_linux]，[BSD][link_wiki_bsd]，[Solaris][link_wiki_solaris]，[Windows][link_wiki_windows]，[Max OS X][link_wiki_maxosx]等平台
+ KDE是一个桌面环境，类似[Gnome][link_wiki_gnome]，[XFce][link_wiki_xfce]等
+ KDE是一个桌面应用程序的开发环境，提供了基本的库来开发基于KDE的应用程序
<!-- more -->

KDE在版本4之前（KDE3）称为`K桌面环境（K Desktop Environment）`，其包含了运行整个KDE桌面环境的基本类库和相应的一套应用程序。
在版本4后（KDE4），改称为`KDE软件包（KDE Software Compilation）`，除了整个基础类库和应用程序外，其重新开发了一个叫做[Plasma][link_wiki_plasma]的桌面和面板集合，使得其桌面风格与3相比有了很大的变化。
从版本5开始，KDE又分为了`KDE基础框架（KDE Frameworks 5）`、`KDE桌面空间（KDE Plasma 5）`和`KDE应用程序（KDE Application 5）`三个组成部分来单独发布。

KDE是基于[Qt][link_qt]图形开发库的，因此版本4是就基于的Qt4，版本5开始基于Qt5。
想了解更多关于KDE，请访问[KDE官方网站][link_kde]和参考维基百科关于[KDE的条目][link_wiki_kde]。

> 【翻译】[KDE Ships Plasma 5.2][link_trans_original]。

2015年1月27日，KDE发布了`KDE Plasma 5.2`，该版本增加了一些新的组件和特性，还有大量的问题修复。
![Plasma5.2桌面][pic_1]

###新组件###
该版本的桌面空间环境（Plasma）带来了一些新的组件使桌面环境更完整：

**BlueDevil**：管理蓝牙设备的一系列组件，它将设置鼠标、键盘，发送和接收文件，以及你可以通过它来浏览蓝牙设备。

**KSSHAskPass**：如果你通过有密码设置的[ssh][link_wiki_ssh]密钥来访问电脑，该模块提共了一个图形界面（GUI）来输入密码。

**Muon**：为你的系统安装和管理软件和插件。

**登录主题配置（SDDM）**：SDDM是Plasma桌面的登录管理选择器，提供了新系统设置模块来让你配置登录界面的主题。

**KScreen**：提供新的系统设置模块来让你配置多显示器支持，这是第一次包含在Plasma 5。

**GTK应用程序风格**：该模块让你配置Gnome风格的应用主题。

**KDecoration**：这是一个新的类库，其使得为KWin，Plasma窗口管理器制作主题更简单和可靠。其优化了内存的使用，性能和稳定性。如果你觉得缺少了一些特性，不用着急，他们将随着5.3一起来到来。

![KScreen双屏幕配置][pic_2]

###其他亮点###
Plasma布局的更改**回退**
![更改回退][pic_3]

**KRunner**结果的智能排序，按`Alt-space`来更简单地搜索你的计算机
![KRunner结果排序][pic_4]

添加新的**Breeze窗口装饰**主题，并作为默认风格
![Breeze装饰][pic_5]

视觉设计团队的艺术家努力工作下的**Breeze**图标
![Breeze图标][pic_6]

他们还为Breeze主题添加了一组新的白色光标主题。

**新的Plasma小部件**：15 puzzle、web浏览、显示桌面
![web浏览小部件][pic_7]

KRunner里的**音频播放控制**，按`Ctrl-space`，然后输入*next*来播放下一首音轨。

Kicker代替了应用程序菜单，可以从菜单安装应用，以及增加了菜单编辑特性。

在启动时优化了桌面搜索**Baloo**，它将减少2-3倍的CPU占用。查询解析支持"type"/"kind"属性，因此你可以在KRunner里输入"kind:Audio"来过滤出音频结果。

改善了锁屏和logind的集成，确保在系统暂停之前正确地锁屏。锁屏的背景可以配置，内部使用了部分[Wayland][link_wiki_wayland]协议，这是Linux桌面环境的未来。

改善了多显示器处理，对多显示器检测的代码得到XRandR扩展的直接移植，以及修复多个相关的问题。

更新了Kickoff面板的默认应用程序，Instant Messaging，Kontact和Kate。

为笔记本键盘的的禁用触摸板功能提供了一个友好的反馈。

在第一次登录匹配，Breeze将被设置成GTK风格。

修复了超过300个Plasma的问题。

请查看Plasma 5.2的完整[更改日志][link_plasma_changlog]。


最后，可以通过下载Live镜像来尝试该Plasma版本。我得等到[openSuSE][link_opensuse]的软件源更新后再去尝试了。


[link_kde]: http://www.kde.org
[link_kde_release_announce]: https://www.kde.org/announcements/plasma-5.2.0.php
[link_wiki_linux]: https://zh.wikipedia.org/wiki/Linux
[link_wiki_bsd]: https://zh.wikipedia.org/wiki/BSD
[link_wiki_solaris]: https://zh.wikipedia.org/wiki/Solaris
[link_wiki_windows]: https://zh.wikipedia.org/wiki/Microsoft_Windows
[link_wiki_maxosx]: https://zh.wikipedia.org/wiki/Mac_OS
[link_wiki_gnome]: https://zh.wikipedia.org/wiki/GNOME
[link_wiki_xfce]: https://zh.wikipedia.org/wiki/Xfce
[link_wiki_plasma]: https://zh.wikipedia.org/wiki/Plasma_(KDE)
[link_qt]: https://zh.wikipedia.org/wiki/Qt
[link_wiki_kde]: https://zh.wikipedia.org/wiki/KDE
[link_trans_original]: https://www.kde.org/announcements/plasma-5.2.0.php
[link_wiki_ssh]: https://zh.wikipedia.org/wiki/Secure_Shell
[link_wiki_wayland]: https://zh.wikipedia.org/wiki/Wayland
[link_plasma_changlog]: https://www.kde.org/announcements/plasma-5.1.2-5.2.0-changelog.php
[link_opensuse]: http://www.opensuse.org

[pic_1]: https://www.kde.org/announcements/plasma-5.2/full-screen-wee.png
[pic_2]: https://www.kde.org/announcements/plasma-5.2/kscreen-wee.png
[pic_3]: https://www.kde.org/announcements/plasma-5.2/output.gif
[pic_4]: https://www.kde.org/announcements/plasma-5.2/krunner.png
[pic_5]: https://www.kde.org/announcements/plasma-5.2/window_decoration.png
[pic_6]: https://www.kde.org/announcements/plasma-5.2/icons.png
[pic_7]: https://www.kde.org/announcements/plasma-5.2/new_plasmoid.png
