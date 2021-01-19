" Abrir terminal con Ctrl+t
nnoremap <C-t> :call OpenTerminal()<CR>

" Función para abrir el terminal
function! OpenTerminal()
  let buf_num = bufnr('%')
  let buf_type = getbufvar(buf_num, '&buftype', 'not found')

  if buf_type == 'terminal'
    execute 'q'
  else
  " Abrir terminal a 1/4 de la altura del buffer
    let terminal_height = winheight(0) / 4 
  " Reemplazar zsh con shell de preferencia
    execute terminal_height"sp term://zsh"     
    execute "set nonu"
    execute "set nornu"
    execute "set nocursorline"
    
    execute "set signcolumn=no"

    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!
  " Navegar con Ctrl+w
    execute "tnoremap <buffer> <C-w><Up> <C-\\><C-n><C-w><C-k>"  
  " Cerrar terminal
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"     
  " Escapar a modo normal para moverse a traves de la salida
    execute "tnoremap <buffer> <C-n> <C-\\><C-n>"     

    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"
    
    execute "setlocal nobuflisted"

    startinsert!
  endif
endfunction

" Cerrar terminal inmediatamente (sin mostrar código de salida)
augroup terminal_settings
  autocmd!

  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd BufLeave term://* stopinsert
  
  autocmd TermClose term://*
    \ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
    \   call nvim_input('<CR>') |
    \ endif
augroup END
