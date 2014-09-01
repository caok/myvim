if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" tool for explorer
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'mileszs/ack.vim'

" utility
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'mattn/emmet-vim'  
NeoBundle 'godlygeek/tabular' 

" filetype syntax highlight
NeoBundle 'groenewege/vim-less'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'depuracao/vim-rdoc'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'tpope/vim-haml'
NeoBundle 'slim-template/vim-slim'
 
" snipmate
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck
