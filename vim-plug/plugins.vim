" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Themes
    Plug 'morhetz/gruvbox' 
    Plug 'joshdick/onedark.vim'
    Plug 'shinchu/lightline-gruvbox.vim' 

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot' 

    " Snippets
    Plug 'honza/vim-snippets'

    " Emmet integration
    Plug 'mattn/emmet-vim' 

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Status bar 
    Plug 'maximbaz/lightline-ale'
    Plug 'itchyny/lightline.vim'    
    Plug 'mengelbrecht/lightline-bufferline'

    " Ranger integration
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " Starify
    Plug 'mhinz/vim-startify'
    Plug 'ryanoasis/vim-devicons'

    " Git integration
    Plug 'tpope/vim-fugitive'
    Plug 'mhinz/vim-signify'
    Plug 'junegunn/gv.vim'
    Plug 'tpope/vim-rhubarb'

    " Pattern search
    Plug 'easymotion/vim-easymotion' 

    " Interactive Scratchpad
    Plug 'metakirby5/codi.vim'

    " FZF integration
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
