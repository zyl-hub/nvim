func! MutiActionFuc()
    if getline('.') == ''
        return 0
    elseif getline('.') =~ '^#\+ [..'
        execute "normal!^f(l"
        edit <cfile>
    else
        execute "normal!dawa [\<esc>pF[lli\<BS>\<esc>$a](\<esc>pF(lli\<BS>\<esc>$a) "
    endif
endfunction

func! VisualMutiActionFuc()
    execute "normal!yyppi\<BS>\<esc>F#la[\<esc>f#i](\<esc>f#vf d$a.md) "
endfunction

func! TodoList()
    if getline('.') == ''
        execute "normal!i- [ ] "
    elseif getline('.') =~ '^- [X\+'
        execute "normal!^f]a\<BS>\<BS> ]\<esc>$"
    else
        execute "normal!^f]a\<BS>\<BS>X]\<esc>$"
    endif
endfunction

nnoremap <LEADER>ww :e ~/vimwiki/index.md<CR>
autocmd Filetype markdown nnoremap <CR> :call MutiActionFuc()<CR>
autocmd Filetype markdown vnoremap <CR> :call VisualMutiActionFuc()<CR>
autocmd Filetype markdown nnoremap <BS> :w<CR>:bd<CR>
autocmd Filetype markdown nnoremap <TAB> /# [*<CR>:nohlsearch<CR>
autocmd Filetype markdown nnoremap <C-Space> :call TodoList()<CR>

