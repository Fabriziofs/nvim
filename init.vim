" Basic settings
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/paths.vim

" Keybindigs
source $HOME/.config/nvim/keys/functions.vim
source $HOME/.config/nvim/keys/mappings.vim

" Plugin list
source $HOME/.config/nvim/plugins.vim

" Configuration files for plugins
" source $HOME/.config/nvim/plug-conf/coc.vim
source $HOME/.config/nvim/plug-conf/rnvimr.vim
source $HOME/.config/nvim/plug-conf/fzf.vim
source $HOME/.config/nvim/plug-conf/whichkey.vim
source $HOME/.config/nvim/plug-conf/kite.vim
source $HOME/.config/nvim/plug-conf/lightline.vim
source $HOME/.config/nvim/plug-conf/lsp-config.vim
luafile $HOME/.config/nvim/plug-conf/colorizer.lua
luafile $HOME/.config/nvim/plug-conf/compe-config.lua

" LSP language setups
luafile $HOME/.config/nvim/lsp.lua

" Source your theme here
source $HOME/.config/nvim/themes/onedark.vim
