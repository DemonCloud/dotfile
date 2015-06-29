# YiJun Gvim DotFile 

## Introduction 简介

<hr>
<img src="http://7j1zwt.com1.z0.glb.clouddn.com/yvim.png" alt="YVIM Neo previews"/>

<hr>

<img src="http://7j1zwt.com1.z0.glb.clouddn.com/yvim1.png" alt="YVIM Coding previews">
<hr>

这些配置文件做了如下事情：

>	1. 使用 [Vundle](https://github.com/gmarik/Vundle.vim) 管理插件
>	2. 包含了各种流行实用的插件，包含通用配置（最佳实践,深度优化，适配原生Vim 和 NeoVim）
>	3. 重新编译Vim 支持 `Python` `Lua`（某些插件需要Lua与Python的支持）
>	4. 解决了部分插件按键冲突，某些插件加载后相互冲突导致Gvim顿卡
>	5. 默认支持了 Windows 常用操作 [``Ctrl-C``复制，``Ctrl-V``粘贴，``Ctrl-X``剪切...]
>	6. 解决了Gvim 去除了右边下边GUI白边的问题,详情: [issue1](https://stackoverflow.com/questions/9265984/strange-gvim-inner-borders) [issue2](https://groups.google.com/forum/#!topic/vim_dev/hfN-kMZDAEY)
>	7. Windows 和 Linux 下的原生按键配置均做了强化处理
>	8. 原生制定的 Statusline 配合主题 J, 不喜可自己更换XXXLine系列插件


## Install 安装

下载项目 ： [dofile-YVIM](https://github.com/DemonCloud/dotfile-YVIM/archive/master.zip)

或Clone项目 ： ``git clone https://github.com/DemonCloud/dotfile-YVIM.git``

更新项目 ： ``git pull -u``

<br>

#### Windows 

##### Windows Gvim 自2015.6.30 日最后一次整合上传之后不进行更新，包括``_vimrc`` 文件。

下载 ： 

[[YVIM for Windows With YouCompleteMe]](http://pan.baidu.com/s/1bnhOUf1) -- Update 2015.6.17 集成Windows YouCompleteMe\(配置过时\)

[[YCIM for Windows With NeoComplete]](http://pan.baidu.com/s/1qWQefik) -- Update 2015.6.24 集成 NeoComplete 支持 Ultisnips 


> 解压即可直接使用. 已经集成的 [Vundle](https://github.com/gmarik/Vundle.vim), 包含最新的配置文件``_vimrc``
> 
> 注意：请运行 ``Vim\vim74\_Vim.exe`` 文件. 此文件重新编译支持Lua 以及替换了图标.
>
> 关于字体的话, 我这里分享一个 PragmataPro : [Download](http://pan.baidu.com/s/1o6mlBPg)
>
> 如果不想使用我已经上传的**Gvim**压缩包:
>
> 但仍需要在 Windows下使用 **YoucompleteMe** 的插件， 可以直接Vundle安装以下这个已经编译好的YCM_WIN_x86的项目 ->
>
> [YouCompleteMe For Windows x86](https://github.com/xleng/YCM_WIN_X86)
>
> 注: **YouCompleteMe For Windows x86** 这个项目是Windows下已经编译好的YCM, 因为项目文件过大, 所以有可能用Vundle会安装失败,建议直接git clone之后丢到 vimfile/bundle/里,在_vimrc中加入 Plugin 'xleng/YCM_WIN_X86'.  然后Update 一次Vundle
>
> **在下载完成打包好的 YVIM 建议将 _vimrc 替换一次. 因为可能不是最新的配置**

<br>

#### Linux

> **1.** 一般来说，Linux 下都会自带 Vim, 但是不一定会自带 Gvim. 以 Ubuntu 为例，先安装Gvim：

> ``sudo apt-get install gvim``

> ``sudo apt-get install vim-gtk``

<br/>
> **2.** 安装 [Vundle](https://github.com/gmarik/Vundle.vim)

<br/>
> **3.** 将项目中的 ``vimrc`` 文件放置在 ``~/.vim/`` 或者 ``/usr/share/vim`` 目录下.

> 启动 ``GVim`` 即可

<br/>

> **4.** 一般来说。 插件会安装在 ``～/.vim/bundle/`` 目录下，因为要取得 Linux 文件读写权限。

> 如果插件位置不在 ``/home/用户/`` 路径下，一般不会获得读写自由的权限。 可以使用 Linux ``chmod`` 命令解决读写权限问题

> ``sudo chmod +777 -R  path to/files/target``

<br/>

> **5.** 很多插件是需要第三方外部组件的支持.以下我列出一些依赖列表:

- [NodeJS](http://nodejs.org) (syntastic)
	- 安装完成 NodeJS 以后使用 npm 安装依赖

	- ``npm install -g jshint``   JSHint 语法检测

	- ``npm install -g csslint``  CSSLint 语法检测

	- ``npm insatll -g tern``     JavaScript 智能提示扩展

- [the\_silver\_searcher](https://github.com/ggreer/the_silver_searcher) (ag.vim)

	- 安装 Ag.vim 的依赖, Ag 代码搜索需要 the\_silver\_searcher Python组件的支持

	- Linux Ubuntu  下直接 ``sudo apt-get install silversearcher-ag`` 安装依赖

	- Windows 下比较麻烦. 先安装 [Chocolatey](https://chocolatey.org) 安装完成之后CMD中使用命令:``choco install ag`` 就可以了.



## Update Plugin 更新插件

在安装完成 Vundle 之后。重启 GVim 

输入 ``:BundleInstall``  安装插件

输入 ``:BundleUpdate``  更新插件

注意：``:BundleClean`` 清理插件请慎用.


## Date 日志 

-- update 2015.6.29  更新Linux Neovim && Vim

-- update 2015.6.24  全部更新,重新打包Windows YVIM,增加 vim-table-mode 插件

-- update 2015.6.23  全部更新,增加强化搜索插件insearch, 强化原生按键. 重新打包 YVIM with NeoComplete

-- update 2015.6.20  更新Windows \_vimrc Fix emmet <S-Tab> confilct

-- updata 2015.6.18  上传 Windows Gvim 第二版, 完美支持 [NeoComplete](https://github.com/Shougo/neocomplete.vim) 补全神器2 

-- update 2015.6.17  重新上传 Windows Gvim 文件, 完美支持 [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)补全神器

-- update 2015.6.13  Linux NeoVim 优化

-- update 2015.6.12  强化 NeoVim 配置文件

-- update 2015.6.10  增加了 Neovim的配置文件

-- update 2015.6.8   更新插件

-- update 2015.6.4   解决 Windows 下中文字符乱码的问题 , 增加了 CtrlP 插件

-- update 2015.5.29  上传项目


