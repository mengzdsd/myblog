---
layout: post
title: "【翻译】KDE 4.6 - 应用更新 "
date: 2011-01-30 07:57:50 +0000
comments: true
categories: ["Translation", "Ittech"]
---

【原文】[KDE Releases Applications 4.6.0][original_article]

上一篇介绍了KDE 4.6在工作空间（Workspaces）方面的一些更新。这一篇，我们来看看在应用程序方面，KDE4.6带来了哪些更新。

很多 KDE 应用程序小组都发布了新的版本。特别的亮点包括： 在虚拟地球（Marble） 中选路能力的改进； 以及在 KDE 文件管理器（Dolhin）里使用文件元数据来过滤和搜索的改进。KDE 游戏集也带来了许多增强； 图片浏览器（Gwenview）和截屏程序（KSnapshot）具备了将图片及时分享到许多流行的社交网站的能力。下面来看看具体内容：

<!-- more -->

###Dolphin 添加了称为 Faceted 的浏览功能###

Kfind和Dolphin的搜索界面已经统一到了一个新的简单的搜索栏。Faceted浏览首次公开亮相了过滤面板的形式，这使得你可以轻松地使用文件的元数据索引它们。一个新的侧边烂允许层次搜索，也就是使用元数据作为额外过滤来增强传统的文件浏览。

![Dolphin's faceted browsing lets you use multiple filters to find files by metadata][pic_1]

* 列视图改进了可用性。现在列的宽度可以自动或者由用户来调整，文件选择使用橡皮条指示，以及导航到临近的列不再需要水平滚动条了。
* 为了完成将 KDE 的开发从 SVN 迁移到 Git，Dolphin 新增了一个 Git 插件功能，可以直接从 GUI 更新和提交代码。 当然，SVN 插件仍然可用。
* 服务菜单多方面的改进（具体可以查看[http://ppenz.blogspot.com/2010/11/improved-service-menus.html](http://ppenz.blogspot.com/2010/11/improved-service-menus.html))

###Kate 具备了SQL客户端功能###

Kate，强大的文本编辑器，这次发布带来了大量闪光的新的功能。特别地，新版本提供了如下功能：

* 在Kate下一次启动时恢复未保存的本地文件（支持交换文件）
* 总是加载插件
* 添加脚本到菜单以及绑定快捷键
* 新的[SQL查询插件][SQLPlugin_link]给Kate带来了基本的 SQL 客户端的功能，以及通过Qt的SQL模块支持很多种类的数据库
* 一个新的 GNU 调式（GDB）插件
* 一个新的高亮选择文本插件

###管理社交网络的图像应用程序###

KDE的图像查看器Gwenview，添加了一个“分享”按钮来将图片导出到流行的图片分享和社交网站。

![Gwenview can share images to many popular social networking sites][pic_2]

KSnapshot现在可以进行套索区域截屏，可以选择包括鼠标指针，还有“发送到”按钮可以及时将截屏进行分享。

![KSnapshot can directly export screenshots to a number of 3rd party services][pic_3]

许多其它 KDE 应用程序更新也带来了新的功能和修复了许多错误，同时也从 KDE 平台获得了最新的改进来增强速度和稳定x性。

###Marble带你回家，由于OpenGL，KStars渲染更快###

KDE的虚拟地球（Marble），继续因其改进的选路计划支持而发亮，现在也允许选路数据的下载。同时，它的移动版本MarbleToGo能进行路线规划导航。[dot.kde.org](http://dot.kde.org)上有图片和视频，可以到这里找到功能指导的演示。

![Marble’s advanced routing can use a variety of configurable backends][pic_4]

![The mobile version of Marble is a capable personal navigation tool][pic_5]

KDE 的桌面天文馆，具备了使用 OpenGL 来渲染的可选支持，以 OpenGL 的能力来在硬件傻瓜你增强性能。

###KDE游戏###

* Klickety，一个Clickomania游戏的改写版本，它也通过兼容模式取代了KSame。
* KGameRenderer框架统一了游戏主题，带来了一致性和平滑的感观。大约十几个 KDE 游戏已经移植到了这个新的架构，减少了内存使用，已经允许它们利用多核处理器。
* Palapeli新的剪贴猜谜游戏，将图像剪辑成不同的和看起来可信的小片，斜角效果使得这些小片呈现三维效果。
* Kajongg新改进的文档为新手解释了这个游戏。更多的只能机器人玩家，改进的可用性和可玩性，由于更好的瓦片处理使得这个传统的游戏更好玩。

![Palapeli, the KDE puzzle game, makes it easy to create jigsaws from your own images][pic_6]

好了，关于 KDE 4.6 在应用程序方面的更新就介绍到这吧！

如果想知道如何安装使用KDE应用程序，请到[KDE][kde_link]了解更多信息。



[original_article]: http://www.kde.org/announcements/4.6/applications.php
[SQLPlugin_link]: http://kate-editor.org/2010/07/29/katesql-a-new-plugin-for-kate/
[kde_link]: http://www.kde.org
[pic_1]: http://www.kde.org/announcements/4.6/screenshots/46-a05.png
[pic_2]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-a03.png
[pic_3]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-a04.png
[pic_4]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-a01.png
[pic_5]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-a06.png
[pic_6]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-a02.png
