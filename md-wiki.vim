nnoremap gf :e <cfile><CR>
nnoremap <LEADER>ww :e ~/vimwiki/index.md<CR>
autocmd Filetype markdown nnoremap <CR> :call MutiActionFuc()<CR>
autocmd Filetype markdown nnoremap <BS> :bp<CR>
func! MutiActionFuc()
    if getline('.') == ''
        return 0
    elseif getline('.') =~ '^# [..'
        execute "normal!f(l"
        edit <cfile>
    else
        execute "normal!dawa [\<esc>pa](\<esc>pa.md)"
    endif
endfunction
"autocmd Filetype markdown nnoremap <CR> f(<ESC>lgf
autocmd Filetype markdown nnoremap <TAB> /# [*<CR>:nohlsearch<CR>
