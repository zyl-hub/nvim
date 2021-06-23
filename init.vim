"__   ___
            "\ \ / / |
" \ V /| |
"  | | | |___
"  |_| |_____|


set nocompatible
filetype on
filetype indent on
filetype plugin on


" don't show insert more than once
set noshowmode
" true color
set termguicolors
set clipboard+=unnamedplus
hi illuminatedWord cterm=underline gui=underline
set hidden
set foldcolumn=0
set backup
set bdir=~/backup
"set nobackup
"set nowritebackup
set updatetime=100
set shortmess+=c
set mouse=a
set encoding=utf-8
let &t_ut=''
" tab or space that's a question
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

" ===
" === Choose hosts
" ===
"let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
"let g:python3_host_prog = '/usr/bin/python3.8'
let g:ruby_host_prog = '/usr/bin/ruby'



call plug#begin('~/.config/nvim/plugged')

" ===
" === file explorer
" ===
if has('nvim')
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

" ===
" === treesitter
" ===
"Plug 'nvim-treesitter/nvim-treesitter', {'do':':TSUpdate'}
"Plug 'nvim-treesitter/nvim-treesitter-refactor'
"Plug 'nvim-treesitter/playground'
"Plug 'romgrk/nvim-treesitter-context'
"Plug 'nvim-treesitter/nvim-treesitter'


" ===
" === themes
" ===
Plug 'mhartington/oceanic-next'
Plug 'ajmwagar/vim-deus'
Plug 'dracula/vim'
Plug 'lifepillar/vim-solarized8'
Plug 'jnurmine/Zenburn'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'


" Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'f-person/pubspec-assist-nvim', { 'for' : ['pubspec.yaml'] }


" ===
" === Debugger
" ===
Plug 'puremourning/vimspector'


" ===
" === undotree
" ===
Plug 'mbbill/undotree'


" === work flow
" ===
" TODO:  <27-08-20, yl> "
"Plug 'skywind3000/asynctasks.vim'
"Plug 'skywind3000/asyncrun.vim'


" ===
" === highlight word under cursor
" ===
"Plug 'RRethy/vim-illuminate'


" ===
" === status line
" ===
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" ===
" === File navigation
" ===
Plug 'junegunn/fzf.vim'
"Plug 'kevinhwang91/rnvimr'


" ===
" === make vim like vscode
" ===
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" ===
" === Snippets make life easier
" ===
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


" ===
" === Other visual enhancement
" ===
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'


" ===
" === Git
" ===
Plug 'rhysd/conflict-marker.vim'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }


" ===
" === preview color in vim
" ===
" Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }


" ===
" === Python
" ===
Plug 'Vimjas/vim-python-pep8-indent'


" ===
" === maybe
" ===
" TODO:  <27-08-20, yl> "
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
"Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }


" ===
" === Markdown
" ===
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }


" ===
" === in fact I don't like the settings, but the defaults have conflict with
" coc, which is annoying.
" ===
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<C-e>"
let g:UltiSnipsJumpBackwardTrigger="<C-n>"


" ===
" === Formatter
" ===
Plug 'Chiel92/vim-autoformat'


" Other useful utilities
" TODO:  <03-09-20, yl> "
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'
" Other useful utilities
Plug 'makerj/vim-pdf'
" Editor Enhancement
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/switch.vim'
Plug 'preservim/nerdcommenter'
"Plug 'lilydjwg/fcitx.vim'
"Plug 'mhinz/vim-startify'
" Plug 'liuchengxu/vim-which-key'
" Auto Pairs was statisfied by coc-pairs
" coc-pairs cannot be used because it work bad on c project
Plug 'jiangmiao/auto-pairs'
call plug#end()


" ===
" === rainbow
" ===
let g:rainbow_active = 1


" ===
" === airline
" ===
" tabline make buffer easier
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16_spacemacs'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''


" ===
" === startify
" ===
"let g:startify_custom_header = []
"let g:startify_bookmarks = [
            "\'~/.config/nvim/init.vim',
            "\]



"   Markdown settings
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0
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
" === rnvimr
" ===
"nnoremap ra :RnvimrToggle<CR>
"let g:rnvimr_enable_ex = 1
""let g:rnvimr_vanilla = 1
"set signcolumn=yes
"highlight clear SignColumn


" ===
" === Goyo
" ===
nnoremap <LEADER>gy :Goyo<CR>
nnoremap <LEADER>gyn :Goyo!<CR>
nnoremap <LEADER><CR> :nohlsearch<CR>


