---
layout: post
title: "【翻译】如何在Unix Shell脚本中使用ftp下载文件"
date: 2013-01-15 21:33:20 *0800
comments: true
categories: "Translation"
description: "翻译的一篇关于如何在Unix Shell脚本中使用HERE Doucment来调用ftp命令下载文件"
---

【原文】[How Do I ftp and Download files from a UNIX Shell Script][orignal_article_link]

问题：我想在一个shell脚本内执行ftp，在脚本内部就提供用户名和密码来下载文件。你能给我解释下怎么样在shell脚本中执行这个任务吗？
答：为了在批量模式下用ftp下载/上传文件，你可以从命令行使用称为“[HERE document][here_doc_link]”的FTP脚本，或者像下面说的一样在脚本中调用FTP。
<!-- more -->
####使用 “HERE document” 的 FTP 脚本

> \$ ftp -in URL << SCRIPTEND  
> user USERNAME PASSWORD  
> binary  
> cd PATH  
> mget PATH  
> SCRIPTEND  

在上面的ftp脚本中：
*   ftp : ftp命令  
*   \-i : 不用交互式提示  
*   \-n : 不用自动登录  
*   user USERNAME PASSWORD : 使用提供的用户名和密码登录  
*   binary : 为二进制文件传输设置模式  
*   cd PATH : 在远程机器上改变目录  
*   mget PATH : 获取指定文件  
*   SCRIPTEND : 指定 “HERE document” 开始和结束的标记“HERE document”用来为命令提供输入，请参考[HERE document][here_doc_link]。  

####在Shell脚本中使用 FTP 脚本

下面是一个简单的例子用来从FTP服务器下载一个tar文件
> \$ cat download.sh  
> ftp -in mirrors.issp.co.th << SCRIPTEND  
> user anonymous test@test.com  
> binary  
> cd cpan/authors/id/P/PM/PMQS/  
> mget Compress-Raw-Bzip2-2.027.tar.gz  
> SCRIPTEND  

执行这个脚本来下载文件
> \$ sh download.sh  
> \$ ls  
> download.sh  
> Compress-Raw-Bzip2-2.027.tar.gz  

[orignal_article_link]: http://www.thegeekstuff.com/2010/12/how-do-i-ftp-and-download-files-from-a-unix-shell-script/
[here_doc_link]: http://en.wikipedia.org/wiki/Here_document
