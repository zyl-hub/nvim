let mapleader=" "

nnoremap \<LEADER\>\<CR\> :nohlsearch\<CR\>

nnoremap \<LEADER\>r :call CompileRunCode()\<CR\>

nnoremap \<LEADER\>sr :set splitright\<CR\>:vsplit\<CR\>

nnoremap \<LEADER\>sl :set nosplitright\<CR\>:vsplit\<CR\>

nnoremap \<LEADER\>su :set nosplitbelow\<CR\>:split\<CR\>

nnoremap \<LEADER\>sd :set splitbelow\<CR\>:split\<CR\>

nnoremap \<LEADER\>gr \<C-w\>l

nnoremap \<LEADER\>gu \<C-w\>k

nnoremap \<LEADER\>gd \<C-w\>j

nnoremap \<LEADER\>gl \<C-w\>h

nnoremap \<LEADER\>\<up\> :res +5\<CR\>

nnoremap \<LEADER\>\<down\> :res -5\<CR\>

nnoremap \<LEADER\>\<left\> :vertical resize-5\<CR\>

nnoremap \<LEADER\>\<right\> :vertical resize+5\<CR\>

nnoremap \<LEADER\>tt :tabe\<CR\>

nnoremap \<LEADER\>tl :-tabnext\<CR\>

nnoremap \<LEADER\>tr :+tabnext\<CR\>

nnoremap \<LEADER\>sc :set spell!\<CR\>

nnoremap \<LEADER\>\<LEADER\> \<Esc\>/\<++\>\<CR\>:nohlsearch\<CR\>c4l

nnoremap tx :r !figlet

nnoremap \<LEADER\>mt :GenTocGFM\<CR\>

nnoremap \<LEADER\>mtc :RemoveToc\<CR\>

nnoremap \<LEADER\>f  :Autoformat\<CR\>

" nnoremap \<LEADER\>ec :CondaChangeEnv\<CR\>

nnoremap - dd

nnoremap \<LEADER\>hc :%s/./&/g\<CR\>$

inoremap \<silent\>\<expr\> \<TAB\>

inoremap \<silent\>\<expr\> \<TAB\>

inoremap \<expr\>\<S-TAB\> pumvisible() ? "\\<C-p\>" : "\\<C-h\>"

inoremap \<silent\>\<expr\> \<c-space\> coc#refresh()

  inoremap \<expr\> \<cr\> complete\_info()["selected"] != "-1" ? "\\<C-y\>" : "\\<C-g\>u\\<CR\>"

  imap \<expr\> \<cr\> pumvisible() ? "\\<C-y\>" : "\\<C-g\>u\\<CR\>"

nmap \<silent\> [g \<Plug\>(coc-diagnostic-prev)

nmap \<silent\> ]g \<Plug\>(coc-diagnostic-next)

nmap \<silent\> gd \<Plug\>(coc-definition)

nmap \<silent\> gy \<Plug\>(coc-type-definition)

nmap \<silent\> gi \<Plug\>(coc-implementation)

nmap \<silent\> gr \<Plug\>(coc-references)

nnoremap \<silent\> K :call \<SID\>show\_documentation()\<CR\>

nmap \<leader\>rn \<Plug\>(coc-rename)

xmap \<leader\>f  \<Plug\>(coc-format-selected)

nmap \<leader\>f  \<Plug\>(coc-format-selected)

xmap \<leader\>a  \<Plug\>(coc-codeaction-selected)

nmap \<leader\>a  \<Plug\>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.

nmap \<leader\>ac  \<Plug\>(coc-codeaction)

nmap \<leader\>qf  \<Plug\>(coc-fix-current)

xmap if \<Plug\>(coc-funcobj-i)

xmap af \<Plug\>(coc-funcobj-a)

omap if \<Plug\>(coc-funcobj-i)

omap af \<Plug\>(coc-funcobj-a)

nmap \<silent\> \<TAB\> \<Plug\>(coc-range-select)

xmap \<silent\> \<TAB\> \<Plug\>(coc-range-select)

" Mappings using CoCList:

nnoremap \<silent\> \<space\>a  :\<C-u\>CocList diagnostics\<cr\>

nnoremap \<silent\> \<space\>e  :\<C-u\>CocList extensions\<cr\>

nnoremap \<silent\> \<space\>c  :\<C-u\>CocList commands\<cr\>

nnoremap \<silent\> \<space\>o  :\<C-u\>CocList outline\<cr\>

nnoremap \<silent\> \<space\>s  :\<C-u\>CocList -I symbols\<cr\>

nnoremap \<silent\> \<space\>j  :\<C-u\>CocNext\<CR\>

nnoremap \<silent\> \<space\>k  :\<C-u\>CocPrev\<CR\>

nnoremap \<silent\> \<space\>p  :\<C-u\>CocListResume\<CR\>

nmap zuz \<Plug\>(FastFoldUpdate)

nnoremap tt :CocCommand explorer\<CR\>

nnoremap ra :RnvimrToggle\<CR\>
