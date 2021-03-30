let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \ 
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'filetype', 'kitestatus' ] ] 
      \ },
      \ 'component_function': {
      \   'kitestatus': 'kite#statusline'
      \ },
      \ }
