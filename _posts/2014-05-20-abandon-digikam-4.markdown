---
layout: post
title: "放弃使用digikam 4.0版"
date: 2014-05-20 09:12:35 +0000
comments: true
categories: "Photography"
description: "吐槽一下digikam 4.0版的一些问题"
---

最近[digikam][digikam_link]发布最新的4.0版：

- 一个新的工具专注于组织整个标签层级；
- 一个新的维护工具专注于分析图像质量和自动使用Pick Lables来自动标签；
- 为了后面切换所有的digikam代码到Qt5，Showfoto的缩略兰已经移植到了Qt的model/view；
- 修复了一些导入工具的长期问题；
- 该版本丢弃了最后的Qt3支持的类，全部移植到了Qt4的model/view；
- 该版本还包含了多CPU支持，支持一些需要大量运算的工具。
<!-- more -->

详细信息可参看 [http://www.digikam.org/node/713][release_note]

由于之前在使用3.5版本的时候，[GPSSync][GPSSync_link]插件总是导致digikam崩溃，所以想尝试下升级到4.0版，看是否解决了这个问题。
不过没想到升级到4.0之后，GPSSync的问题没有解决，反而有几个操作不习惯：

1. 在一个照片文件夹内右键一个照片，选择使用showfoto打开，在3.5中，会默认导入此文件夹下的所有照片，但是在4.0会只打开一张照片（我的习惯是每次相机拍完照，都会使用showfoto调整所有照片）；
2. 在showfoto中，调整完一张照片后，3.5版单击侧边照片导航栏里的其他照片，就可将其导入编辑窗口，但是在4.0中，需要双击；
3. 在showfoto中，_Delete_键删除一张照片，在3.5中，它的缩略图将会从侧边栏消失，4.0中将会保留缩略图；
4. 最大的一个问题是，修改了一照片后，在点击保存之前，双击选了其他照片，会提示是否要保存修改，确定覆盖后，在3.5回覆修改的原始照片，但是在4.0居然会覆盖后面双击选中的照片。

上面是我在使用过程中发现的一些情况了，当然这些使用也许对于其他人是不错的，但是我不习惯，所以最后放弃了4.0版，又回到了3.5版。

至于那个GPSSync插件的问题，我也在[KDE][KDE_link]上报了一个[Bug][Bug_link]，不过好像没人确认问题。

[digikam_link]: http://www.digikam.org/
[release_note]: http://www.digikam.org/node/713
[GPSSync_link]: http://www.digikam.org/node/349
[KDE_link]: http://www.kde.org
[Bug_link]: https://bugs.kde.org/show_bug.cgi?id=334817
