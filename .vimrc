"set t_Co=256
"set t_Co=88
"
syntax enable
" When you want to turn all the autoindenting off
"setl noai nocin nosi inde=
"filetype indent off
set tabstop=4 
set softtabstop=4 
set shiftwidth=4
set autoindent
set smartindent
set cindent
set expandtab
set ruler
set nobackup
set showcmd
set number
set cursorline
"hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
"hi CursorLine guibg=#003853 ctermbg=24  gui=none cterm=none
hi CursorLine ctermbg=236 guibg=#2c2c2c cterm=none gui=none
set showmatch
set incsearch
set hlsearch
set t_ut=
filetype indent on

augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
"    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
"                /:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab                                                                                                                                                                                               
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4 
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4 
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
    autocmd BufEnter *.bro setlocal commentstring=#\ %s
augroup END
