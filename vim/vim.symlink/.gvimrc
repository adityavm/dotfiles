" pathogen (do this before everything)
call pathogen#infect()
filetype plugin indent on

set lines=100
set columns=150
set guioptions-=T

" hide scrollbars
" + needs stuff in .vimrc too for both scrollbars
set guioptions-=r
set guioptions-=R

set t_Co=256
syntax enable

set ruler
set autoindent
" set hlsearch
set incsearch
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set cursorline
set foldmethod=marker
set fen

set shiftround

colorscheme candycode

nmap <C-N><C-N> :set invnumber<CR>
nmap <C-S> :silent noh<CR>
set number
set numberwidth=4

hi LineNr guibg=grey10 guifg=grey30
hi Folded guibg=#1d1d1d guifg=#808080 gui=none

set enc=utf-8 gfn=Consolas\ for\ Powerline:h11
set mousehide

let g:easytags_cmd = '/usr/local/bin/ctags'
let g:easytags_always_enabled = 1
set tags=./.tags;,~/.vimtags

" annoying shift mistakes
cmap W w

" set up syntax completion
imap <C-Tab> <C-x><C-o>

" custom syntax highlighting rules
au BufNewFile,BufRead *.less set filetype=less

" stop cursor blinking
set guicursor+=n-v-c:blinkon0

" numbers.vim made easy
function! g:ToggleRNU()
	if(&rnu == 1)
		set nu
	else
		set rnu
	endif
endfunc
nnoremap <F3> :call g:ToggleRNU()<CR>

" powerline
set laststatus=2
