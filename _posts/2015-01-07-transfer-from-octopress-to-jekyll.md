---
layout: post
title: "从Octopress回到Jekyll"
date: 2015-01-07 07:39 AM
comments: true
categories: ["Ittech","Life"]
tags: ["blog","octopress","jekyll"]
description: "2015新的一年，记录本博客从基于Octopress迁移到基于Jekyll"
---

###[Jekyll][jekyll_link]###
Jekyll是一个将纯文本转化为静态博客网站的[Ruby][ruby_link]应用，也可以说是一个静态博客网站的框架。   
+ 简单：不需要数据库，不需要评论功能，不需要不断的更新版本——只用关心你的博客内容   
+ 静态：[Markdown][markdown_link](或 [Textile][textile_link]), [Liquid][liquid_link], 和HTML&CSS构建可发布的静态网站   
+ 博客形态：支持自定义地址，博客分类，单页应用，博客为单位存储，以及自定义的布局设计   
<!-- more -->

使用Jekyll可以快速构建一个静态网站，其基于[Github页面][githubpages_link]服务，因此可以很简单的在Github页面上免费发布网站。   
   
###[Octopress][octopress_link]###
那什么又是Octopress呢？它基于Jekyll做了增强的一个静态博客框架。   
直接基于Jekyll，我们需要自己编写很多HTML模板，CSS以及Javascript去实现一些增强功能。而Octoperss已经为我们做很多这样的事情，以及集成了很多有用的Jekyll插件，我们只需要克隆Octopress，安装其依赖和主题文件，就可以直接编写Markdown或者Textile文件的文章了。   
Octopress仍然支持Github页面服务，可以部署在Gihub页面上。当然你也可以自定Octopress的样式，更多信息可以参看[Octopress主页][octopress_link]。   
   
###从Octopress回到Jekyll###
为什么说我从Octopress回到Jekyll呢？之前我的博客网站，也就是该站点，是基于Octopress的，那现在已经转到基于Jekyll了，因为Octopress也是基于Jekyll，所以这里说“回到”。   
Octopress很强大，已经我我们做了很多事情，比如文章类别的模板，可以使用其集成的插件，基于主题的模板等等。 但是也因为其强大，想做一些自定义的东西，就需要学习更多东西。 由于我刚开始接触WEB技术，因此想从简单一点的Jekyll开始，这样也可以一边学习，一边使用。   
   
虽然Jekyll已经提供了想类别和标签之类的基础功能，但是需要我们自己编写模板来呈现。   
现在该站点基于Jekyll，我自己实现了类别的功能，后面还需要继续把标签也加上。
最后说一下，从Octopress迁移到Jekyll非常简单，只需要把原来的所有文章Markdown文件拿过来就可以。
   
如果你想尝试Jekyll，非常简单：   
1. 安装Ruby，这个请参考[Ruby站点][ruby_link]；   
2. 安装Jekyll Gem：   
> $ gem install jekyll   
3. 生成一个站点，运行：
> \$ jekyll new blogsite   
> \$ cd blogsite   
> \$ jekyll serve   
然后就可以通过访问*http://localhost:4000*查看了。

至于如何部署到Github页面服务，那也是相当简单的，查看[Github页面][githubpages_link]的说明吧。   

[jekyll_link]: http://jekyllcn.com/
[octopress_link]: http://octopress.org/
[ruby_link]: https://www.ruby-lang.org/en/
[markdown_link]: http://daringfireball.net/projects/markdown/
[textile_link]: http://redcloth.org/textile/
[liquid_link]: http://wiki.shopify.com/Liquid
[githubpages_link]: https://pages.github.com/

