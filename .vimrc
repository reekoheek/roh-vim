" Use before config {
    if filereadable(expand("~/.vimrc.before"))
        source ~/.vimrc.before
    endif
" }

" Environment {

    " Basics {
        set nocompatible
    " }

    " Setup Bundle Support {
        " The next three lines ensure that the ~/.vim/bundle/ system works
        filetype on
        filetype off
        set rtp+=~/.vim/bundle/vundle
        call vundle#rc()
    " }

" }

" Use bundles config {
    if filereadable(expand("~/.vimrc.bundles"))
        source ~/.vimrc.bundles
    endif
" }

" General {
    set bg=dark                     " Assumed dark background
    filetype plugin indent on       " Automatically detect file types.
    syntax on                       " Syntax highlighting
    set mouse=a                     " Automatically enable mouse usage
    set mousehide                   " Hide the mouse cursor while typing
    scriptencoding utf-8

" }

" VIM UI {
    set showmode                    " Display current mode
    set cursorline                  " Highlight current line
    set nu                          " Line numbers on
" }

" Formatting {

    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current

" }

" Use local vimrc if available {
    if filereadable(expand("~/.vimrc.local"))
        source ~/.vimrc.local
    endif
" }

" Bundles {
    " NerdTree {
        map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
    " }
" }
