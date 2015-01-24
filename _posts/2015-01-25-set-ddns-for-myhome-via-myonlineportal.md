---
layout: post
title: "通过MyOnlinePortal配置家里路由器动态域名"
date: 2015-01-25 17:35
comments: true
categories: ["Ittech"]
tags: ["ddns","router","linux"]
description: "记录通过MyOnlinePortal的动态域名服务来动态更新家里路由器的访问"
---

###动态域名###
**动态域名**（英文：Dynamic DNS，简称[DDNS][wikipedia_ddns]），简单的讲就是为那些将域名指定到经常改变的IP地址的一种方法或者服务。

这里主要是记录下我通过[MyOnlinePortal][mop_link]提供动态域名服务来更新我家里的小米路由器IP。
当然，很多路由器提供了配置[花生壳][ora_link]的动态域名服务，就直接配置及好了。

这样就可以通过绑定的域名来访问家里的路由器了，不用知道路由器的IP到底是什么（因为一般的拨号上网，每一次拨号ISP都会重新分配一个新的IP地址）。
<!-- more -->

###在MyOnlinePortal上配置域名###
[MyOnlinePortal][mop_link]为个人用户提供了10个免费的动态郁闷服务。
首先你得先注册一个帐号，然后就可以创建一个二级域名来作为你的动态郁闷了，如下图所示
![Picture_1][pic_1]

填写你的子域名称，然后你可以选择以下几个主域名：
> - myonlineportal.net
> - myonlineportal.org
> - myonlineportal.eu
> - myonlineportal.at
> - my-homeip.com
> - my-homeip.net
> - my-homeip.de

然后你就可以看到你注册的这个域名，如下图
![Picture_2][pic_2]

这里你可以设置当前的IP地址，你也可以看到给出了一个更新IP地址的URL，后面我们就可以用这个URL来动态地更新该域名指向的IP了。

MyOnlinePortal提供了多种方法来更新IP地址，针对不同的平台，具体方法可以参看[帮助][mop_help_link]。

###在我的小米路由器上添加Cronjob来更新IP###
我的[小米路由器][xiaomi_router_link]是基于[OpenWRT][openwrt_link]系统的，所以可以使用基于Linux的curl命令来更新IP。当然需要获取SSH登录路由器的权限。

为此我写了一个简单的脚本，然后放到Crontab去
{% highlight bash linenos %}
#!/bin/ash
#==============================================================================
CURL=`which curl`
USER="Your_username"
PASSWORD="Your_password"
OPTS="-k --user $USER:$PASSWORD"
URL="Your_update_url"
LOGFILE=/var/log/updatehip.log

runTime=`date`
echo "$runTime" >> $LOGFILE
$CURL $OPTS $URL >> $LOGFILE 2>&1
echo -e "--------------------------------------" >> $LOGFILE
{% endhighlight %}

其中，`Your_username`是注册的MyOnlinePortal的用户名，`Your_password`是密码，`Your_update_url`是你的动态域名的更新URL，如：
> URL="https://myonlineportal.net/updateddns?hostname=xxx.my-homeip.com"

这里我们没有在URL后面的添加“&ip=<ipaddr>”，这样的话，MyOnlinePortal会自动的去检查IP，如果你需要明确指定IP的话，就添加上，但是你需要写代码去获得当前IP。

然后就是添加Cronjob：
> 0 12 * * * /data/usr/bin/updateMyHomeIP.sh

我这里是希望每天的12点的时候更新一次，还有可以添加到`/etc/rc.local`，让每次启动路由器的时候更新一次。

当然你可以直接将crul语句加到cronjob里，我这里是为了记录一些更新的log信息所以写了个简单的脚本。

最后，你就可以在公司或者在外面的时候通过你绑定的动态域名来访问你家里的路由器了。

[wikipedia_ddns]: http://zh.wikipedia.org/wiki/%E5%8B%95%E6%85%8BDNS
[mop_link]: https://myonlineportal.net
[pic_1]: http://imgout.ph.126.net/39805131/create_domain_on_mop.jpg
[pic_2]: http://imgout.ph.126.net/39805132/Myonlineportal_DynDNS_2.jpg
[mop_help_link]: https://myonlineportal.net/howto_dyndns
[xiaomi_router_link]: http://www1.miwifi.com/
[openwrt_link]: https://openwrt.org/
[ora_link]: http://www.oray.com/
