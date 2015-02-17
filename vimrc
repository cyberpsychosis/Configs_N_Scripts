" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

au BufRead,BufNewFile *.md set filetype=markdown

"Readability
:set number " //:set nu = shortform
syntax enable
:set cursorline

"Indentation
:set softtabstop=4
:set shiftwidth=4

" Abbreviations
:ab #b /****************************************************************
:ab #e ******************************************************************/

" Multiline Abbreviations
iab cmain 
\#include <iostream>
\<CR>#include <string>
\<CR>
\<CR>using namespace std;
\<CR>
\<CR>
\<CR>int main ()
\<CR>{
\<CR>    
\<CR>    
\<CR>    return 0;
\<CR>}


" Keymapping
nmap <S-Enter> O<Esc>  " //these settings allow you to insert returns without being in insert mode
nmap <CR> o<Esc>


