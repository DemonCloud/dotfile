# DOTFILE

![YiJun's Vim](http://7j1zwt.com1.z0.glb.clouddn.com/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202017-01-06%20%E4%B8%8B%E5%8D%882.56.19.png)

<br>

![YiJun's Vim](http://7j1zwt.com1.z0.glb.clouddn.com/2017-06-20_081950.png)

<br>

## INTRODUCTION

**dotfile** 是从我刚接触Vim开始一直维护至今的，模块化的维护思路，汲取众多强人的按键经验，提供诸位参考与学习。

**字体为Aix**，是由我通过font forge制订的点阵字体(BITMAP FONTS)，**已经无偿开源, 如果你从中受益，请赏赐一个star**。

字体格式：

* Mac OSX -> Aix.dfont
* Windows -> Aix.fon
* Linux -> Aix.bdf


<br>


## INSTALL

#### Unix

> Unix环境下直接执行 ``./install.sh`` 即可. 

> 首次进入Vim时，执行 ``:PlugInstall`` 便可以轻松安装依赖，完成配置.

<br>

#### Window 

> 通常来说， Win下的Vim配置和Unix下的会有所不同

> 于是我单独维护了一个Win的版本，在家中做开发时候需要用到。

> **后期会发布打包版本**





<br>

## HOW TO CONFIGURE

在开始配置Vim之前，我们需要知道，许多插件都需要有外部组件，开发环境的支持,

如何配置这些环境，下面给出了一些非常简单有效的办法:

<br>

#### Python (Ultisnip, YouCompleteMe)

Python 是Vim开发中必备的开发环境之一，因为大多数著名的插件都是用Python写的.

Windows系统只需要去Python官网下载一个安装文件即可，一键安装.

<br>


#### [Lua](http://lua.org) (neocomplete)

安装Lua只要是用于支持 neocomplete的只能补全.

- Linux 下直接使用包管理安装即可 ``sudo apt-get install lua5.3``

- Mac 下可以使用brew包管理直接进行安装 ``brew install lua``

- Windows 下比较麻烦，首先必须安装MinGW，然后配置环境变量，指向MinGW\bin 目录（里面包含g++,gcc）

本人已经在windows下的Lua5.2 和 Lua5.3 都做了整合,

使用哪个版本的Lua需要根据Vim具体支持的Lua版本 Download: [Lua5.3](http://pan.baidu.com/s/1eQB6I2m) , [Lua5.2](http://pan.baidu.com/s/1eQrnRJs)

1. 将 Lua RAR 解压出来（推荐是C盘里，因为要设置环境变量,和方便管理，当然其他盘也是可以的）

2. 添加环境变量：（以C盘为例，我将Lua解压至 C:\Program Files (x86)\ 文件夹下，不同盘，``LUA_DIR`` 路径不同）

   LUA_DIR : C:\Program Files (x86)\Lua

   LUA_CPATH : ?.dll;%LUA_DIR%\?.dll

   LUA_PATH : ?.lua;%LUA_DIR%\lua\?.lua

   最后在 PATH 环境变量末尾增加 : C:\Program Files (x86)\Lua;

<br>


#### [NodeJS](http://nodejs.org) (ale,syntastic)

安装NodeJS的主要目的是可以配合 ale 这样的代码检测插件做语法检测。

当然NodeJS中的tern_for_javascript 也能扩展Vim Javascript的智能补全

使用 npm 安装**全局依赖**

- ``npm install -g jshint``   JSHint 语法检测

- ``npm install -g csslint``  CSSLint 语法检测

- ``npm insatll -g tern``     JavaScript 智能提示扩展


<br>


#### [the\_silver\_searcher](https://github.com/ggreer/the_silver_searcher) (ag.vim)

Vim 代码搜索必须依赖的项目，1G的项目文件中代码搜索基本是秒搜

首先需要安装 ag.vim , 再安装这个搜索器

- Linux 下直接包管理安装 ``sudo apt-get install silversearcher-ag`` , 也可以自己编译源码（推荐）

- Mac  下直接使用brew包管理安装 ``brew install ag``

- Windows 下比较麻烦. 先安装 [Chocolatey](https://chocolatey.org) , 之后CMD中使用命令:``choco install ag``


<br>

## ABOUT NEOVIM

NeoVim 由于正处于开发阶段，所以，配置文件到位置会时常变动。

``.nvimrc``已经不生效了，具体到做法是，打开nvim之后输入 ``:version`` 可以看到nvim当前版本加载配置文件的名字以及具体路径。

例如，在version中我看到 neovim 加载了 ``sysinit.vim`` 作为配置文件，**那么，你需要做工作就是：**

 - 将 ``.vimrc`` 中的代码， copy到 ``sysinit.vim`` (注意路径) 这样就可以完美使用NeoVim了
