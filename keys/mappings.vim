" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
inoremap ii <Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" Close the current buffer
nnoremap <C-w> :bd<CR>
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
nnoremap <Leader>wq :wq<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Use <c-space> to trigger completion list.
if &filetype=="javascript" || &filetype=="python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" Emmet remaps
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Search pattern with 2 letters
nmap <Leader>s <Plug>(easymotion-s2)

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better nav for completion list
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>
