let mapleader=" "

n \<LEADER\>\<CR\> :nohlsearch\<CR\>

n \<LEADER\>r :call CompileRunCode()\<CR\>

n \<LEADER\>sr :set splitright\<CR\>:vsplit\<CR\>

n \<LEADER\>sl :set nosplitright\<CR\>:vsplit\<CR\>

n \<LEADER\>su :set nosplitbelow\<CR\>:split\<CR\>

n \<LEADER\>sd :set splitbelow\<CR\>:split\<CR\>

n \<LEADER\>gr \<C-w\>l

n \<LEADER\>gu \<C-w\>k

n \<LEADER\>gd \<C-w\>j

n \<LEADER\>gl \<C-w\>h

n \<LEADER\>\<up\> :res +5\<CR\>

n \<LEADER\>\<down\> :res -5\<CR\>

n \<LEADER\>\<left\> :vertical resize-5\<CR\>

n \<LEADER\>\<right\> :vertical resize+5\<CR\>

n \<LEADER\>tt :tabe\<CR\>

n \<LEADER\>tl :-tabnext\<CR\>

n \<LEADER\>tr :+tabnext\<CR\>

n \<LEADER\>sc :set spell!\<CR\>

n \<LEADER\>\<LEADER\> \<Esc\>/\<++\>\<CR\>:nohlsearch\<CR\>c4l

n tx :r !figlet

n \<LEADER\>mt :GenTocGFM\<CR\>

n \<LEADER\>mtc :RemoveToc\<CR\>

n \<LEADER\>f  :Autoformat\<CR\>

n - dd

n \<LEADER\>hc :%s/./&/g\<CR\>$

i \<silent\>\<expr\> \<TAB\>

i \<silent\>\<expr\> \<TAB\>

i \<expr\>\<S-TAB\> pumvisible() ? "\\<C-p\>" : "\\<C-h\>"

i \<silent\>\<expr\> \<c-space\> coc#refresh()

i \<expr\> \<cr\> complete\_info()["selected"] != "-1" ? "\\<C-y\>" : "\\<C-g\>u\\<CR\>"

i \<expr\> \<cr\> pumvisible() ? "\\<C-y\>" : "\\<C-g\>u\\<CR\>"

n \<silent\> [g \<Plug\>(coc-diagnostic-prev)

n \<silent\> ]g \<Plug\>(coc-diagnostic-next)

n \<silent\> gd \<Plug\>(coc-definition)

n \<silent\> gy \<Plug\>(coc-type-definition)

n \<silent\> gi \<Plug\>(coc-implementation)

n \<silent\> gr \<Plug\>(coc-references)

n \<silent\> K :call \<SID\>show\_documentation()\<CR\>

n \<leader\>rn \<Plug\>(coc-rename)

x \<leader\>f  \<Plug\>(coc-format-selected)

n \<leader\>f  \<Plug\>(coc-format-selected)

x \<leader\>a  \<Plug\>(coc-codeaction-selected)

n \<leader\>a  \<Plug\>(coc-codeaction-selected)

" Re keys for applying codeAction to the current line.

n \<leader\>ac  \<Plug\>(coc-codeaction)

n \<leader\>qf  \<Plug\>(coc-fix-current)

x if \<Plug\>(coc-funcobj-i)

x af \<Plug\>(coc-funcobj-a)

o if \<Plug\>(coc-funcobj-i)

o af \<Plug\>(coc-funcobj-a)

n \<silent\> \<TAB\> \<Plug\>(coc-range-select)

x \<silent\> \<TAB\> \<Plug\>(coc-range-select)

n \<silent\> \<space\>a  :\<C-u\>CocList diagnostics\<cr\>

n \<silent\> \<space\>e  :\<C-u\>CocList extensions\<cr\>

n \<silent\> \<space\>c  :\<C-u\>CocList commands\<cr\>

n \<silent\> \<space\>o  :\<C-u\>CocList outline\<cr\>

n \<silent\> \<space\>s  :\<C-u\>CocList -I symbols\<cr\>

n \<silent\> \<space\>j  :\<C-u\>CocNext\<CR\>

n \<silent\> \<space\>k  :\<C-u\>CocPrev\<CR\>

n \<silent\> \<space\>p  :\<C-u\>CocListResume\<CR\>

n zuz \<Plug\>(FastFoldUpdate)

n tt :CocCommand explorer\<CR\>

n ra :RnvimrToggle\<CR\>

\<leader\>cc |NERDCommenterComment|

\<leader\>cn |NERDCommenterNested|

\<leader\>c\<space\> |NERDCommenterToggle|

\<leader\>cm |NERDCommenterMinimal|

\<leader\>ci |NERDCommenterInvert|

\<leader\>cs |NERDCommenterSexy|

\<leader\>cy |NERDCommenterYank|

\<leader\>c$ |NERDCommenterToEOL|

\<leader\>cA |NERDCommenterAppend|

\<leader\>ca |NERDCommenterAltDelims|

\<leader\>cl |NERDCommenterAlignLeft \<leader\>cb |NERDCommenterAlignBoth

\<leader\>cu |NERDCommenterUncomment|
