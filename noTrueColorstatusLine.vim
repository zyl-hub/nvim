" ===
" === now I use true color but if the terminal don't support true color,the following can be used
" ===

" status line
" set laststatus=2
"set statusline=
"" set statusline+=%#PmenuSel#
"" Filepath
"" F for full
"" f for filename
"" set statusline+=%{StatuslineGit()}
"set statusline+=%1*\ >^.^<\ 
"set statusline+=%2*\ %F\ 
"" m for [+]
"" M for +
"set statusline+=%3*%m
"" left and right devide
"set statusline+=%4*%=
"" Change the color in the right
"" set statusline+=%#CursorColumn#
"set statusline+=%5*\ %y\ 
"set statusline+=%6*\ %{&fileencoding?&fileencoding:&encoding}\ 
"" Unix or windows
"set statusline+=%7*\[%{&fileformat}\]\ 
"" the % of the files
"set statusline+=%8*\ %p%%\ 
"set statusline+=%9*\ %{strftime('%H:%M')}\ 
"" Line and column
"" set statusline+=\ %l:%c
"hi User1 cterm=none ctermfg=171 ctermbg=183
"hi User2 cterm=none ctermfg=171 ctermbg=225
"hi User3 cterm=none ctermfg=1 ctermbg=226
"hi User4 cterm=none ctermfg=169 ctermbg=223
"hi User5 cterm=none ctermfg=169 ctermbg=231
"hi User6 cterm=none ctermfg=169 ctermbg=219
"hi User7 cterm=none ctermfg=169 ctermbg=219
"hi User8 cterm=none ctermfg=169 ctermbg=147
"hi User9 cterm=none ctermfg=169 ctermbg=224
