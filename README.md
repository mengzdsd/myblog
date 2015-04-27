###我的博客项目###
基于[Jekyll][jekyll_link]构建的博客主页。 
   
部署在[AWS S3][aws_s3_link]服务上。  
   
查看的我的博客，请访问[blog.mengz.me][myblog_link]。   

####写博文####
`./newPost.pl <file_name>`  
file_name: 博文源文件的文件名，保存在 *_posts/* 文件夹下。  

`./createCT.pl` 用来生成新的类别和标签，用法： 
``` 
Usage: ./createCT.pl -t [type] -e [ename] -c [cname]
        ./createCT.pl -h
        -t - Specify the type, the type are:
                C - For category.
                T - For tag.
        -e - Specify the ename for catgeory or tag.
        -c - Specify the cname for catgory or tag.
        -h - Print this help.
Example: ./createCT.pl -t T -e blog -c 博客
```

####部署####
使用 [s3_website][link_s3_website] 进行部署。
`s3_website push`  

[jekyll_link]: http://jekyllrb.com
[aws_s3_link]: http://aws.amazon.com/s3
[myblog_link]: http://blog.mengz.me
[link_s3_website]: https://github.com/laurilehmijoki/s3_website