" ===
" === Run My Code
" ===
nnoremap <LEADER>r :call CompileRunCode()<CR>
func! CompileRunCode()
    silent exec "w"
    if &filetype == 'c'
        silent exec "!gcc -ggdb3 -Wall -fomit-frame-pointer -m64 -std=c2x % -o %<; ./%<"
        silent exec "!time ./%<"
    elseif &filetype == 'vim'
        silent exec "source %"
    elseif &filetype == 'cpp'
        set splitbelow
        silent exec "!g++ -ggdb3 -Wall -fomit-frame-pointer -m64 -std=c++20 % -o %<"
        :sp
        :res -15
        :term ./%<
    elseif &filetype == 'java'
        silent exec "!javac %"
        silent exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        "set splitbelow
        ":sp
        ":term python3 %
        silent exec ":CocCommand python.execInTerminal"
    elseif &filetype == 'html'
        silent! exec "!".g:mkdp_browser." % &"
    elseif &filetype == 'markdown'
        silent exec "MarkdownPreview"
    elseif &filetype == 'vimwiki'
        silent exec "MarkdownPreview"
    elseif &filetype == 'tex'
        silent! exec "VimtexStop"
        silent! exec "VimtexCompile"
    elseif &filetype == 'dart'
        exec "CocCommand flutter.run -d ".g:flutter_default_device
        silent! exec "CocCommand flutter.dev.openDevLog"
    elseif &filetype == 'go'
        set splitbelow
        :sp
        :term go run %
    endif
endfunc


" ===
" === split windows settings
" ===
" colemak bindings
"    u
" n  e  i
nnoremap <LEADER>si :set splitright<CR>:vsplit<CR>
nnoremap <LEADER>sn :set nosplitright<CR>:vsplit<CR>
nnoremap <LEADER>su :set nosplitbelow<CR>:split<CR>
nnoremap <LEADER>se :set splitbelow<CR>:split<CR>


" ===
" === move between windows
" ===
" colemak bindings
"    u
" n  e  i
noremap <LEADER>gi <C-w>l
nnoremap <LEADER>gu <C-w>k
nnoremap <LEADER>ge <C-w>j
nnoremap <LEADER>gn <C-w>h

" ===
" === resize the windows
" ===
nnoremap <LEADER><up> :res +5<CR>
nnoremap <LEADER><down> :res -5<CR>
nnoremap <LEADER><right> :vertical resize-5<CR>
nnoremap <LEADER><left> :vertical resize+5<CR>

" ===
" === new tab and move between tabs
" ===
nnoremap <LEADER>tt :tabe<CR>
nnoremap <LEADER>tl :-tabnext<CR>
nnoremap <LEADER>tr :+tabnext<CR>
nnoremap <LEADER>sc :set spell!<CR>

" ===
" === set a pattern to find
" ===
nnoremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
nnoremap tx :r !figlet
" ===
" === markdown toc
" ===
nnoremap <LEADER>mt :GenTocGFM<CR>
nnoremap <LEADER>mtc :RemoveToc<CR>

" ===
" === Autoformat
" ===
nnoremap <LEADER>f  :Autoformat<CR>

" ===
" === delete a line
" ===
nnoremap - dd

" ===
" === count how many characters
" ===
"nnoremap <LEADER>hc :%s/./&/g<CR>$

" ===
" === clipboard
" ===
vnoremap <LEADER>y "+y
nnoremap <LEADER>p "+p

" ===
" === Terslation
" ===
"nnoremap <LEADER>td :TerslationWordTrans<CR>

" ===
" === tie anchor
" ===
nnoremap <LEADER>ta i<++><ESC>

" ===
" === make delete a word more comfortable
" === some modify to make me change between buffers
" ===
nnoremap <LEADER>n :bn<CR>

" ===
" === asyncrun
" ===
"let g:asyncrun_open = 6
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
    " has to be a function to avoid the extra space fzf#run insers otherwise
    execute '0r ~/.config/nvim/vimspector-json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
            \   'source': 'ls -1 ~/.config/nvim/vimspector-json',
            \   'down': 20,
            \   'sink': function('<sid>read_template_into_buffer')
            \ })
nnoremap <LEADER>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
nnoremap <F1> :call vimspector#StepInto()<CR>
nnoremap <F7> :call vimspector#Reset()<CR>

