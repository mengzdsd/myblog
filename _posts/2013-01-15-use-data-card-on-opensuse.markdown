---
layout: post
title: "在openSUSE上使用3G数据卡"
date: 2013-01-15 21:33:20 +0800
comments: true
categories: "Ittech"
description: "记录这样在openSUSE上成功使用联通3G数据卡上网"
---

今天这篇是因为想把怎么成功连上网的过程给记录下来。真应该感谢家里的宽带坏掉了，还有手里正好有一个华为的联通3G数据上网卡，所以就折腾了一下，这都是废话了！
###工具准备###
首先要保证系统里已经安装[usb_modeswitch][usb_modeswitch_link]和[wvdial][wvidial_link]这两个包，因为我们要使用这两个命令，一个是用来切换 usb 模式的，一个是用来拨号的。
<!-- more -->
###切换上网卡usb模式###
插入华为的 3g 联通数据上网卡（我这个的型号是 HUAWEI E261），使用如下 lsusb 命令查看信息:
> \# lsusb | grep "Huawei"
> Bus 002 Device 003: ID 12d1:1436 Huawei Technologies Co., Ltd.

记录下 ID，也就是 12d1:1436 ，一个厂商号，一个设备号。
然后使用如下命令将切换 usb 模式：
> \# usb_modeswitch –default-vendor 0x12d1 –default-product 0×1436 –target-vendor 0x12d1 –target-product 0×1436 –huawei-mode
>
> Looking for target devices …
> found matching product ID
> adding device
> Found devices in target mode or class (1)
> Looking for default devices …
> found matching product ID
> adding device
> Found device in default mode, class or configuration (1)
>Accessing device 003 on bus 002 …
> Getting the current device configuration …
> OK, got current device configuration (1)
> Using first interface: 0×00
> Using endpoints 0×01 (out) and 0×82 (in)
> Not a storage device, skipping SCSI inquiry
>
> USB description data (for identification)
> ————————-
> Manufacturer: HUAWEI Technology
> Product: HUAWEI Mobile
> Serial No.: not provided
> ————————-
> Sending Huawei control message …
> OK, Huawei control message sent
> -\> Run lsusb to note any changes. Bye.

然后，
> \# ls /dev/ttyUSB\*
> /dev/ttyUSB0 /dev/ttyUSB1 /dev/ttyUSB2

