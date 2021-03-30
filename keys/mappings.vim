" Define the leader key
let g:mapleader = "\<Space>"


" -------------- General keys --------------

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
inoremap ii <Esc> 

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Alternate way to save
nnoremap <Leader>w :w<CR>
" Alternate way to quit 
nnoremap <Leader>q :q<CR>
" Alternate way to save & exit
nnoremap <Leader>Q :wq<CR>
" TAB in general mode will move to text buffer
nnoremap <TAB> :BufferNext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :BufferPrevious<CR>
" Close the current buffer
nnoremap <C-w> :BufferClose<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize +2<CR>
nnoremap <M-k>    :resize -2<CR>
nnoremap <M-h>    :vertical resize +2<CR>
nnoremap <M-l>    :vertical resize -2<CR>

" Better nav for completion list inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>


" -------------- Extension related keys --------------

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Use <c-space> to trigger completion list.
if &filetype=="javascript" || &filetype=="python"
  "To use kite
  inoremap <c-space> <C-x><C-u>
else
  " Use coc completion
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" LSP keymaps 
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" File Explorer 
nnoremap <leader>e :NvimTreeToggle<CR>
nnoremap <leader>er :NvimTreeRefresh<CR>
nnoremap <leader>en :NvimTreeFindFile<CR>

" Ranger explorer
nmap <space>r :RnvimrToggle<CR>

" FZF and search
map <leader>f :Files<CR>
map <leader>b :BLines<CR>
nnoremap <leader>g :Rg<CR>

" Comment code blocks
nnoremap <space>z :Commentary<CR>
vnoremap <space>z :Commentary<CR>

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Toggle Codi interactive REPL
nnoremap <space>Av :Codi<CR>
nnoremap <space>AV :Codi!<CR>

" Emmet remaps
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
