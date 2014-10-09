if $VIM_PLUGINS != 'NO'
  runtime! autoload/pathogen.vim
  if exists('g:loaded_pathogen')
    execute pathogen#infect('~/.vimbundles/{}', '~/.vim/bundle/{}')
  endif
endif

syntax on
filetype plugin indent on

set nu

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

colorscheme railscasts
set guifont=Monaco:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

command Ntt NERDTreeToggle
command Ntf NERDTreeFocus

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
