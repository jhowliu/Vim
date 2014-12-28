set nocompatible
set nu
set t_Co=256


syntax on

" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on

let python_highlight_all=1

colorscheme wombat256

"Tab
set ts=4 sw=4 et
set smarttab
set autoindent
