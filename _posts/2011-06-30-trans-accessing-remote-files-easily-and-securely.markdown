---
layout: post
title: "【翻译】简便安全地访问远程文件"
date: 2011-06-30 13:58:46 +0800
comments: true
categories: [Translation, Linux]
description: "翻译的一篇关于如何使用ssh来进行安全文件访问的文章"
---

【原文】[Accessing Remote Files Easily and Securely][original_article]

安全shell – [ssh][ssh_wikipedia]以及[scp][scp_wikipedia]是我每天基本上都会用到的工具。当在多系统上工作时，不设置[SAMBA][samba_site]或者[NFS][nfs_wikipedia]就能在机器之间移动文件是非常便利的。而你所需要的就是打开安全shell守护进程 – [sshd][openssh_site] 。
<!-- more -->

在我们进入[sshfs][sshfs_site]的细节之前，让我们来快速看一下ssh 。安全shell守护进程默认运行的端口22上。它使得可以运行一个加密的shell交互。带上-Y选项，你可以运行[X11][xorg_site]转发机制，允许你在远程机器上运行X11等图形程序以及在你当前的终端上显示窗口。

你可以通过*/etc/ssh/sshd\_config*(这个位置是在[ubuntu][ubuntu_site]系统上，不同发行版可能不同）文件来配置 [sshd][openssh_site]。这里，你可以禁用*root*访问旧的协议，[X11][xorg_site]转发等。一般的见解是，你限制越多的远程访问，你的系统对于潜在的攻击来说就越安全。如果你打算暴露你的[sshd][openssh_site]到英特网，你可能要调整你的*hosts.allow*和*hosts.deny*文件。有很多强化服务器和[ssh][ssh_wikipedia]的指南，这里就不讲细节了。

要使用ssh，你需要安装sshd。在[Ubuntu][ubuntu_site]系统，也就是**openssh-server**包。为了外部访问，你也需要在路由器/防火墙使用端口22的转发你的[外部IP][my_ip]。现在你需要使用你的普通用户权限登录到你的机器。

> $ ssh user@192.168.1.100   </br>
> user@192.168.1.100′s password:

输入密码，你就可以完全访问远程系统了。
便捷的安全拷贝命令 – scp，也以同样的方式工作。要拷贝*test.txt*文件到用户的远程主目录，简单地输入：

> $ scp test.txt user@192.168.1.100:

你将会被提示输入密码。你也可以同样的拷贝远程系统的文件到本地。写明的命令演示了怎么样拷贝一个完全路径的文件到本地机器：

> $ scp user@192.168.1.100:/var/log/messages remote-message

这两个命令意味着你可以自由地在机器之间拷贝文件。而[sshfs][sshfs_site]作为一个可以挂载的文件系统提供了这样的功能。在进入怎样设置sshfs之前，我们来快速看看什么是sshfs。

sshfs是用[FUSE][fuse_site]，以及依赖ssh的[sftp][sftp_wikipedia]部分来访问远程机器。作为一个远程文件访问协议，sshfs不是非常好，例如，多用户同时写入同一文件，将造成损坏。而优点是继承了安全性和容易建立。

那么，怎么用呢？让我们来看一个非常简短的示例。

> $ sshfs user@192.168.1.100: remote-home   </br>
> $ ls remote-home   </br>
> Desktop  Documents  Downloads  Music  </br>
> $ fusermount -u remote-home

初始的sshfs命令挂载用户远程的主目录到*remote-home*。你可以在冒号后指定另一个路径来挂载远程文件系统的任何一个部分。访问仅仅受用户的访问权限限制。

在挂载的文件夹上使用ls或其他原始命令，就像远程主目录被本地挂载一样。所有的工具都工作，例如你可以登录到你的远程机器，使用你本地安装的构建工具构建软件。

要卸载文件系统，使用FUSE工具包中的**fusermount**命令。

总结，sshfs是一个容易建立的远程文件访问工具。如果涉及多个用户，它应该被小心使用。它使得可以易如反掌地临时访问远程文件系统，也方便从虚拟机挂载文件系统来访问和监视，也方便远程安装，编译和调试。总之，是我一直保留在我的工具箱中的工具之一。


[original_article]: http://www.linuxjournal.com/content/accessing-remote-files-easy-and-secure
[ssh_wikipedia]: http://en.wikipedia.org/wiki/SSH
[scp_wikipedia]: http://en.wikipedia.org/wiki/Secure_copy
[samba_site]: http://www.samba.org/
[nfs_wikipedia]: http://en.wikipedia.org/wiki/Network_File_System
[openssh_site]: http://www.openssh.com/
[sshfs_stie]: http://fuse.sourceforge.net/sshfs.html
[xorg_site]: http://www.x.org/
[ubuntu_site]: http://www.ubuntu.com/
[my_ip]: http://www.whatismyip.com/
[fuse_site]: http://fuse.sourceforge.net/
[sftp_wikipedia]: http://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol
