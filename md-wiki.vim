nnoremap <LEADER>ww :e ~/vimwiki/index.md<CR>
autocmd Filetype markdown nnoremap <CR> :call MutiActionFuc()<CR>
autocmd Filetype markdown nnoremap <BS> :w<CR>:bd<CR>
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

func! TodoList()
    if getline('.') == ''
        execute "normal!i- [ ] "
    elseif getline('.') =~ '^- [X..'
        execute "normal!f]dawi "
    else
        execute "normal!f]dawiX]"
    endif
endfunction
autocmd Filetype markdown nnoremap <TAB> /# [*<CR>:nohlsearch<CR>
autocmd Filetype markdown nnoremap <C-Space> :call TodoList()<CR>

