set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'tikhomirov/vim-glsl'
"Plugin 'scrooloose/nerdtree' 
Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'vim-scripts/Conque-GDB'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"YCM
"let g:clang_complete_macros=1

set backspace=2
set t_Co=256
set number

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=0
set laststatus=2

colorscheme slatemod

"disable bel stuff
"set noeb vb t_vb=
set novb noeb t_vb=
"toolbar/menu
set guioptions-=T   
set guioptions-=m

"disable the ~ backup saving bullshit
set nobackup
set nowb
set noswapfile
set cindent

"map alt+123... to buffers"
map <A-1> :b1<cr>
map <A-2> :b2<cr>
map <A-3> :b3<cr>
map <A-4> :b4<cr>
map <A-5> :b5<cr>
map <A-6> :b6<cr>
map <A-7> :b7<cr>
map <A-8> :b8<cr>
map <A-9> :b9<cr>
map <A-0> :b10<cr>

"map <F5> :!sh ../build.sh
"function! s:build()
"    cd! ..
"    "echo %
"    let &makeprg='build.sh'
"    silent make
"    cd! src
"    copen
"endfunction

"command! Build call s:build()

"navigation
map <F12> :YcmCompleter GoTo <enter>

"swap between .h and .cc
nnoremap <silent><A-s> :e %:p:s,.h$,.x123x,:s,.cpp$,.h,:s,.x123x$,.cpp,<CR>
vnoremap <silent><A-s> :e %:p:s,.h$,.x123x,:s,.cpp$,.h,:s,.x123x$,.cpp,<CR>
inoremap <silent><A-s> <esc>:e %:p:s,.h$,.x123x,:s,.cpp$,.h,:s,.x123x$,.cpp,<CR>

"extra types and 
"syntax keyword cppSTLtype local_persist internal_var internal_function global_var constant_var r32 r64 ubyte uint ulong i8 u8 i32 u32 i64 u64 i16 u16 b32
syntax on;

"clipboard
ino <C-v> <Esc>"+p
vn <C-c> "+y

no <A-down> ddp
no <A-up> ddkP

