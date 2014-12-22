---
layout: post
title: "【翻译】KDE 4.6 - 平台更新"
date: 2011-01-31 08:16:58 +0000
comments: true
categories: [Translation, Linux]
---

【原文】[KDE Releases Development Platform 4.6.0][original_article]   
   
在上一篇中，介绍了KDE 4.6关于应用程序方面一些更新，现在我们来看看新的4.6平台给我们带来了什么样的更新。

Plasma工作空间和KDE应用程序构建于KDE平台之上，新的平台带来了应用于所有KDE应用的新功能。“移动构建目标”使为移动设备的开发更容易。Plasma框架支持用QML（描述性Qt语言）来写桌面小工具， 以及为数据交互提供了新的Javascript接口。KDE应用中基于元数据和语义搜索的技术-Nepomuk，现在提供了一个图形界面来备份和恢复数据。UPower，UDev和UDisks可以用来替换过时的HAL。还改进了蓝牙支持。改进了Oxygen小工具和风格设置以及一个为GTK应用的新Oxygen主题，它允许应用无缝地合并到Plasma工作空间，看起来就像是KDE应用程序。

<!-- more -->

###更容易的移动开发工具链###
    
由于KDE库更加模块化，部分KDE平台现在可以为移动和嵌入式目标系统构建。减少了交叉库的依赖，以及允许关闭某些功能，现在KDE框架很容易部署到移动设备。移动配置文件以及用于移动和平板版本的KDE应用程序，比如Kontact Touch–KDE 的移动办公套件，以及平板电脑和手持设备的Plasma用户接口。  

###用QML来管理Plasma###

随着新版本的发布，Plasma框架支持用QML来写小工具。同时已经存在的小工具继续像之前一样可用。现在，QML是构建新的小工具的首选方法。Plasma数据引擎增加了新的功能，包括使用Javascript插件共享文件，一个允许数据引擎为离线使用缓存数据的存储服务。还有新的KPart，使得开发者更容易地集成这些新的和之前已存在的plasma技术到他们的应用中。   

###支持UPower，UDev，UDisks和元数据备份###

由于新的UPower，UDev和UDisks后端，过时的HAL已经不再需要在Linux上管理硬件。使用这些新的后端，应该程序不需要被更新。在不支持UPower的系统上，HAL仍然可用。   

KDE平台的语义桌面技术-Nepomuk，具备了备份和同步支持，使得在设备间传输元数据更容易。用户现在可以使用图形接口来备份他们的语义数据。附加的同步功能当钱只能在命令行模式可用。   
   
![Semantic data can now be easily backed up and restored using a graphical interface][pic_1]

###KWin可脚本化，Oxygen-GTK增强交叉桌面集成###

KDE的窗口复合管理器-KWin，现在有了脚本接口。这让高级用户和分发者有更多的能力来在Plasma工作空间控制窗口的行为，例如可以设置窗口为“保持在上”直到它被最大化，当最大化时作为普通窗口将被覆盖，当非最大化时，又自动设置成“保持在上”。现 在，KWin小组正在为支持OpenGL-ES工作，希望能在2011年夏天的4.7版本中首次亮相，那时KWin将能在手持系统上使用。

Plasma平台的视觉组件-Oxygen，也扩大地与一整套重做的mimetype图标工作，[Oxygen-GTK主题引擎][oxygengtk_link]的介绍，使得GTK应用程序更好地与KDE Plasma工作空间集成，包括渐变和许多用户期盼的Oxygen功能。   

![he Oxygen-GTK theme allows KDE and GTK applications to be mixed seamlessly][pic_2]

###新的蓝牙框架使得设备配对更容易###

一个著名的蓝牙框架-BlueDevil，使得设备配对和管理更容易。BlueDevil替代了KBluetooth，构建在BlueZ软件栈之上。   

* 现在你可以使用一个向导来配对设备
* 使用 Dolphin 或者 Konqueror 来浏览蓝牙设备上的文件
* 从 KDE 的系统管理或者系统托盘来管理蓝牙设置
* 新的框架监听接入请求，如接收文件或者输入 PIN 密码

关于KDE 4.6在平台方面的更新就介绍到这。三篇关于KDE 4.6版本带来的新特性也介绍完啦！有兴趣尝试KDE的话，可以到 [KDE][kde_link]了解更多信息。


  
[original_article]: http://www.kde.org/announcements/4.6/platform.php
[oxygengtk_link]: http://hugo-kde.blogspot.com/2010/11/oxygen-gtk.html
[kde_link]: http://www.kde.org
[pic_1]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-p01.png
[pic_2]: http://www.kde.org/announcements/4.6/screenshots/thumbs/46-p02.png