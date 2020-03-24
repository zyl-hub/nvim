set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" statusline

set laststatus=2
set statusline=
" set statusline+=%#PmenuSel#
" Filepath
" F for full
" f for filename
" set statusline+=%{StatuslineGit()}
set statusline+=%1*\ >^.^<\ 
set statusline+=%2*\ %F\ 
" m for [+]
" M for +
set statusline+=%3*%m
" left and right devide
set statusline+=%4*%=
" Change the color in the right
" set statusline+=%#CursorColumn#
set statusline+=%5*\ %y\ 
set statusline+=%6*\ %{&fileencoding?&fileencoding:&encoding}\ 
" Unix or windows
set statusline+=%7*\[%{&fileformat}\]\ 
" the % of the files
set statusline+=%8*\ %p%%\ 
set statusline+=%9*\ %{strftime('%H:%M')}\ 
" Line and column
" set statusline+=\ %l:%c
hi User1 cterm=none ctermfg=171 ctermbg=183
hi User2 cterm=none ctermfg=171 ctermbg=225
hi User3 cterm=none ctermfg=1 ctermbg=226
hi User4 cterm=none ctermfg=169 ctermbg=223
hi User5 cterm=none ctermfg=169 ctermbg=231
hi User6 cterm=none ctermfg=169 ctermbg=219
hi User7 cterm=none ctermfg=169 ctermbg=219
hi User8 cterm=none ctermfg=169 ctermbg=147
hi User9 cterm=none ctermfg=169 ctermbg=224

set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set mouse=a
set encoding=utf-8
let &t_ut=''
" tab or space
set expandtab
set tabstop=2
set shiftwidth=4
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=4
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
let mapleader=" "
syntax on
set hlsearch
set incsearch
set ignorecase
set smartcase
set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu
" ===
" === Choose envs
" ===
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
let g:ruby_host_prog = '/home/yunlang/.gem/ruby/2.7.0/bin/neovim-ruby-host'
" ===
" === keyBinding
" ===
nnoremap <LEADER><CR> :nohlsearch<CR>
" RunMyCode
nnoremap <LEADER>r :call CompileRunCode()<CR>
func! CompileRunCode()
    exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'vim'
		exec "source %"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
        :res -15
		:term ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		CocCommand flutter.run
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run %
	endif
endfunc
" WindowSplitBinding
nnoremap <LEADER>sr :set splitright<CR>:vsplit<CR>
nnoremap <LEADER>sl :set nosplitright<CR>:vsplit<CR>
nnoremap <LEADER>su :set nosplitbelow<CR>:split<CR>
nnoremap <LEADER>sd :set splitbelow<CR>:split<CR>
nnoremap <LEADER>gr <C-w>l
nnoremap <LEADER>gu <C-w>k
nnoremap <LEADER>gd <C-w>j
nnoremap <LEADER>gl <C-w>h
nnoremap <LEADER><up> :res +5<CR>
nnoremap <LEADER><down> :res -5<CR>
nnoremap <LEADER><left> :vertical resize-5<CR>
nnoremap <LEADER><right> :vertical resize+5<CR>
" TabBinding
nnoremap <LEADER>tt :tabe<CR>
nnoremap <LEADER>tl :-tabnext<CR>
nnoremap <LEADER>tr :+tabnext<CR>
nnoremap <LEADER>sc :set spell!<CR>
nnoremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
nnoremap tx :r !figlet
" MarkdownTocBinding
nnoremap <LEADER>mt :GenTocGFM<CR>
nnoremap <LEADER>mtc :RemoveToc<CR>
" FormatterBinding
nnoremap <LEADER>f  :Autoformat<CR>
" Python Envs Change
nnoremap <LEADER>ec :CondaChangeEnv<CR>
" ===
" === New Section
" ===
source ~/.config/nvim/md-snippets.vim
" nerdcommenter
" ===
" === All the Plugins
" ===
nnoremap - dd
" count how many characters
nnoremap <LEADER>hc :%s/./&/g<CR>$
call plug#begin('~/.vim/plugged')

Plug 'RRethy/vim-illuminate'

" To be developed
" Plug 'Styadev/HicusLine'
" It's amazing but I found that the default is better for me
" Plug 'vim-airline/vim-airline'
" File navigation
Plug 'junegunn/fzf.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sysc'}

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Debugger
Plug 'puremourning/vimspector', {'do': './install_gadget.py --all'}

" Error checking, handled by coc

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }

" Formatter
Plug 'Chiel92/vim-autoformat'

" Bookmarks
Plug 'kshenoy/vim-signature'

" conda
" Plug 'cjrh/vim-conda'
" 
" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

" Other useful utilities
Plug 'makerj/vim-pdf'
" Plug 'rhysd/open-pdf.vim'

" Editor Enhancement
Plug 'Konfekt/FastFold'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/switch.vim'
Plug 'preservim/nerdcommenter'
call plug#end()


"   Markdown settings
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1,
            \ 'sequence_diagrams': {},
            \ 'flowchart_diagrams': {}
            \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" ===
" === Snippets settings
" ===
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', 'UltiSnips']

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" ===
" === Coc settings
" ===
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" ===
" === FastFold
" ===
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'ze', 'zu']
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1

" HicusLine
" let g:HicusLineEnabled = 1

" ===
" === CocExploer
" ===
nnoremap tt :CocCommand explorer<CR>

" ===
" === rnvimr
" ===
nnoremap ra :RnvimrToggle<CR>