已经有了3个 ttyUSB 设备。
###配置wvdial###
运行下面的命令来生成 wvdial 的配置文件：
> \# wvdialconf
> Editing `/etc/wvdial.conf’.
>
> Scanning your serial ports for a modem.
>
> Modem Port Scan<*1>: S0 S1 S2 S3 S4 S5 S6 S7
> ttyUSB0<\*1>: ATQ0 V1 E1 — OK
> ttyUSB0<\*1>: ATQ0 V1 E1 Z — OK
> ttyUSB0<\*1>: ATQ0 V1 E1 S0=0 — OK
> ttyUSB0<\*1>: ATQ0 V1 E1 S0=0 &C1 — OK
> ttyUSB0<\*1>: ATQ0 V1 E1 S0=0 &C1 &D2 — OK
> ttyUSB0<\*1>: ATQ0 V1 E1 S0=0 &C1 &D2 +FCLASS=0 — OK
> ttyUSB0<\*1>: Modem Identifier: ATI — Manufacturer: huawei
> ttyUSB0<\*1>: Speed 9600: AT — OK
> ttyUSB0<\*1>: Max speed is 9600; that should be safe.
> ttyUSB0<\*1>: ATQ0 V1 E1 S0=0 &C1 &D2 +FCLASS=0 — OK
> ttyUSB1<\*1>: ATQ0 V1 E1 — failed with 2400 baud, next try: 9600 baud
> ttyUSB1<\*1>: ATQ0 V1 E1 — failed with 9600 baud, next try: 9600 baud
> ttyUSB1<\*1>: ATQ0 V1 E1 — and failed too at 115200, giving up.
> ttyUSB2<\*1>: ATQ0 V1 E1 — OK
> ttyUSB2<\*1>: ATQ0 V1 E1 Z — OK
> ttyUSB2<\*1>: ATQ0 V1 E1 S0=0 — OK
> ttyUSB2<\*1>: ATQ0 V1 E1 S0=0 &C1 — OK
> ttyUSB2<\*1>: ATQ0 V1 E1 S0=0 &C1 &D2 — OK
> ttyUSB2<\*1>: ATQ0 V1 E1 S0=0 &C1 &D2 +FCLASS=0 — OK
> ttyUSB2<\*1>: Modem Identifier: ATI — Manufacturer: huawei
> ttyUSB2<\*1>: Speed 9600: AT — OK
> ttyUSB2<\*1>: Max speed is 9600; that should be safe.
> ttyUSB2<\*1>: ATQ0 V1 E1 S0=0 &C1 &D2 +FCLASS=0 — OK
>
> Found a modem on /dev/ttyUSB0.
> Modem configuration written to /etc/wvdial.conf.
> ttyUSB0: Speed 9600; init “ATQ0 V1 E1 S0=0 &C1 &D2 +FCLASS=0″
> ttyUSB2: Speed 9600; init “ATQ0 V1 E1 S0=0 &C1 &D2 +FCLASS=0″

可以看到，配置文件在*/etc/wvdial.conf*，然后修改一下该文件，我修改后的文件内容如下:
> \# cat /etc/wvdial.conf
>
> [Dialer Defaults]
> Init1 = ATZ
> Init2 = ATQ0 V1 E1 S0=0 &C1 &D2 +FCLASS=0
> Modem = /dev/ttyUSB0
> Phone = *99#
> Idle Seconds = 300
> Modem Type = Analog Modem
> Stupid Mode = 1
> Compuserve = 0
> Baud = 9600
> Auto DNS = 1
> Dial Command = ATDT
> Ask Password = 0
> ISDN = 0
> Password = any
> Username = any

###拨号上网###
接下来就直接运行 wvdial 拨号：
> \# wvdial
> –> WvDial: Internet dialer version 1.60
> –> Initializing modem.
> –> Sending: ATZ
> ATZ
> OK
> –> Sending: ATQ0 V1 E1 S0=0 &C1 &D2 +FCLASS=0
> ATQ0 V1 E1 S0=0 &C1 &D2 +FCLASS=0
> OK
> –> Modem initialized.
> –> Idle Seconds = 300, disabling automatic reconnect.
> –> Sending: ATDT\*99#
> –> Waiting for carrier.
> ATDT\*99#
> CONNECT
> –> Carrier detected. Starting PPP immediately.
> –> Starting pppd at Mon Jan 13 23:46:44 2013
> –> Pid of pppd: 32212
> –> Using interface ppp0
> –> pppd: [1e][7f]
> –> pppd: [1e][7f]
> –> pppd: [1e][7f]
> –> pppd: [1e][7f]
> –> pppd: [1e][7f]
> –> local IP address 172.20.197.35
> –> pppd: [1e][7f]
> –> remote IP address 10.64.64.64
> –> pppd: [1e][7f]
> –> primary DNS address 202.106.195.68
> –> pppd: [1e][7f]
> –> secondary DNS address 202.106.46.151
> –> pppd: [1e][7f]
> –> Script /etc/ppp/ip-up run successful
> –> Default route Ok.
> –> Nameserver (DNS) Ok.
> –> Connected… Press Ctrl-C to disconnect
> –> pppd: [1e][7f]

可以看到已经设置了IP地址，和DNS服务器地址，也就是OK啦！！
**ifconfig** 一下，可以看到如下的链接信息：
> \# ppp0 Link encap:Point-to-Point Protocol
> inet addr:172.20.197.35 P-t-P:10.64.64.64 Mask:255.255.255.255
> UP POINTOPOINT RUNNING NOARP MULTICAST MTU:1500 Metric:1
> RX packets:20496 errors:0 dropped:0 overruns:0 frame:0
> TX packets:18854 errors:0 dropped:0 overruns:0 carrier:0
> collisions:0 txqueuelen:3
> RX bytes:14708447 (14.0 Mb) TX bytes:2844560 (2.7 Mb)

这样就大功告成啦!
最后，要感谢下[山里狼][sll_link]的[openSUSE简单配置][opensuse_jdpz_link]这篇文章，我也就是按照其指导弄的，虽然有些配置不太一样!

[usb_modeswitch_link]: http://software.opensuse.org/package/usb_modeswitch
[wvidial_link]: http://software.opensuse.org/package/wvdial
[sll_link]: http://home.cnblogs.com/u/shanlilang/
[opensuse_jdpz_link]: http://www.cnblogs.com/shanlilang/archive/2012/11/18/2776080.html
