set nocompatible

syntax on
filetype indent plugin on

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp,cp932
set fileformats=unix,dos,mac

set ambiwidth=double
set backspace=indent,eol,start
set formatoptions+=m
set list
set listchars=tab:>-,extends:<,trail:-
set hidden

set wildmenu
set showmatch

set wrapscan
set ignorecase
set smartcase
set incsearch
set hlsearch

set autoindent
set smartindent
set expandtab
set smarttab

set tabstop=4
set softtabstop=4
set shiftwidth=4

set laststatus=2
set statusline=[%n]\ %t\ %y%{GetStatusEx()}\ %m%h%r=%l/%L,%c%V\ %P

highlight ZenkakuSpace cterm=underline ctermfg=lightblue
match ZenkakuSpace /　/

au FileType ruby set tabstop=2 softtabstop=2 shiftwidth=2
au BufNewFile,BufRead *.cgi  set ft=perl
au BufNewFile,BufRead *.psgi set ft=perl

function! GetStatusEx()
  let str = &fileformat
  if has("multi_byte") && &fileencoding != ""
      let str = &fileencoding . ":" . str
  endif
  let str = "[" . str . "]"
  return str
endfunction

"バイナリ編集(xxd)モード（vim -b での起動、もしくは *.bin ファイルを開くと発動します）
augroup BinaryXXD
  autocmd!
  autocmd BufReadPre  *.bin let &binary =1
  autocmd BufReadPost * if &binary | silent %!xxd -g 1
  autocmd BufReadPost * set ft=xxd | endif
  autocmd BufWritePre * if &binary | %!xxd -r | endif
  autocmd BufWritePost * if &binary | silent %!xxd -g 1
  autocmd BufWritePost * set nomod | endif
augroup END

" like Emacs
imap <C-k> <ESC>d$i
imap <C-y> <ESC>pi
imap <C-d> <ESC>xi

imap <C-a>  <Home>
imap <C-e>  <End>
imap <C-b>  <Left>
imap <C-f>  <Right>
