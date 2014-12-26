---
layout: post
title: "用Lantern来自由地访问网络"
date: 2014-12-10 13:43:17 +0000
comments: true
categories: "Ittech"
description: "如何使用Lantern这个好东西来自用的访问真正的互联网"
---

##什么是[Lantern][lantern_link]##
Lantern是一个应用程序，是一个你安装在你的电脑里，让整个网络世界都逃脱网络审查的应用程序。
Lantern的目标是：
> 构建快速，可靠的连接到开放的互联网。通过运行Lantern，每一台计算机都可以成为一台服务器，每一个不受审查的用户的接入都可以成为受审查用户的接入点，提供网关到那些受审查的站点，比如[Twitter][twitter_link]，[Facebook][facebook_link]和[YouTube][youtube_link]。

<!-- more -->
想查看更多关于Lantern的信息，可以访问其[官方网站][lantern_link]。

##安装Lantern##
Lantern不再受理邀请请求。为了保护审查对Lantern的渗透，现在所有的邀请都只能在朋友与朋友之间。如果您认识并且信任某个已经在使用Lantern的人，请联系他们获得邀请。当然需要的可以联系我了，呵呵！收到邀请后，你的邮箱会收到Lantern的下载链接。
其实也可以直接到Lantern的主页去直接下载了。Lantern提供了Windows，Mac OS X以及Linux(deb包)上的安装包，

##使用Lantern##
安装完成之后，要使用Lantern你还需要一个[Google][google_link]帐号，这个嘛，就得相办法注册一个了，如果使用过[Gmail][gamil_link]，那就肯定有Google帐号了。
打开Lantern后，会通过验证登录方式引导你登录Gmail帐号，登录完成后，接下来就是添加一些Gmail好友了，最好是能添加到一些处在非审核地区的朋友。
![添加好友][pic_1]

当然，即使没有加上非审核地区的好友，也能使用Lantern。

当Lantern连接上之后，你可以设置为全局代理，但是这样不好，一个是效率问题，最好是使用浏览器的代理插件来设置那些被封杀的网站使用Lantern代理。
比如在[Chrome][chrome_link]上使用[SwitchySharp][ss_link]插件来设置代理为Lantern里提供的PAC URL。
![PAC_RUL][pic_2]

之后就是痛痛快快地上网啦，自用的互联网。
最后就是要感谢Lantern项目的贡献者们。还要吐槽一下天朝（当然世界上除了天朝还有一些类似国家）统治者们！


[lantern_link]: https://getlantern.org
[twitter_link]: https://twitter.com
[facebook_link]: https://www.facebook.com
[youtube_link]: https://www.youtube.com
[google_link]: https://www.google.com
[gamil_link]: https://mail.google.com
[chrome_link]: https://chrome.google.com
[ss_link]: https://chrome.google.com/webstore/detail/dpplabbmogkhghncfbfdeeokoefdjegm
[pic_1]: http://imgout.ph.126.net/38987013/Lantern_Friends.jpg
[pic_2]: http://imgout.ph.126.net/38987014/Lantern_pac.jpg
