# YiJun Gvim DotFile 

## Introduction 简介

这个 ``dotfile`` 项目包含了我最新的 Vim 配置文件。与其他人的 Vim 配置不同

这些配置文件做了如下事情：

>	1. 使用 [Vundle](https://github.com/gmarik/Vundle.vim) 管理插件
>	2. 包含了各种流行实用的插件，包含通用配置（最佳实践）
>	3. 重新编译 支持 `Python` `Lua`（某些插件需要Lua与Python的支持）
>	4. 解决了部分插件按键冲突，某些插件加载后相互冲突导致Gvim顿卡
>	5. 默认支持了 Windows 常用操作 [``Ctrl-C``复制，``Ctrl-V``粘贴，``Ctrl-X``剪切...]
>	6. 解决了Gvim 去除了右边下边GUI白边的问题,详情: [issue1](https://stackoverflow.com/questions/9265984/strange-gvim-inner-borders) [issue2](https://groups.google.com/forum/#!topic/vim_dev/hfN-kMZDAEY)
>	7. 默认包含几款经典的主题。可切换。
>	8. __不强奸你的按键配置，请按照自己的习惯自定义按键，默认均为原生Vim按键__
>


## Install 安装

下载项目 ： [dofile-YVIM](https://github.com/DemonCloud/dotfile-YVIM/archive/master.zip)

或Clone项目 ： ``**git clone https://github.com/DemonCloud/dotfile-YVIM.git**``

<br>

#### Windows 

下载 ： [YVIM for Windows](http://pan.baidu.com/s/1jG6Cdee)

> 解压即可直接使用. 已经集成的 [Vundle](https://github.com/gmarik/Vundle.vim), 包含最新的配置文件``_vimrc``
> 
> __注意：请运行 ``Vim\vim74\_Vim.exe`` 文件. 此文件重新编译支持Lua 以及替换了图标.__

<br>

#### Linux

> **1.** 一般来说，Linux 下都会自带 Vim, 但是不一定会自带 Gvim. 以 Ubuntu 为例，先安装Gvim：

> ``sudo apt-get install gvim``

<br/>
> **2.** 安装 [Vundle](https://github.com/gmarik/Vundle.vim)

<br/>

> **3.** 将项目中的 ``vimrc`` 文件放置在 ``/usr/share/vim`` 目录下.

> 启动 ``GVim`` 即可


## Update Plugin 更新插件

在安装完成 Vundle 之后。重启 GVim 

输入 ``:BundleInstall``  安装插件

输入 ``:BundleUpdate``  更新插件

注意：``:BundleClean`` 清理插件请慎用.


## Date 日志 

-- update 2015.5.29  上传项目

