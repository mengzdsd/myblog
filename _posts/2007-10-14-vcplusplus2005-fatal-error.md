---
layout: post
title: 'VC++2005 :Fatal Error C1902:程序数据库管理器不匹配'
date: 2007-10-14 15:03:32 +0000
comments: true
categories: Programming
description: "记录大学时期编程的故事"
---

安装VC++ SP1后，调试程序时候提示错误：   
> Fatal Error C1902：程序数据库管理器不匹配；请检查安装   

不知道什么意思，于是Google了一下，网上有说是“创建程序数据库文件(.pdb)时所使用的*DBI.dll*版本比编译时发现的版本新导致的。 
<!-- more -->
   
可是不知道怎么安装新的*DBI.dll*啊，于是又去MSDN上搜索错误信息，于是搜出了这么一条：   
> [Fatal Error C1902 (C++)][error_msdn_link] ：A program database file (.pdb) was created using a newer version of mspdb80.dll than the one found while compiling.This error usually indicates that mspdbsrv.exe or mspdbcore.dll are missing or have different versions from mspdb80.dll. Ensure matching versions of mspdbsrv.exe, mspdbcore.dll, and mspdb80.dll are installed on your system.   

意思好像是：程序的数据库文件（.pdb)被一个比编译时版本新的*mspdb80.dll*所生成，错误通常指示*mspdbsrv.exe*或*mspdbcore.dll*丢失或者其版本和*mspdb80.dll*的版本不同，确定这三个文件的相同版本安装在系统里。   
   
于是，我到我VC安装目录*\Program Files\Microsoft Visual Studio 8\VC\bin*里一看，果然这三个文件的版本不一样，然后我到目录*D:\Program Files\Microsoft Visual Studio 8\Common7\IDE*里重新拷贝了这个三个相同版本的文件到*\Program Files\Microsoft Visual Studio 8\VC\bin*，然后重新编译程序，果然没有那个错误了。   

[error_msdn_link]: http://msdn2.microsoft.com/en-us/library/8y7hea02(VS.80).aspx