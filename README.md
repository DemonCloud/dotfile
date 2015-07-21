# Aix-Vim 

## Introduction 简介

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/y1.png" alt="YVIM Neo previews"/>
<hr>

<a href="#screen" rel="#screen">Screen Shot ::BOOM! </a>

这些配置文件做了如下事情：

>	1. 使用 [Vundle](https://github.com/gmarik/Vundle.vim) 管理插件
>	2. 最新版本YVIM编译时 支持Perl 5.22.1, Python 2.7.10, Python 3.4.3, Ruby 2.2.2, Lua 5.3.0, Tcl 8.6.4, libXpm
>	3. 包含了各种流行实用的插件，包含通用配置（最佳实践,深度优化，适配原生Vim 和 NeoVim）
>	4. 修复了Tmux Bash 中 Vim 不支持 Alt 组合键的问题
>	5. 解决了部分插件按键冲突，某些插件加载后相互冲突导致Gvim顿卡
>	6. 解决了Gvim 去除了右边下边GUI白边的问题,详情: [issue1](https://stackoverflow.com/questions/9265984/strange-gvim-inner-borders) [issue2](https://groups.google.com/forum/#!topic/vim_dev/hfN-kMZDAEY)
>	7. Windows 和 Linux 下的原生按键配置均做了强化处理
>	8. 原生制定的 Statusline 配合主题 J, 不喜可自己更换XXXLine系列插件


## Install 安装

#### 配置文件

下载项目 ： [dofile-YVIM](https://github.com/DemonCloud/dotfile-YVIM/archive/master.zip)

或Clone项目 ： ``git clone https://github.com/DemonCloud/dotfile-YVIM.git``

更新项目 ： ``git pull -u``



<br>

#### Windows

下载 ：

[[YCIM for Windows](http://pan.baidu.com/s/1i3ImvyP) -- Update 2015.7.14 集成 NeoComplete 和 YoucompleteMe 支持 Ultisnips\(强力推荐，请看下面，安装Lua\)

> 解压即可直接使用. 已经集成的 [Vundle](https://github.com/gmarik/Vundle.vim), 包含最新的配置文件``_vimrc``
>
> 注意：请运行 ``Vim\vim74\gvim.exe`` 文件. 此文件重新编译 最新版本YVIM 支持Perl 5.22.1, Python 2.7.10, Python 3.4.3, Ruby 2.2.2, Lua 5.3.0, Tcl 8.6.4, libXpm
>
> Window 2015.7.1 之后不再更新

<br>

#### Linux

> **1.** 一般来说，Linux 下都会自带 Vim, 但是不一定会自带 Gvim. 以 Ubuntu 为例，先安装Gvim：

> ``sudo apt-get install gvim``

>	``sudo apt-get install vim vim-gnome vim-gtk``

<br/>
> **2.** 安装 [Vundle](https://github.com/gmarik/Vundle.vim)

<br/>
> **3.** 将除了``_vimrc``文件之外的所有文件都Copy到``~/``,也就是Linux Home 根目录下 

> 更多具体的位置信息，可以输入``:version``查看Vim默认配置文件的几个路径.

<br/>

> **4.** 一般来说。 插件会安装在 ``～/.vim/bundle/`` 目录下，因为要取得 Linux 文件读写权限。

> 如果插件位置不在 ``/home/用户/`` 路径下，一般不会获得读写自由的权限。 可以使用 Linux ``chmod`` 命令解决读写权限问题

> ``sudo chmod +777 -R  path to/files/target``

<br/>

> **5.** 很多插件是需要第三方外部组件的支持.以下我列出一些依赖列表:

- [Lua](http://lua.org) (neocomplete)

	- 最新版本YVIM编译时 支持Perl 5.22.1, Python 2.7.10, Python 3.4.3, Ruby 2.2.2, Lua 5.3.0, Tcl 8.6.4, libXpm

	- 所以Windows 和 Linux 下都需要安装 Lua ， 用于支持 Neocomplete 智能补全插件.

	- Linux 安装太简单了，可以自己查找资料， Ubuntu下直接有源： ``sudo apt-get install lua5.3``

	- 本人已经在windows下的Lua5.2 和 Lua5.3 都做了整合,使用哪个版本的Lua需要根据Vim具体支持的Lua版本，下载后加入Windows环境变量就可以直接使用：

	- Download [Lua5.3](http://pan.baidu.com/s/1eQB6I2m) , [Lua5.2](http://pan.baidu.com/s/1eQrnRJs)

	- 将 Lua RAR 解压出来（推荐是C盘里，因为要设置环境变量,和方便管理，当然其他盘也是可以的）

	- 添加环境变量：（以C盘为例，我将Lua解压至 C:\Program Files (x86)\ 文件夹下，不同盘，``LUA_DIR`` 路径不同）

			- LUA_DIR : C:\Program Files (x86)\Lua

			- LUA_CPATH : ?.dll;%LUA_DIR%\?.dll

			- LUA_PATH : ?.lua;%LUA_DIR%\lua\?.lua

			- 最后在Path中增加Lua文件夹位置的环境变量，就搞定了 : C:\Program Files (x86)\Lua;


- [NodeJS](http://nodejs.org) (syntastic)

	- 安装完成 NodeJS 以后使用 npm 安装依赖

	- ``npm install -g jshint``   JSHint 语法检测

	- ``npm install -g csslint``  CSSLint 语法检测

	- ``npm insatll -g tern``     JavaScript 智能提示扩展


- [the\_silver\_searcher](https://github.com/ggreer/the_silver_searcher) (ag.vim)

	- 安装 Ag.vim 的依赖, Ag 代码搜索需要 the\_silver\_searcher Python组件的支持

	- Linux Ubuntu  下直接 ``sudo apt-get install silversearcher-ag`` 安装依赖, 也可以自己编译源码（推荐自己编译）

	- Windows 下比较麻烦. 先安装 [Chocolatey](https://chocolatey.org) 安装完成之后CMD中使用命令:``choco install ag`` 就可以了.



## Update Plugin 更新插件

在安装完成 Vundle 之后。重启 GVim

输入 ``:BundleInstall``  安装插件

输入 ``:BundleUpdate``  更新插件

注意：``:BundleClean`` 清理插件请慎用.

## Screen Shot 截图


#### Preview

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/y2.png" alt="YVIM Neo previews"/>

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/y3.png" alt="YVIM Neo previews"/>

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/y4.png" alt="YVIM Neo previews"/>

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/y5.png" alt="YVIM Neo previews"/>

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/y6.png" alt="YVIM Neo previews"/>

#### GitView

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/y7.png" alt="YVIM Neo previews"/>

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/y8.png" alt="YVIM Neo previews"/>

#### HTML

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/yhtml1.png" alt="YVIM Neo previews"/>

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/yhtml2.png" alt="YVIM Neo previews"/>

#### CSS

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/ycss1.png" alt="YVIM Neo previews"/>

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/ycss2.png" alt="YVIM Neo previews"/>

#### JavaScript

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/yjs1.png" alt="YVIM Neo previews"/>

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/yjs2.png" alt="YVIM Neo previews"/>

#### PHP

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/yphp1.png" alt="YVIM Neo previews"/>

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/yphp2.png" alt="YVIM Neo previews"/>

#### JSON

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/yjson.png" alt="YVIM Neo previews"/>

#### MarkDown

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/ymkd.png" alt="YVIM Neo previews"/>


## Date 日志

-- update 2015.7.21 重构vim配置，Aix-Vim

