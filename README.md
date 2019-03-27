# oh-my-terminal

个人终端配置环境集合

## 工具集合

* zsh
* tmux
* vim

## 如何安装

1. 安装必要的软件

    ```bash
    sudo apt-get install git zsh tmux vim
    ```

1. 备份必要的配置文件

1. 安装本工程

    ```bash
    git clone https://github.com/alvisisme/oh-my-terminal.git ~/.oh-my-terminal
    sh ~/.oh-my-terminal/install.sh
    ```

1. 切换默认shell

    ```bash
    chsh -s $(which zsh)
    ```

1. 安装vim插件

    进入vim,命令模式下执行`:PlugInstall`，自动联网下载插件，插件位于`~/.oh-my-terminal/vim/plugged`目录下

## 如何卸载

```bash
sh ~/.oh-my-terminal/uninstall.sh
rm -r ~/.oh-my-terminal/
```

## 效果预览

```bash
docker build -t oh-my-terminal .
docker run -it oh-my-terminal
```

## 操作手册

### tmux

`PREFIX` 代表前置组合键，即同时按下 `Ctrl` 和 `b`，也可表示为
`ctrl + b`, `+`代表前后键需要同时按下。

#### 会话session
* 查看会话列表

    `tmux ls`

* 创建会话

    `tmux new [-s SESSION_NAME]`

    `PREFIX :new [-s SESSION_NAME]`

* 关闭会话

    `tmux kill-session [-t SESSION_NAME]`

* 置于后台

    `PREFIX d`

* 挂起

    `PREFIX ctrl + z`

* 唤醒到前台

    `tmux a [-t SESSION_NAME]`

* 切换不同会话

    `PREFIX s`，选择会话id

    `PREFIX (` 切换到前一个会话

    `PREFIX )` 切换到后一个会话

* 重命名

    `PREFIX $`

#### 窗口window
* 创建新窗口
    
    `PREFIX c`

* 关闭当前窗口
    
    `PREFIX &`

* 重命名
    
    `PREFIX ,`

* 切换不同窗口
    
    `PREFIX 窗口编号`

    `PREFIX Ctrl + h` 切换到前一个窗口

    `PREFIX Ctrl + l` 切换到后一个窗口

#### 窗格panel
* 创建新窗格

    `PREFIX -`水平切割

    `PREFIX ——`垂直切割

* 关闭窗格

    `PREFIX x`

* 显示编号

    `PREFIX q`

* 切换

    `PREFIX ;` 切换到最近一个活动的窗格
    
    `PREFIX 方向键`

    `PREFIX h/j/k/l` vim的键位

    `PREFIX q 窗格编号`

    `PREFIX o` 下一个窗格

* 移动

    `PREFIX >` 当前窗格和后一个窗格互换位置

    `PREFIX <` 当前窗格和前一个窗格互换位置

* 全屏

    `PREFIX z`

* 大小调整

    `PREFIX + 方向键`

    `PREFIX ctrl + 方向键`

* 布局调整

    `PREFIX 空格键`

## 参考引用

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [on-my-tmux](https://github.com/gpakosz/.tmux)
* [amix vimrc](https://github.com/amix/vimrc)
* [use vim as ide](https://github.com/yangyangwithgnu/use_vim_as_ide)
* [VIM Awesome](https://vimawesome.com/)
* [如何在 Linux 下利用 Vim 搭建 C/C++ 开发环境? - 韦易笑的回答 - 知乎](https://www.zhihu.com/question/47691414/answer/373700711)
* [Linux SSH终端terminal配色更改为256色](https://www.haiyun.me/archives/linux-terminal-xterm-256color.html)
