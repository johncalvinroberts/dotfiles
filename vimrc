syntax on
set number
set backspace=indent,eol,start
" Scroll offset
set scrolloff=6

" Show current mode
set showmode
set tabstop=2 shiftwidth=2 expandtab
set statusline=%{fnamemodify(getcwd(),':p:~:h:t')}/%f%m%r%h%w%{substitute(FugitiveStatusline(),'\\[Git(\\(.*\\))\\]','\ @\ \\1','')}%=%l,\ %v\ of\ %L\ (%p%%)\ \|\ %{&ff}\ \|\ %{&ft}

if has("multi_byte")
  set encoding=utf-8
  setglobal fileencoding=utf-8
else
  echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

call plug#begin()
Plug 'xavierchow/vim-swagger-preview'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'sheerun/vim-polyglot'
Plug 'Elethom/midnight.vim'
call plug#end()
