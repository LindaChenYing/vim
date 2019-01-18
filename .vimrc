"*********************************基本设置********************************
filetype on         "开启文件类型侦测
filetype indent on  "适应不同语言的只能缩进
syntax enable	    "开启语法高亮功能
syntax on           "允许用定制语法高亮配色方案替换默认方案

"显示设置
set laststatus=2    "总是显示状态栏
set ruler           "显示光标位置
set number          "显示行号
set cursorline      "高亮显示当前行

"编辑设置
set expandtab       "扩展制表符号为空格
set tabstop=4       "制表符占空格数
set softtabstop=4   "将连续数量的空格视为一个制表符
set shiftwidth=4    "
set textwidth=79    "编辑器每行字符数
set autoindent
set wildmenu        "vim命令自动补全

"********************************插件安装配置*****************************
set nocompatible "关闭兼容模式
filetype off      "文件类型侦测关闭

"设置运行时路径，包括vundle和初始化
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Villoric/YouCompleteMe'           "自动补全
Plugin 'vim-scripts/Solarized.git'        "主题方案
Plugin 'Lokaltog/vim-powerline'           "状态栏主题
Plugin 'scrooloose/nerdcommenter'         "多行注释，leader键(注释的符号"/#)+cc注释，leader键+cu删除注释
Plugin 'jiangmiao/auto-pairs'             "括号、引号自动补全：输入左边，自动补全右部

call vundle#end()
filetype plugin indent on
"必须，加载vim自带插件相应语法和文件类型相关脚本

"youcompleteme 运行时python
let g:ycm_python_binary_path = '/home/chenying/anaconda3/bin/python3'

"solarized
set background=dark
colorscheme solarized                     "素雅
let g:Powerline_colorscheme='solarized256'"设置状态栏主题风格

"nerdcommenter
let mapleader="#"                          "默认注释的符号是/，修改为#


"*******************************快捷键设置**********************************
"F5一键运行程序
map <F5> :call RunPython() <CR>
func! RunPython()
    exec "W"
    if &filetype == 'python'
        exec "!time /home/chenying/anaconda3/bin/python3 %"
    endif
endfunc
    

