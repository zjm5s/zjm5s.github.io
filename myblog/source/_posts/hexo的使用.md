---
title: hexo的使用
date: 2018-01-02 20:58:25
tags: hexo
---
## 这是折腾一天的收获
除了访问速度有点慢之外。可以选择码云托管解决这一问题。
## 从安装hexo到部署博客至github的步骤
因为我用的是arch linux，所以下步骤仅适用于部分linux

首先安装hexo所需要的环境
    
```
# pacman-S nodejs npm git
```
然后安装hexo
```
$ npm install -g hexo-cli
```

之后创建本地网站目录

```
$ mkdir blog
$ hexo init blog 
$ cd blog 
$ npm install
```

预览默认网站，在blog目录下执行

```
$ hexo s -g
INFO  Start processing
INFO  Hexo is running at http://localhost:4000/. Press Ctrl+C to stop.

```
之后在浏览器打开 http://localhost:4000/ 就可以看到网站了。这仅仅是本地能够访问的网站，要让别人的电脑也能访问，还要把它部署到github上。考虑这涉及到本地git与github的连接，后面我再补充

安装 hexo-deployer-git
```
$ npm install hexo-deployer-git --save
```
修改配置 用vim打开_config.yml编辑。
```
deploy:
  type: git
  repo: <repository url>
  branch: [branch]
```
之后再运行
```
$ hexo g
$ hexo d
//也可以用
$ hexo d -g
```
这样就可以通过 example.github.io 访问到hexo博客了