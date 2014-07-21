---
layout: post
title: "命令行修改Linux系统日期时间"
date: 2011-04-07 15:03:32 +0000
comments: true
categories: Linux
description: "在Linux上用命令行修改系统时间"
---

有时在一些服务器上无法进行图形界面登录，为了修改系统时间只能用命令行的方式。

用于修改系统提起和时间的命令是[__date__][date_link]，该命令既可以查看系统日期和时间，也可以进行设置。注意，在进行设置时，需要以root用户运行。

用[__date__][date_link]设置系统日期和时间可以用很多种格式，具体可查看其man手册。
<!-- more -->

用下面的语法进行设置日期和时间：

> _date –set="STRING"_

如设置一个新的日期和时间到 2 Oct 2011 18:00 ，就在终端输入：

> _date --set="2 OCT 2011 18:00:00"_

或者

> _date -s "2 OCT 2011 18:00:00"_

还可以指定简单的格式，如

> _date +%Y%m%d%H%M -s "201110021800"_

也可以单独指定日期时间，如

> _date +%Y%m%d -s "20111002"_

> _date +%T -s "18:00:00"_

总之可以按照查看日期和时间的格式加上 -s 参数进行设置。

参考：[Linux Set Date and Time From a Command Prompt][ref_link]

[ref_link]: http://www.cyberciti.biz/faq/howto-set-date-time-from-linux-command-prompt/
[date_link]: http://unixhelp.ed.ac.uk/CGI/man-cgi?date
