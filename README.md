# Aix-Vim 

## Introduction ( Version 1.0 release )

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/Screenshot%20from%202016-06-22%2010-32-50.png" alt="Aix-Vim Crazy!"/>
<hr>
<img src="http://7j1zwt.com1.z0.glb.clouddn.com/Screenshot%20from%202016-06-22%2010-37-02.png" alt="Aix-Vim Preview">


## Install 安装

#### 配置文件

下载项目 ： [[Aix-Vim]](https://github.com/DemonCloud/Aix-Vim/archive/master.zip)

或Clone项目 ： ``git clone https://github.com/DemonCloud/Aix-Vim.git``

更新项目 ： ``git pull``

#### 字体(已开源，项目的fonts文件夹中)

``我已经开源了自己的Aix字体，可以在项目的fonts文件夹中找到``

没用过OSX，所以我不知道点阵字体MAC是不是支持，bdf格式的点阵字体目前测试可以在Linux下使用，有些Linux默认是不开启点阵字体的支持的，具体可以百度或者谷歌如何在Linux上安装点阵字体，有些Linux默认就支持点阵字体，可以直接安装使用。

Windows是完全不支持bdf字体的，所以大家可以死心了，有一种想法是把bdf转化成ttf，目前我没有找到方法，能转ttf的朋友麻烦提交以下issue分享给大家.

Windows可用支持字体：https://github.com/ryanoasis/nerd-fonts

相关插件：https://github.com/ryanoasis/vim-devicons

安装字体完成之后，修改 ``aix/.aixinit.vim`` 中 ``guifont`` 的设置，

#### Linux

> **1.** 一般来说，Linux 下都会自带 Vim, 但是不一定会自带 Gvim. 以 Ubuntu 为例，先安装Gvim：

> ``sudo apt-get install gvim``

>	``sudo apt-get install vim vim-gnome vim-gtk``

> 然后运行  Aix-Vim  项目目录下的 ``install.sh``进行安装.

```Shell
 	$ ./install.sh
```

> 如果``install.sh``文件没有执行权限，请使用``sudo chmod 777 install.sh``


#### Windows

> 过几日更新Windows可以使用的版本


#### 配置说明(新手请详细看)

> **##** 很多插件是需要第三方外部组件的支持.以下我列出一些依赖列表:

- [Vundle](https://github.com/VundleVim/Vundle.vim) (插件管理器)

	- Vundle 是Vim最流行的插件管理器，

	- Linux 下项目中的 ``install.sh`` Shell默认会帮你安装好 Vundle 

	- 用Aix配置之前请先详细看下如何安装Vundle，否则Vim启动时报错

	- 安装好 Vundle 之后首次进入 Vim 请运行 `` :VundleInstall `` 安装所有插件

- [Lua](http://lua.org) (neocomplete)

	- 最新版本Aix-Vim编译时 支持Perl 5.22.1, Python 2.7.10, Python 3.4.3, Ruby 2.2.2, Lua 5.3.0, Tcl 8.6.4, libXpm

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

	- 需要注意的是，在Windows下，支持Lua之前必须安装好MinGW，也就是必须有g++和gcc的PATH 支持，否则配置Lua也不会生效

- [NodeJS](http://nodejs.org) (syntastic)

	- 安装完成 NodeJS 以后使用 npm 安装依赖

	- ``npm install -g jshint``   JSHint 语法检测

	- ``npm install -g csslint``  CSSLint 语法检测

	- ``npm insatll -g tern``     JavaScript 智能提示扩展

- [Vimproc](https://github.com/Shougo/vimproc.vim) (Neocomplete,VimShell,Unite)

	- Vimproc 默认在 vim/bundle/vimproc.vim/ 文件夹中

	- 主要是用来完成一些异步调用和异步任务的.

	- Linux 环境下可以直接进入``vimproc.vim`` 文件夹目录，执行``make``即可编译 

	- Windows 环境下有点蛋疼，先安装MinGW项目，然后安装gcc和g++ 以及cmake, 然后至目录编译，详情请看一下项目的Markdown

- [the\_silver\_searcher](https://github.com/ggreer/the_silver_searcher) (ag.vim)

	- Vim 代码搜索必须依赖的项目，1G的项目文件所有代码搜索基本是秒搜

	- 安装 Ag.vim 的依赖, Ag 代码搜索需要 the\_silver\_searcher Python组件的支持

	- Linux Ubuntu  下直接 ``sudo apt-get install silversearcher-ag`` 安装依赖, 也可以自己编译源码（推荐自己编译）

	- Windows 下比较麻烦. 先安装 [Chocolatey](https://chocolatey.org) 安装完成之后CMD中使用命令:``choco install ag`` 就可以了.


#### 关于NEOVIM

NeoVim 由于正处于开发阶段，所以，配置文件到位置会时常变动。
``.nvimrc``已经不生效了，具体到做法是，打开nvim之后输入``:version`` 可以看到nvim当前版本加载配置文件的名字以及具体路径。
例如，在version中我看到 neovim 加载了`` example.vim`` 作为配置文件，那么，你需要做工作就是：
将 aix文件夹中的 ``.aix.vim`` 的代码，copy到``example.vim`` 中，这样 Aix-Vim 就可以正常加载了


## Date 日志

-- update 2016.6.22 测试基本完成，发布1.0版本

-- update 2016.3.21 增加修改，支持neovim

-- update 2015.10.15 开源点阵字体

-- update 2015.7.21 重构vim配置，Aix-Vim

