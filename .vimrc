
"文字コード
scriptencoding utf-8
set encoding=utf-8            "読込時の文字コード
set fileencoding=utf-8        "保存時の文字コード
set fileencodings=utf-8       "読込時の文字コード自動判別
set fileformats=unix,dos,mac  "改行コードの自動判別

"タブ・インデント
set expandtab       "タブ入力を複数の空白入力に置き換える
set tabstop=4       "インデントをスペース4つ分にする
set softtabstop=4   "連続した空白に対してタブキーやBSキーでカーソル移動
set autoindent      "改行時に前のインデントを引継ぐ

"文字列検索
set ignorecase      "大文字/小文字を区別せず検索
set hlsearch        "検索結果をハイライト

"カーソル
set number                      "行番号を表示
set cursorline                  "カーソルラインをハイライト
set backspace=indent,eol,start  "バックスペースキーの有効化
set showmatch                   "相関するカッコを強調表示

"カラースキーム
syntax on         "シンタックスハイライトを有効にする

autocmd BufRead,BufNewFile *.py setfiletype python
autocmd FileType python setlocal completeopt-=preview

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/manage/.vim/bundles/repos/github.com/Shougo/dein.vim

let s:dein_path = expand('~/.vim/bundles')
let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'

" Required:
if dein#load_state(s:dein_path)
  call dein#begin(s:dein_path)

  let g:config_dir = s:dein_path . '/userconfig'
  let s:toml       = g:config_dir . '/plugin.toml'
  let s:lazy_toml  = g:config_dir . '/plugin_lazy.toml'

  call dein#load_toml(s:toml,       {'lazy': 0})
  call dein#load_toml(s:lazy_toml,  {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