" ===
" === to make markdown easy looking in vim
" ===
autocmd Filetype markdown set syntax=markdown
autocmd Filetype markdown set conceallevel=2

" ===
" === coc settings
" ===
            "\ 'coc-explorer',
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-vimlsp',
            \ 'coc-marketplace',
            \ 'coc-actions',
            \ 'coc-clangd',
            \ 'coc-flutter-tools',
            \ 'coc-translator',
            \ 'coc-word',
            \ 'coc-emoji',
            \ 'coc-tabnine',
            \ 'coc-snippets',
            \ 'coc-python']
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use leader h to show documentation in preview window.
nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

nmap <LEADER>rn <Plug>(coc-rename)

function! s:cocActionsOpenFromSelected(type) abort
    execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

"nnoremap <silent> tt :CocCommand explorer<CR>
nnoremap <silent> cc :CocCommand<CR>
nnoremap <silent> ts :CocCommand translator.popup<CR>
nnoremap <silent> r :CocCommand translator.replace<CR>

imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-e>'
let g:coc_snippet_prev = '<c-n>'
imap <C-e> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'yl'

nnoremap <LEADER>gs :CocList marketplace<CR>


" ==
" == GitGutter
" ==
" let g:gitgutter_signs = 0
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
" autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap H :GitGutterPreviewHunk<CR>
nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
nnoremap <LEADER>g= :GitGutterNextHunk<CR>


" ===
" === Agit
" ===
nnoremap <LEADER>gl :Agit<CR>
let g:agit_no_default_mappings = 1
" make it faster
autocmd Filetype agit nnoremap <buffer> <BS> :q<CR>

" ===
" === Lightwiki
" ===
let g:ApplyBSkillBuffer = 1


" ===
" === colemak keybind enhancement
" ===
nnoremap u k
vnoremap u k
nnoremap e j
vnoremap e j
nnoremap l u
nnoremap k <C-r>


" ===
" === Undotree
" ===
noremap L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
    nmap <buffer> u <plug>UndotreeNextState
    nmap <buffer> e <plug>UndotreePreviousState
    nmap <buffer> U 5<plug>UndotreeNextState
    nmap <buffer> E 5<plug>UndotreePreviousState
endfunc


colorscheme OceanicNext
"colorscheme deus
"colorscheme dracula
"colorscheme zenburn
"colorscheme onedark

"set background=light
"set background=dark
"colorscheme solarized8

"let ayucolor="light"
"let ayucolor="mirage"
"let ayucolor="dark"
"colorscheme ayu

nnoremap <LEADER>st :UltiSnipsEdit<CR>
"nnoremap z daw
"nnoremap r b
nnoremap s w
nnoremap x za
"let g:vimwiki_list = [{'path':'~/wiki/',
"\'syntax':'markdown','ext':'.md'}]
nnoremap wq :wqa<CR>
"lua <<EOF
"require'nvim-treesitter.configs'.setup {
"ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"highlight = {
"enable = true,              -- false will disable the whole extension
"disable = {},  -- list of language that will be disabled
"},
"}
"EOF
nnoremap tt :Defx -split=vertical -winwidth=50 -direction=topleft<CR>
autocmd FileType defx call s:defx_my_settings()
autocmd BufWritePost * call defx#redraw()
function! s:defx_my_settings() abort
    " Define mappings
	nnoremap <silent><buffer><expr> <2-LeftMouse>
                \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> <CR>
                \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> i
                \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> c
                \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
                \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
                \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> l
                \ defx#do_action('open')
    nnoremap <silent><buffer><expr> E
                \ defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> P
                \ defx#do_action('preview')
    nnoremap <silent><buffer><expr> o
                \ defx#do_action('open_tree', 'toggle')
    nnoremap <silent><buffer><expr> K
                \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
                \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> M
                \ defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> C
                \ defx#do_action('toggle_columns',
                \                'mark:indent:icon:filename:type:size:time')
    nnoremap <silent><buffer><expr> S
                \ defx#do_action('toggle_sort', 'time')
    nnoremap <silent><buffer><expr> d
                \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
                \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
                \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
                \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yy
                \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
                \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ;
                \ defx#do_action('repeat')
    nnoremap <silent><buffer><expr> n
                \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
                \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
                \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
                \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *
                \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
                \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
                \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <C-l>
                \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
                \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
                \ defx#do_action('change_vim_cwd')
endfunction
