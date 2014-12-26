---
layout: post
title: '在Linux上配置GappPrxoy'
date: 2010-11-27 15:03:32 +0000
comments: true
categories: "Ittech"
description: "记录如何在Linux上配置实用GappProxy"
---

首先感谢[GappProxy][gappproxy_link]项目的作者给我们带来了这么好的一个东西。

之前一直使用[Vidalia][vidalia_link]＋[Tor][tor_link]来进行自由的网络访问。虽然速度一般，但是只要能连接上，基本所有网站都是能访问的。但是从昨天开始，不知道为什么使用Vidalia一直连接不上，很是郁闷。
<!-- more -->

然后就开始尝试配置一个GappProxy来进行自由网络访问。首先从GappProxy下载[服务器][server_dl_link]和[客户端][client_dl_link]的源代码，或者通过[SVN][svn_link]来下载所有的源代码：
> svn checkout [http://gappproxy.googlecode.com/svn/trunk/][svn_gapproxy_link] gappproxy-read-only

由于GappProxy的服务端是使用[Google AppEngine][gappengine_link]来运行的，所以需要一个Google AppEngine帐号，然后登陆[http://appengine.google.com/][appengine_link]创建一个应用，比如名为**xxxx**，当然为了上传服务端应用的代码，还需要下载Google AppEngine的[Python SDK][gapp_python_sdk_link]。

对于*fetchserver*目录中的*server*端代码我们只需要修改文件*app.yaml*和*index.yaml*文件，将*app.yaml*文件的*application:*行加上创建的应用名，如*application: xxxx*。而*index.yaml*文件只需要保留第一行，将其余行删除，不然在上传的时候会报错。

接下来就是使用Python SDK的**appcfg.py**工具来上传代码了，运行如下命令：
> appcfg.py update fetchserver/

会提示输入GoogleAppEngine的帐号和密码，上传成功后，服务器端就会自动运行。
接下来需要启动clinet脚本，进入到*localproxy*目录，修改文件*proxy.conf*，将*fetch_server*字段改为*fetch_server ＝ http://xxxx.appspot.com/fetch.py*，然后运行：
> proxy.py &

然后，配置浏览器代理为**127.0.0.1**端口**8000**之后，你就可以自由访问网络啦！速度还想相当不错的！
最后再次感谢GappProxy项目的作者们，谢谢！

[gappproxy_link]: http://code.google.com/p/gappproxy/
[vidalia_link]: http://www.torproject.org/projects/vidalia.html.en
[tor_link]: http://www.torproject.org/
[server_dl_link]: http://gappproxy.googlecode.com/files/fetchserver-2.0.0.zip
[client_dl_link]: http://gappproxy.googlecode.com/files/localproxy-2.0.0.tar.gz
[svn_link]: http://subversion.tigris.org/
[svn_gapproxy_link]: http://gappproxy.googlecode.com/svn/trunk/
[gappengine_link]: http://code.google.com/appengine/
[appengine_link]: http://appengine.google.com/
[gapp_python_sdk_link]: http://code.google.com/appengine/downloads.html#Google_App_Engine_SDK_for_Python
