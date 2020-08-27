"__   ___
"\ \ / / |
" \ V /| |
"  | | | |___
"  |_| |_____|


set nocompatible
filetype on
filetype indent on


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
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

" ===
" === Choose hosts
" ===
"let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/opt/anaconda/bin/python3.8'
"let g:python3_host_prog = '/usr/bin/python3.8'
let g:ruby_host_prog = '/home/yl/.gem/ruby/2.7.0/bin/neovim-ruby-host'



call plug#begin('~/.config/nvim/plugged')


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


" ===
" === Light wiki to make my notes tidy"
" ===
Plug 'git@github.com:zyl-hub/Lightwiki.git'


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
" ===
" ===
" TODO:  <27-08-20, yl> "
Plug 'RRethy/vim-illuminate'


" ===
" === status line
" ===
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" ===
" === File navigation
" ===
Plug 'junegunn/fzf.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sysc'}


" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }


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
" TODO:  <27-08-20, yl> "
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
" === bullet
" ===
" TODO:  <27-08-20, yl> "
" maybe I want it
"Plug 'dkarter/bullets.vim'


" ===
" === Formatter
" ===
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'


" TODO:  <27-08-20, yl> "
" below should be looked
" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
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
" Plug 'rhysd/open-pdf.vim'

" Editor Enhancement
Plug 'luochen1990/rainbow'
Plug 'Konfekt/FastFold'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/switch.vim'
Plug 'preservim/nerdcommenter'
Plug 'lilydjwg/fcitx.vim'
Plug 'mhinz/vim-startify'
" Plug 'liuchengxu/vim-which-key'
" Auto Pairs was statisfied by coc-pairs
" coc-pairs cannot be used because it work bad on c project
"Plug 'jiangmiao/auto-pairs'
call plug#end()


" ===
" === terslation
" ===
let g:TerslationFloatWin = 1

" ===
" === rainbow
" ===
let g:rainbow_active = 1

"" ===
"" === HicusLine
"" ===
"let g:HicusLineEnabled = 1
"let g:HicusColorSetWay = 1
"let g:HicusLine = {
"\'active': {
            "\    'left': [ 'modehighlight', 'space', 'mode', 'space', 'spell',
            "\              '%#infos#', 'gitinfo', 0, 'modified', 'filename',
            "\              'readonly', 'space', '%#ErrorStatus#', 'errorstatus',
            "\              'space', '%#WarningStatus#', 'warningstatus', 0, ],
            "\    'right': [ 'filetype2', 'space', '%#infos#', 'fileencoding', 'space',
            "\               'fileformat', 'modehighlight', 'space', 'linenumber', ':',
            "\               'bufferlinesnumber', 'space', 'windowpercentage', 'space',
            "\    ],
"\},
"\'basic_option': {
            "\    'ErrorSign': '●',
            "\    'WarningSign': '●',
"\},
"\}
"let g:HicusLineMode = {
"\'n':      [ 'NORMAL', 'normalmode', { 'infos': 'normalinfos', }, ],
"\'i':      [ 'INSERT', 'insertmode', { 'infos': 'otherinfos',  }, ],
"\'R':      [ 'REPLACE', 'replacemode', { 'infos': 'otherinfos',  }, ],
"\'v':      [ 'VISUAL', 'visualmode', { 'infos': 'otherinfos',  }, ],
"\'V':      [ 'L-VISU', 'visualmode', { 'infos': 'otherinfos',  }, ],
"\"\<C-v>": [ 'B-VISU', 'visualmode', { 'infos': 'otherinfos',  }, ],
"\'c':      [ 'COMMAND', 'commandmode', { 'infos': 'otherinfos',  }, ],
"\'s':      [ 'SELECT', 'normalmode', { 'infos': 'normalinfos',  }, ],
"\'S':      [ 'L-SELE', 'normalmode', { 'infos': 'normalinfos',  }, ],
"\"\<C-s>": [ 'B-SELE', 'normalmode', { 'infos': 'normalinfos',  }, ],
"\'t':      [ 'TERMINAL', 'normalmode', { 'infos': 'normalinfos',  }, ],
"\}
"let g:HicusColor = {
"\'StatusLine':     [ 'none' ,'#238E23', '#545454', ],
"\'normalmode':     [ 'bold' ,'#DB70DB', '#D9D9F3', ],
"\'insertmode':     [ 'bold', '#DB70DB', '#70DBDB', ],
"\'visualmode':     [ 'bold', '#DB70DB', '#FF6699', ],
"\'replacemode':    [ 'bold', '#DB70DB', '#9370DB', ],
"\'commandmode':    [ 'bold', '#C6C6C6', '#FF7F00' ],
"\'normalinfos':    [ 'none', '#FFFFFF', '#6272A4', ],
"\'otherinfos':     [ 'none', '#FF6EC7', '#BC8F8F', ],
"\'ErrorStatus':    [ 'none', '#FF0033', '#44475A', ],
"\'WarningStatus':  [ 'none', '#FFCC00', '#44475A', ],
"\}

" ===
" === airline
" ===
" the tabline don't looks well, so I remove it to have better looking
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
" === startify remove the bull when shartup
" ===
"let g:startify_custom_header = []
let g:startify_bookmarks = [
            \'~/.config/nvim/init.vim',
            \]


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
" === Snippets settings
" ===
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/UltiSnips/']

" ===
" === rnvimr
" ===
nnoremap ra :RnvimrToggle<CR>
set signcolumn=yes
highlight clear SignColumn


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
    exec "w"
    if &filetype == 'c'
        exec "!gcc -ggdb3 -Wall -fomit-frame-pointer -m64 -std=c2x % -o %<; ./%<"
        exec "!time ./%<"
    elseif &filetype == 'vim'
        exec "source %"
    elseif &filetype == 'cpp'
        set splitbelow
        exec "!g++ -ggdb3 -Wall -fomit-frame-pointer -m64 -std=c++20 % -o %<; ./%<"
        :sp
        :res -15
        :term ./%<
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        "set splitbelow
        ":sp
        ":term python3 %
        exec ":CocCommand python.execInTerminal"
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

" ===
" === split windows settings
" ===
nnoremap <LEADER>sr :set splitright<CR>:vsplit<CR>
nnoremap <LEADER>sl :set nosplitright<CR>:vsplit<CR>
nnoremap <LEADER>su :set nosplitbelow<CR>:split<CR>
nnoremap <LEADER>sd :set splitbelow<CR>:split<CR>

" ===
" === move between windows
" ===
nnoremap <LEADER>gr <C-w>l
nnoremap <LEADER>gu <C-w>k
nnoremap <LEADER>gd <C-w>j
nnoremap <LEADER>gl <C-w>h

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
nnoremap wq :wqa<CR>

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
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-vimlsp',
            \ 'coc-marketplace',
            \ 'coc-actions',
            \ 'coc-clangd',
            \ 'coc-explorer',
            \ 'coc-translator',
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

nnoremap <silent> tt :CocCommand explorer<CR>
nnoremap <silent> cc :CocCommand<CR>
nnoremap <silent> ts :CocCommand translator.popup<CR>

imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-e>'
let g:coc_snippet_prev = '<c-n>'
imap <C-e> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'yl'


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
