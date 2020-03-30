![YiJun's Vim](https://s1.ax1x.com/2020/03/30/GnKS4x.png)

## INTRODUCTION

#### Vimrc

vimrc has been maintained until now when I first started learning Vim, I used to distribute files for maintenance work, and make the configuration simpler than the messy folders of other people's dotfiles, which makes it hard to imagine and find where you really need to make changes. These configurations have been carefully sanitized for a long time to become best practices in my personal daily development, incorporating many of Geek's configuration experiences and key mapping settings, keep it simple and fast at the same time

**Mainly perfect support:**

[**vimR(Neovim+Swift GUI)**](https://github.com/qvacua/vimr)

It just only focus **Mac OSX** platform, half-baked support **Linux**, if you care about **Windows7,8,10**, Maybe you just need to make some modifications to the configuration file.

<br>

| File                  | annotation                 |
| ----------------      | ----------------           |
| `.vimrc, sysinit.vim` | [ entry ]                  |
| `.base.vim`           | [ base universal config ]  |
| `.ignore.vim`         | [ ignore files ]           |
| `.init.vim`           | [ initialize config ]      |
| `.keymap.vim`         | [ Shortcut keymap config ] |
| `.plug.vim`           | [ plugin list ]            |
| `.plug.conf.vim`      | [ plugin config ]          |
| `.style.vim`          | [ colorscheme ]            |

<br>

#### OSX & Linux

run ``./install.sh``

start Vim and run ``:PlugInstall`` at first time

<br>

#### Windows

> by default, I do not intend to merge it to Windows

> you can change the dotfile manual for need:

<br>

## Required

 \+ Python3

 \+ Ruby

 \+ NodeJS

<br>

> Install compatibility packages

`pip2 install neovim`

`pip3 install neovim`

`npm install -g neovim`

`npm install -g eslint`

`gem install neovim`

`gem install mdl`

`brew install jq`
