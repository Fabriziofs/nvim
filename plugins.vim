call plug#begin('~/.config/nvim/autoload/plugged')
    
    " Intellisense and file tree
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'

    " Ranger integration
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    
    " File explorer
    Plug 'kyazdani42/nvim-tree.lua'

    " FZF integration
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Change the working directory to the project
    Plug 'airblade/vim-rooter'

	" Themes
	Plug 'joshdick/onedark.vim'

    " Cool icons
    Plug 'kyazdani42/nvim-web-devicons'

    " Status bar
    Plug 'itchyny/lightline.vim'

    " Tabline
    Plug 'romgrk/barbar.nvim'

    " Syntax Highlighting
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

    " Color highlights
    Plug 'norcalli/nvim-colorizer.lua'

    " Comment and uncomment code
    Plug 'tpope/vim-commentary'

    " Keymaps reminder
    Plug 'liuchengxu/vim-which-key' 

    " Interactive REPL
    Plug 'metakirby5/codi.vim'

call plug#end()
