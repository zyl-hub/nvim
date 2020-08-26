
v  ["          *@:<C-U>exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<CR>
n  ["          *@:call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")<CR>
v  []          *@m':<C-U>exe "normal! gv"|call search('^\s*endf\%[unction]\>', "bW")<CR>
n  []          *@m':call search('^\s*endf\%[unction]\>', "bW")<CR>
v  [[          *@m':<C-U>exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")<CR>
n  [[          *@m':call search('^\s*fu\%[nction]\>', "bW")<CR>
v  ]"          *@:<C-U>exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<CR>
n  ]"          *@:call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")<CR>
v  ][          *@m':<C-U>exe "normal! gv"|call search('^\s*endf\%[unction]\>', "W")<CR>
n  ][          *@m':call search('^\s*endf\%[unction]\>', "W")<CR>
v  ]]          *@m':<C-U>exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")<CR>
n  ]]          *@m':call search('^\s*fu\%[nction]\>', "W")<CR>
v  <C-E>         <Plug>(coc-snippets-select)
s  <C-H>       * <C-G>"_c
x  <NL>        * :call UltiSnips#SaveLastVisualSelection()<CR>gvs
s  <NL>        * <Esc>:call UltiSnips#ExpandSnippetOrJump()<CR>
   <CR>          <Plug>(wildfire-fuel)
x  <C-N>       * :<C-U>call multiple_cursors#new("v", 0)<CR>
n  <C-N>       * :call multiple_cursors#new("n", 1)<CR>
s  <C-R>       * <C-G>"_c<C-R>
v  <C-Y>c        <Plug>(emmet-code-pretty)
n  <C-Y>m        <Plug>(emmet-merge-lines)
n  <C-Y>A        <Plug>(emmet-anchorize-summary)
n  <C-Y>a        <Plug>(emmet-anchorize-url)
n  <C-Y>k        <Plug>(emmet-remove-tag)
n  <C-Y>j        <Plug>(emmet-split-join-tag)
n  <C-Y>/        <Plug>(emmet-toggle-comment)
n  <C-Y>I        <Plug>(emmet-image-encode)
n  <C-Y>i        <Plug>(emmet-image-size)
n  <C-Y>N        <Plug>(emmet-move-prev)
n  <C-Y>n        <Plug>(emmet-move-next)
v  <C-Y>D        <Plug>(emmet-balance-tag-outword)
n  <C-Y>D        <Plug>(emmet-balance-tag-outword)
v  <C-Y>d        <Plug>(emmet-balance-tag-inward)
n  <C-Y>d        <Plug>(emmet-balance-tag-inward)
n  <C-Y>u        <Plug>(emmet-update-tag)
n  <C-Y>;        <Plug>(emmet-expand-word)
v  <C-Y>,        <Plug>(emmet-expand-abbr)
n  <C-Y>,        <Plug>(emmet-expand-abbr)
n  <Space>ca     <Plug>NERDCommenterAltDelims
x  <Space>cu     <Plug>NERDCommenterUncomment
n  <Space>cu     <Plug>NERDCommenterUncomment
x  <Space>cb     <Plug>NERDCommenterAlignBoth
n  <Space>cb     <Plug>NERDCommenterAlignBoth
x  <Space>cl     <Plug>NERDCommenterAlignLeft
n  <Space>cl     <Plug>NERDCommenterAlignLeft
n  <Space>cA     <Plug>NERDCommenterAppend
x  <Space>cy     <Plug>NERDCommenterYank
n  <Space>cy     <Plug>NERDCommenterYank
x  <Space>cs     <Plug>NERDCommenterSexy
n  <Space>cs     <Plug>NERDCommenterSexy
x  <Space>ci     <Plug>NERDCommenterInvert
n  <Space>ci     <Plug>NERDCommenterInvert
n  <Space>c$     <Plug>NERDCommenterToEOL
x  <Space>cn     <Plug>NERDCommenterNested
n  <Space>cn     <Plug>NERDCommenterNested
x  <Space>cm     <Plug>NERDCommenterMinimal
n  <Space>cm     <Plug>NERDCommenterMinimal
x  <Space>c<Space>   <Plug>NERDCommenterToggle
n  <Space>c<Space>   <Plug>NERDCommenterToggle
x  <Space>cc     <Plug>NERDCommenterComment
n  <Space>cc     <Plug>NERDCommenterComment
n  <Space>ig     <Plug>IndentGuidesToggle
n  <Space><F9>   <Plug>VimspectorToggleConditionalBreakpoint
n  <Space>ww   * :e ~/vimwiki/index.md<CR>
n  <Space>g=   * :GitGutterNextHunk<CR>
n  <Space>g-   * :GitGutterPrevHunk<CR>
n  <Space>gf   * :GitGutterFold<CR>
n  <Space>a      :<C-U>set operatorfunc=<SNR>3_cocActionsOpenFromSelected<CR>g@
x  <Space>a      :<C-U>execute 'CocCommand actions.open ' . visualmode()<CR>
n  <Space>rn     <Plug>(coc-rename)
n  <Space>h    * :call <SNR>3_show_documentation()<CR>
n  <Space>vs   * :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
n  <Space>n    * :bn<CR>
n  <Space>ta   * i<++><Esc>
n  <Space>p    * "+p
v  <Space>y    * "+y
n  <Space>f    * :Autoformat<CR>
n  <Space>mtc  * :RemoveToc<CR>
n  <Space>mt   * :GenTocGFM<CR>
n  <Space><Space> * <Esc>/<++><CR>:nohlsearch<CR>c4l
n  <Space>sc   * :set spell!<CR>
n  <Space>tr   * :+tabnext<CR>
n  <Space>tl   * :-tabnext<CR>
n  <Space>tt   * :tabe<CR>
n  <Space><Left> * :vertical resize+5<CR>
n  <Space><Right> * :vertical resize-5<CR>
n  <Space><Down> * :res -5<CR>
n  <Space><Up> * :res +5<CR>
n  <Space>gl   * :Agit<CR>
n  <Space>gd   * <C-W>j
n  <Space>gu   * <C-W>k
n  <Space>gr   * <C-W>l
n  <Space>sd   * :set splitbelow<CR>:split<CR>
n  <Space>su   * :set nosplitbelow<CR>:split<CR>
n  <Space>sl   * :set nosplitright<CR>:vsplit<CR>
n  <Space>sr   * :set splitright<CR>:vsplit<CR>
n  <Space>r    * :call CompileRunCode()<CR>
n  <Space><CR> * :nohlsearch<CR>
n  <Space>gyn  * :Goyo!<CR>
n  <Space>gy   * :Goyo<CR>
o  %             <Plug>(MatchitOperationForward)
x  %             <Plug>(MatchitVisualForward)
n  %             <Plug>(MatchitNormalForward)
n  '[          * :<C-U>call signature#mark#Goto("prev", "line", "alpha")<CR>
n  ']          * :<C-U>call signature#mark#Goto("next", "line", "alpha")<CR>
n  -           * dd
n  H           * :GitGutterPreviewHunk<CR>
x  S             <Plug>VSurround
o  [%            <Plug>(MatchitOperationMultiBackward)
x  [%            <Plug>(MatchitVisualMultiBackward)
n  [%            <Plug>(MatchitNormalMultiBackward)
o  [z          * '<Esc>:<C-U>call <SNR>61_UpdateWin()<CR>' . '"' . v:register . v:operator . v:count1 . '[z'
x  [z          * ':<C-U>call <SNR>61_UpdateWin()<CR>gv'.v:count.'[z'
n  [z          * ':<C-U>call <SNR>61_UpdateWin()<CR>'.v:count.'[z'
n  [=          * :<C-U>call signature#marker#Goto("prev", "any",  v:count)<CR>
n  [-          * :<C-U>call signature#marker#Goto("prev", "same", v:count)<CR>
n  [`          * :<C-U>call signature#mark#Goto("prev", "spot", "pos")<CR>
n  ['          * :<C-U>call signature#mark#Goto("prev", "line", "pos")<CR>
n  [g            <Plug>(coc-diagnostic-prev)
o  ]%            <Plug>(MatchitOperationMultiForward)
x  ]%            <Plug>(MatchitVisualMultiForward)
n  ]%            <Plug>(MatchitNormalMultiForward)
o  ]z          * '<Esc>:<C-U>call <SNR>61_UpdateWin()<CR>' . '"' . v:register . v:operator . v:count1 . ']z'
x  ]z          * ':<C-U>call <SNR>61_UpdateWin()<CR>gv'.v:count.']z'
n  ]z          * ':<C-U>call <SNR>61_UpdateWin()<CR>'.v:count.']z'
n  ]=          * :<C-U>call signature#marker#Goto("next", "any",  v:count)<CR>
n  ]-          * :<C-U>call signature#marker#Goto("next", "same", v:count)<CR>
n  ]`          * :<C-U>call signature#mark#Goto("next", "spot", "pos")<CR>
n  ]'          * :<C-U>call signature#mark#Goto("next", "line", "pos")<CR>
n  ]g            <Plug>(coc-diagnostic-next)
n  `[          * :<C-U>call signature#mark#Goto("prev", "spot", "alpha")<CR>
n  `]          * :<C-U>call signature#mark#Goto("next", "spot", "alpha")<CR>
x  a%            <Plug>(MatchitVisualTextObject)
n  cS            <Plug>CSurround
n  cs            <Plug>Csurround
n  cc          * :CocCommand<CR>
n  ds            <Plug>Dsurround
n  dm          * :<C-U>call signature#utils#Remove(v:count)<CR>
v  gx            <Plug>NetrwBrowseXVis
n  gx            <Plug>NetrwBrowseX
o  g%            <Plug>(MatchitOperationBackward)
x  g%            <Plug>(MatchitVisualBackward)
n  g%            <Plug>(MatchitNormalBackward)
n  gs          * :Switch<CR>
x  gS            <Plug>VgSurround
x  g<M-n>      * :<C-U>call multiple_cursors#select_all("v", 0)<CR>
n  g<M-n>      * :call multiple_cursors#select_all("n", 0)<CR>
x  g<C-N>      * :<C-U>call multiple_cursors#new("v", 0)<CR>
n  g<C-N>      * :call multiple_cursors#new("n", 0)<CR>
n  gr            <Plug>(coc-references)
n  gi            <Plug>(coc-implementation)
n  gy            <Plug>(coc-type-definition)
n  gd            <Plug>(coc-definition)
n  l           * daw
n  m?          * :<C-U>call signature#marker#List(v:count, 0)<CR>
n  m/          * :<C-U>call signature#mark#List(0, 0)<CR>
n  m<BS>       * :<C-U>call signature#marker#Purge()<CR>
n  m<Space>    * :<C-U>call signature#mark#Purge("all")<CR>
n  m-          * :<C-U>call signature#mark#Purge("line")<CR>
n  m.          * :<C-U>call signature#mark#ToggleAtLine()<CR>
n  m,          * :<C-U>call signature#mark#Toggle("next")<CR>
n  m           * :<C-U>call signature#utils#Input()<CR>
n  ra          * :RnvimrToggle<CR>
n  ts          * :CocCommand translator.popup<CR>
n  tt          * :CocCommand explorer<CR>
n  tx          * :r !figlet
n  wq          * :wqa<CR>
n  ySS           <Plug>YSsurround
n  ySs           <Plug>YSsurround
n  yss           <Plug>Yssurround
n  yS            <Plug>YSurround
n  ys            <Plug>Ysurround
o  zu          * '<Esc>:<C-U>call <SNR>61_UpdateWin()<CR>' . '"' . v:register . v:operator . v:count1 . 'zu'
x  zu          * ':<C-U>call <SNR>61_UpdateWin()<CR>gv'.v:count.'zu'
n  zu          * ':<C-U>call <SNR>61_UpdateWin()<CR>'.v:count.'zu'
o  ze          * '<Esc>:<C-U>call <SNR>61_UpdateWin()<CR>' . '"' . v:register . v:operator . v:count1 . 'ze'
x  ze          * ':<C-U>call <SNR>61_UpdateWin()<CR>gv'.v:count.'ze'
n  ze          * ':<C-U>call <SNR>61_UpdateWin()<CR>'.v:count.'ze'
n  zC          * :<C-U>call <SNR>61_UpdateWin()<CR>zC
n  zc          * :<C-U>call <SNR>61_UpdateWin()<CR>zc
n  zO          * :<C-U>call <SNR>61_UpdateWin()<CR>zO
n  zo          * :<C-U>call <SNR>61_UpdateWin()<CR>zo
n  zA          * :<C-U>call <SNR>61_UpdateWin()<CR>zA
n  za          * :<C-U>call <SNR>61_UpdateWin()<CR>za
n  zX          * :<C-U>call <SNR>61_UpdateWin()<CR>zX
n  zx          * :<C-U>call <SNR>61_UpdateWin()<CR>zx
n  zuz           <Plug>(FastFoldUpdate)
v  <Plug>(coc-explorer-action-v->>) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v->>'])<CR>
n  <Plug>(coc-explorer-action-n->>) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n->>'])<CR>
v  <Plug>(coc-explorer-action-v-<<) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-<<'])<CR>
n  <Plug>(coc-explorer-action-n-<<) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-<<'])<CR>
v  <Plug>(coc-explorer-action-v-]c) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-]c'])<CR>
n  <Plug>(coc-explorer-action-n-]c) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-]c'])<CR>
v  <Plug>(coc-explorer-action-v-[c) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-[c'])<CR>
n  <Plug>(coc-explorer-action-n-[c) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-[c'])<CR>
v  <Plug>(coc-explorer-action-v-]d) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-]d'])<CR>
n  <Plug>(coc-explorer-action-n-]d) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-]d'])<CR>
v  <Plug>(coc-explorer-action-v-[d) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-[d'])<CR>
n  <Plug>(coc-explorer-action-n-[d) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-[d'])<CR>
v  <Plug>(coc-explorer-action-v-]]) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-]]'])<CR>
n  <Plug>(coc-explorer-action-n-]]) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-]]'])<CR>
v  <Plug>(coc-explorer-action-v-[[) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-[['])<CR>
n  <Plug>(coc-explorer-action-n-[[) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-[['])<CR>
v  <Plug>(coc-explorer-action-v-b) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-b'])<CR>
n  <Plug>(coc-explorer-action-n-b) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-b'])<CR>
v  <Plug>(coc-explorer-action-v-B) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-B'])<CR>
n  <Plug>(coc-explorer-action-n-B) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-B'])<CR>
v  <Plug>(coc-explorer-action-v-F) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-F'])<CR>
n  <Plug>(coc-explorer-action-n-F) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-F'])<CR>
v  <Plug>(coc-explorer-action-v-f) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-f'])<CR>
n  <Plug>(coc-explorer-action-n-f) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-f'])<CR>
v  <Plug>(coc-explorer-action-v-gd) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-gd'])<CR>
n  <Plug>(coc-explorer-action-n-gd) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-gd'])<CR>
v  <Plug>(coc-explorer-action-v-X) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-X'])<CR>
n  <Plug>(coc-explorer-action-n-X) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-X'])<CR>
v  <Plug>(coc-explorer-action-v-q) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-q'])<CR>
n  <Plug>(coc-explorer-action-n-q) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-q'])<CR>
v  <Plug>(coc-explorer-action-v-?) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-?'])<CR>
n  <Plug>(coc-explorer-action-n-?) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-?'])<CR>
v  <Plug>(coc-explorer-action-v-R) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-R'])<CR>
n  <Plug>(coc-explorer-action-n-R) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-R'])<CR>
v  <Plug>(coc-explorer-action-v-zh) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-zh'])<CR>
n  <Plug>(coc-explorer-action-n-zh) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-zh'])<CR>
v  <Plug>(coc-explorer-action-v-.) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-.'])<CR>
n  <Plug>(coc-explorer-action-n-.) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-.'])<CR>
v  <Plug>(coc-explorer-action-v-cw) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-cw'])<CR>
n  <Plug>(coc-explorer-action-n-cw) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-cw'])<CR>
v  <Plug>(coc-explorer-action-v-M) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-M'])<CR>
n  <Plug>(coc-explorer-action-n-M) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-M'])<CR>
n  <Plug>(coc-explorer-action-n-k) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-k'])<CR>
v  <Plug>(coc-explorer-action-v-a) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-a'])<CR>
n  <Plug>(coc-explorer-action-n-a) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-a'])<CR>
v  <Plug>(coc-explorer-action-v-dD) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-dD'])<CR>
n  <Plug>(coc-explorer-action-n-dD) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-dD'])<CR>
v  <Plug>(coc-explorer-action-v-pp) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-pp'])<CR>
n  <Plug>(coc-explorer-action-n-pp) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-pp'])<CR>
v  <Plug>(coc-explorer-action-v-dd) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-dd'])<CR>
n  <Plug>(coc-explorer-action-n-dd) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-dd'])<CR>
v  <Plug>(coc-explorer-action-v-yy) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-yy'])<CR>
n  <Plug>(coc-explorer-action-n-yy) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-yy'])<CR>
v  <Plug>(coc-explorer-action-v-yn) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-yn'])<CR>
n  <Plug>(coc-explorer-action-n-yn) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-yn'])<CR>
v  <Plug>(coc-explorer-action-v-yp) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-yp'])<CR>
n  <Plug>(coc-explorer-action-n-yp) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-yp'])<CR>
v  <Plug>(coc-explorer-action-v-l) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-l'])<CR>
n  <Plug>(coc-explorer-action-n-l) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-l'])<CR>
v  <Plug>(coc-explorer-action-v-n) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-n'])<CR>
n  <Plug>(coc-explorer-action-n-n) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-n'])<CR>
v  <Plug>(coc-explorer-action-v-O) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-O'])<CR>
n  <Plug>(coc-explorer-action-n-O) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-O'])<CR>
n  <Plug>(coc-explorer-action-n-o) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-o'])<CR>
v  <Plug>(coc-explorer-action-v-I) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-I'])<CR>
n  <Plug>(coc-explorer-action-n-I) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-I'])<CR>
v  <Plug>(coc-explorer-action-v-[cr]) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-[cr]'])<CR>
n  <Plug>(coc-explorer-action-n-[cr]) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-[cr]'])<CR>
v  <Plug>(coc-explorer-action-v-i) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-i'])<CR>
n  <Plug>(coc-explorer-action-n-i) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-i'])<CR>
v  <Plug>(coc-explorer-action-v-gh) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-gh'])<CR>
n  <Plug>(coc-explorer-action-n-gh) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-gh'])<CR>
v  <Plug>(coc-explorer-action-v-gl) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-gl'])<CR>
n  <Plug>(coc-explorer-action-n-gl) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-gl'])<CR>
v  <Plug>(coc-explorer-action-v-N) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-N'])<CR>
n  <Plug>(coc-explorer-action-n-N) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-N'])<CR>
v  <Plug>(coc-explorer-action-v-[tab]) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-[tab]'])<CR>
n  <Plug>(coc-explorer-action-n-[tab]) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-[tab]'])<CR>
v  <Plug>(coc-explorer-action-v-h) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-h'])<CR>
n  <Plug>(coc-explorer-action-n-h) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-h'])<CR>
v  <Plug>(coc-explorer-action-v-e) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-e'])<CR>
n  <Plug>(coc-explorer-action-n-e) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-e'])<CR>
v  <Plug>(coc-explorer-action-v-u) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-v-u'])<CR>
n  <Plug>(coc-explorer-action-n-u) * :<C-U>call coc#rpc#request('doKeymap', ['explorer-action-n-u'])<CR>
n  <Plug>(coc-translator-h) * :<C-U>call coc#rpc#notify('doKeymap', ['translator-h'])<CR>
v  <Plug>(coc-translator-rv) * :<C-U>call coc#rpc#notify('doKeymap', ['translator-rv'])<CR>
n  <Plug>(coc-translator-r) * :<C-U>call coc#rpc#notify('doKeymap', ['translator-r'])<CR>
v  <Plug>(coc-translator-ev) * :<C-U>call coc#rpc#notify('doKeymap', ['translator-ev'])<CR>
n  <Plug>(coc-translator-e) * :<C-U>call coc#rpc#notify('doKeymap', ['translator-e'])<CR>
v  <Plug>(coc-translator-pv) * :<C-U>call coc#rpc#notify('doKeymap', ['translator-pv'])<CR>
n  <Plug>(coc-translator-p) * :<C-U>call coc#rpc#notify('doKeymap', ['translator-p'])<CR>
v  <Plug>(coc-snippets-select) * :<C-U>call coc#rpc#notify('doKeymap', ['snippets-select'])<CR>
   <Plug>AirlineSelectNextTab * :<C-U>call <SNR>115_jump_to_tab(v:count1)<CR>
   <Plug>AirlineSelectPrevTab * :<C-U>call <SNR>115_jump_to_tab(-v:count1)<CR>
   <Plug>AirlineSelectTab9 * :call <SNR>115_select_tab(8)<CR>
   <Plug>AirlineSelectTab8 * :call <SNR>115_select_tab(7)<CR>
   <Plug>AirlineSelectTab7 * :call <SNR>115_select_tab(6)<CR>
   <Plug>AirlineSelectTab6 * :call <SNR>115_select_tab(5)<CR>
   <Plug>AirlineSelectTab5 * :call <SNR>115_select_tab(4)<CR>
   <Plug>AirlineSelectTab4 * :call <SNR>115_select_tab(3)<CR>
   <Plug>AirlineSelectTab3 * :call <SNR>115_select_tab(2)<CR>
   <Plug>AirlineSelectTab2 * :call <SNR>115_select_tab(1)<CR>
   <Plug>AirlineSelectTab1 * :call <SNR>115_select_tab(0)<CR>
s  <BS>        * <C-G>"_c
v  <Plug>NetrwBrowseXVis * :<C-U>call netrw#BrowseXVis()<CR>
n  <Plug>NetrwBrowseX * :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<CR>
v  <Plug>(MatchitVisualTextObject)   <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
o  <Plug>(MatchitOperationMultiForward) * :<C-U>call matchit#MultiMatch("W",  "o")<CR>
o  <Plug>(MatchitOperationMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "o")<CR>
v  <Plug>(MatchitVisualMultiForward) * :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``
v  <Plug>(MatchitVisualMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``
n  <Plug>(MatchitNormalMultiForward) * :<C-U>call matchit#MultiMatch("W",  "n")<CR>
n  <Plug>(MatchitNormalMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "n")<CR>
o  <Plug>(MatchitOperationBackward) * :<C-U>call matchit#Match_wrapper('',0,'o')<CR>
o  <Plug>(MatchitOperationForward) * :<C-U>call matchit#Match_wrapper('',1,'o')<CR>
v  <Plug>(MatchitVisualBackward) * :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``
v  <Plug>(MatchitVisualForward) * :<C-U>call matchit#Match_wrapper('',1,'v')<CR>m'gv``
n  <Plug>(MatchitNormalBackward) * :<C-U>call matchit#Match_wrapper('',0,'n')<CR>
n  <Plug>(MatchitNormalForward) * :<C-U>call matchit#Match_wrapper('',1,'n')<CR>
n  <Plug>NERDCommenterAltDelims * :call <SNR>63_SwitchToAlternativeDelimiters(1)<CR>
x  <Plug>NERDCommenterUncomment * :call NERDComment("x", "Uncomment")<CR>
n  <Plug>NERDCommenterUncomment * :call NERDComment("n", "Uncomment")<CR>
x  <Plug>NERDCommenterAlignBoth * :call NERDComment("x", "AlignBoth")<CR>
n  <Plug>NERDCommenterAlignBoth * :call NERDComment("n", "AlignBoth")<CR>
x  <Plug>NERDCommenterAlignLeft * :call NERDComment("x", "AlignLeft")<CR>
n  <Plug>NERDCommenterAlignLeft * :call NERDComment("n", "AlignLeft")<CR>
n  <Plug>NERDCommenterAppend * :call NERDComment("n", "Append")<CR>
x  <Plug>NERDCommenterYank * :call NERDComment("x", "Yank")<CR>
n  <Plug>NERDCommenterYank * :call NERDComment("n", "Yank")<CR>
x  <Plug>NERDCommenterSexy * :call NERDComment("x", "Sexy")<CR>
n  <Plug>NERDCommenterSexy * :call NERDComment("n", "Sexy")<CR>
x  <Plug>NERDCommenterInvert * :call NERDComment("x", "Invert")<CR>
n  <Plug>NERDCommenterInvert * :call NERDComment("n", "Invert")<CR>
n  <Plug>NERDCommenterToEOL * :call NERDComment("n", "ToEOL")<CR>
x  <Plug>NERDCommenterNested * :call NERDComment("x", "Nested")<CR>
n  <Plug>NERDCommenterNested * :call NERDComment("n", "Nested")<CR>
x  <Plug>NERDCommenterMinimal * :call NERDComment("x", "Minimal")<CR>
n  <Plug>NERDCommenterMinimal * :call NERDComment("n", "Minimal")<CR>
x  <Plug>NERDCommenterToggle * :call NERDComment("x", "Toggle")<CR>
n  <Plug>NERDCommenterToggle * :call NERDComment("n", "Toggle")<CR>
x  <Plug>NERDCommenterComment * :call NERDComment("x", "Comment")<CR>
n  <Plug>NERDCommenterComment * :call NERDComment("n", "Comment")<CR>
n  <Plug>(FastFoldUpdate) * :<C-U>FastFoldUpdate!<CR>
o  <Plug>(wildfire-quick-select) * :<C-U>call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR>
n  <Plug>(wildfire-quick-select) * :<C-U>call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR>
v  <Plug>(wildfire-fuel) * :<C-U>call wildfire#Fuel(v:count1)<CR>
o  <Plug>(wildfire-fuel) * :<C-U>call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR>
n  <Plug>(wildfire-fuel) * :<C-U>call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR>
v  <Plug>(wildfire-water) * :<C-U>call wildfire#Water(v:count1)<CR>
v  <Plug>VgSurround * :<C-U>call <SNR>54_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR>
v  <Plug>VSurround * :<C-U>call <SNR>54_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR>
n  <Plug>YSurround * <SNR>54_opfunc2('setup')
n  <Plug>Ysurround * <SNR>54_opfunc('setup')
n  <Plug>YSsurround * <SNR>54_opfunc2('setup').'_'
n  <Plug>Yssurround * '^'.v:count1.<SNR>54_opfunc('setup').'g_'
n  <Plug>CSurround * :<C-U>call <SNR>54_changesurround(1)<CR>
n  <Plug>Csurround * :<C-U>call <SNR>54_changesurround()<CR>
n  <Plug>Dsurround * :<C-U>call <SNR>54_dosurround(<SNR>54_inputtarget())<CR>
n  <Plug>SurroundRepeat * .
x  <M-n>       * :<C-U>call multiple_cursors#select_all("v", 0)<CR>
n  <M-n>       * :call multiple_cursors#select_all("n", 1)<CR>
v  <Plug>(emmet-code-pretty) * :call emmet#codePretty()<CR>
n  <Plug>(emmet-merge-lines) * :call emmet#mergeLines()<CR>
n  <Plug>(emmet-anchorize-summary) * :call emmet#anchorizeURL(1)<CR>
n  <Plug>(emmet-anchorize-url) * :call emmet#anchorizeURL(0)<CR>
n  <Plug>(emmet-remove-tag) * :call emmet#removeTag()<CR>
n  <Plug>(emmet-split-join-tag) * :call emmet#splitJoinTag()<CR>
n  <Plug>(emmet-toggle-comment) * :call emmet#toggleComment()<CR>
n  <Plug>(emmet-image-encode) * :call emmet#imageEncode()<CR>
n  <Plug>(emmet-image-size) * :call emmet#imageSize()<CR>
n  <Plug>(emmet-move-prev-item) * :call emmet#moveNextPrevItem(1)<CR>
n  <Plug>(emmet-move-next-item) * :call emmet#moveNextPrevItem(0)<CR>
n  <Plug>(emmet-move-prev) * :call emmet#moveNextPrev(1)<CR>
n  <Plug>(emmet-move-next) * :call emmet#moveNextPrev(0)<CR>
v  <Plug>(emmet-balance-tag-outword) * <Esc>:call emmet#balanceTag(-1)<CR>
n  <Plug>(emmet-balance-tag-outword) * :call emmet#balanceTag(-1)<CR>
v  <Plug>(emmet-balance-tag-inward) * <Esc>:call emmet#balanceTag(1)<CR>
n  <Plug>(emmet-balance-tag-inward) * :call emmet#balanceTag(1)<CR>
n  <Plug>(emmet-update-tag) * :call emmet#updateTag()<CR>
n  <Plug>(emmet-expand-word) * :call emmet#expandAbbr(1,"")<CR>
v  <Plug>(emmet-expand-abbr) * :call emmet#expandAbbr(2,"")<CR>
n  <Plug>(emmet-expand-abbr) * :call emmet#expandAbbr(3,"")<CR>
n  <Plug>(agit-exit) * :<C-U>call agit#exit()<CR>
n  <Plug>(agit-git-revert) * :<C-U>AgitGit revert <hash><CR>
n  <Plug>(agit-git-cherry-pick) * :<C-U>AgitGit cherry-pick <hash><CR>
n  <Plug>(agit-git-bisect-reset) * :<C-U>AgitGit bisect reset<CR>
n  <Plug>(agit-git-bisect-bad) * :<C-U>AgitGit bisect bad<CR>
n  <Plug>(agit-git-bisect-good) * :<C-U>AgitGit bisect good<CR>
n  <Plug>(agit-git-bisect-start) * :<C-U>AgitGit bisect start HEAD <hash> \%#<CR>
n  <Plug>(agit-git-rebase-i) * :<C-U>AgitGitConfirm! rebase --interactive <hash><CR>
n  <Plug>(agit-git-rebase) * :<C-U>AgitGitConfirm rebase <hash><CR>
n  <Plug>(agit-git-reset-hard) * :<C-U>AgitGitConfirm reset --hard <hash><CR>
n  <Plug>(agit-git-reset) * :<C-U>AgitGitConfirm reset <hash><CR>
n  <Plug>(agit-git-reset-soft) * :<C-U>AgitGitConfirm reset --soft <hash><CR>
n  <Plug>(agit-git-branch-d) * :<C-U>AgitGitConfirm branch -d <branch><CR>
n  <Plug>(agit-git-checkout-b) * :<C-U>AgitGit checkout -b \%# <hash><CR>
n  <Plug>(agit-git-checkout) * :<C-U>AgitGit checkout <branch><CR>
n  <Plug>(agit-diff-with-local) * :<C-U>AgitDiff <hash><CR>
n  <Plug>(agit-diff) * :<C-U>AgitDiff<CR>
n  <Plug>(agit-print-commitmsg) * :<C-U>call agit#print_commitmsg()<CR>
n  <Plug>(agit-show-commit) * :<C-U>call agit#show_commit()<CR>
n  <Plug>(agit-yank-hash) * :<C-U>call agit#yank_hash()<CR>
n  <Plug>(agit-scrollup-diff) * :<C-U>call agit#remote_scroll('diff', 'up')<CR>
n  <Plug>(agit-scrolldown-diff) * :<C-U>call agit#remote_scroll('diff', 'down')<CR>
n  <Plug>(agit-scrollup-stat) * :<C-U>call agit#remote_scroll('stat', 'up')<CR>
n  <Plug>(agit-scrolldown-stat) * :<C-U>call agit#remote_scroll('stat', 'down')<CR>
n  <Plug>(agit-reload) * :<C-U>call agit#reload()<CR>
n  <Plug>GitGutterPreviewHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')<CR>
n  <Plug>(GitGutterPreviewHunk) * :GitGutterPreviewHunk<CR>
n  <Plug>GitGutterUndoHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')<CR>
n  <Plug>(GitGutterUndoHunk) * :GitGutterUndoHunk<CR>
n  <Plug>GitGutterStageHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')<CR>
n  <Plug>(GitGutterStageHunk) * :GitGutterStageHunk<CR>
x  <Plug>GitGutterStageHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')<CR>
x  <Plug>(GitGutterStageHunk) * :GitGutterStageHunk<CR>
n  <Plug>GitGutterPrevHunk * &diff ? '[c' : ":\<C-U>call gitgutter#utility#warn('please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\<CR>"
n  <Plug>(GitGutterPrevHunk) * &diff ? '[c' : ":\<C-U>execute v:count1 . 'GitGutterPrevHunk'\<CR>"
n  <Plug>GitGutterNextHunk * &diff ? ']c' : ":\<C-U>call gitgutter#utility#warn('please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\<CR>"
n  <Plug>(GitGutterNextHunk) * &diff ? ']c' : ":\<C-U>execute v:count1 . 'GitGutterNextHunk'\<CR>"
x  <Plug>(GitGutterTextObjectOuterVisual) * :<C-U>call gitgutter#hunk#text_object(0)<CR>
x  <Plug>(GitGutterTextObjectInnerVisual) * :<C-U>call gitgutter#hunk#text_object(1)<CR>
o  <Plug>(GitGutterTextObjectOuterPending) * :<C-U>call gitgutter#hunk#text_object(0)<CR>
o  <Plug>(GitGutterTextObjectInnerPending) * :<C-U>call gitgutter#hunk#text_object(1)<CR>
n  <Plug>(conflict-marker-prev-hunk) * :<C-U>ConflictMarkerPrevHunk<CR>
n  <Plug>(conflict-marker-next-hunk) * :<C-U>ConflictMarkerNextHunk<CR>
n  <Plug>(conflict-marker-none) * :<C-U>ConflictMarkerNone<CR>
n  <Plug>(conflict-marker-both) * :<C-U>ConflictMarkerBoth<CR>
n  <Plug>(conflict-marker-ourselves) * :<C-U>ConflictMarkerOurselves<CR>
n  <Plug>(conflict-marker-themselves) * :<C-U>ConflictMarkerThemselves<CR>
n  <Plug>IndentGuidesDisable & :IndentGuidesDisable<CR>
n  <Plug>IndentGuidesEnable & :IndentGuidesEnable<CR>
n  <Plug>IndentGuidesToggle & :IndentGuidesToggle<CR>
s  <Del>       * <C-G>"_c
x  <BS>          <Plug>(wildfire-water)
s  <C-Tab>     * <Esc>:call UltiSnips#ListSnippets()<CR>
o  <Plug>(coc-classobj-a) * :<C-U>call coc#rpc#request('selectSymbolRange', [v:false, '', ['Interface', 'Struct', 'Class']])<CR>
o  <Plug>(coc-classobj-i) * :<C-U>call coc#rpc#request('selectSymbolRange', [v:true, '', ['Interface', 'Struct', 'Class']])<CR>
v  <Plug>(coc-classobj-a) * :<C-U>call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Interface', 'Struct', 'Class']])<CR>
v  <Plug>(coc-classobj-i) * :<C-U>call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Interface', 'Struct', 'Class']])<CR>
o  <Plug>(coc-funcobj-a) * :<C-U>call coc#rpc#request('selectSymbolRange', [v:false, '', ['Method', 'Function']])<CR>
o  <Plug>(coc-funcobj-i) * :<C-U>call coc#rpc#request('selectSymbolRange', [v:true, '', ['Method', 'Function']])<CR>
v  <Plug>(coc-funcobj-a) * :<C-U>call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Method', 'Function']])<CR>
v  <Plug>(coc-funcobj-i) * :<C-U>call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Method', 'Function']])<CR>
n  <Plug>(coc-cursors-position) * :<C-U>call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])<CR>
n  <Plug>(coc-cursors-word) * :<C-U>call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])<CR>
v  <Plug>(coc-cursors-range) * :<C-U>call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])<CR>
n  <Plug>(coc-cursors-operator) * :<C-U>set operatorfunc=<SNR>29_CursorRangeFromSelected<CR>g@
n  <Plug>(coc-refactor) * :<C-U>call       CocActionAsync('refactor')<CR>
n  <Plug>(coc-command-repeat) * :<C-U>call       CocAction('repeatCommand')<CR>
n  <Plug>(coc-float-jump) * :<C-U>call       coc#util#float_jump()<CR>
n  <Plug>(coc-float-hide) * :<C-U>call       coc#util#float_hide()<CR>
n  <Plug>(coc-fix-current) * :<C-U>call       CocActionAsync('doQuickfix')<CR>
n  <Plug>(coc-openlink) * :<C-U>call       CocActionAsync('openLink')<CR>
n  <Plug>(coc-references) * :<C-U>call       CocActionAsync('jumpReferences')<CR>
n  <Plug>(coc-type-definition) * :<C-U>call       CocActionAsync('jumpTypeDefinition')<CR>
n  <Plug>(coc-implementation) * :<C-U>call       CocActionAsync('jumpImplementation')<CR>
n  <Plug>(coc-declaration) * :<C-U>call       CocActionAsync('jumpDeclaration')<CR>
n  <Plug>(coc-definition) * :<C-U>call       CocActionAsync('jumpDefinition')<CR>
n  <Plug>(coc-diagnostic-prev-error) * :<C-U>call       CocActionAsync('diagnosticPrevious', 'error')<CR>
n  <Plug>(coc-diagnostic-next-error) * :<C-U>call       CocActionAsync('diagnosticNext',     'error')<CR>
n  <Plug>(coc-diagnostic-prev) * :<C-U>call       CocActionAsync('diagnosticPrevious')<CR>
n  <Plug>(coc-diagnostic-next) * :<C-U>call       CocActionAsync('diagnosticNext')<CR>
n  <Plug>(coc-diagnostic-info) * :<C-U>call       CocActionAsync('diagnosticInfo')<CR>
n  <Plug>(coc-format) * :<C-U>call       CocActionAsync('format')<CR>
n  <Plug>(coc-format-selected) * :<C-U>set        operatorfunc=<SNR>29_FormatFromSelected<CR>g@
n  <Plug>(coc-rename) * :<C-U>call       CocActionAsync('rename')<CR>
n  <Plug>(coc-codeaction-line) * :<C-U>call       CocActionAsync('codeAction',         'n')<CR>
n  <Plug>(coc-codeaction) * :<C-U>call       CocActionAsync('codeAction',         '')<CR>
n  <Plug>(coc-codeaction-selected) * :<C-U>set        operatorfunc=<SNR>29_CodeActionFromSelected<CR>g@
v  <Plug>(coc-codeaction-selected) * :<C-U>call       CocActionAsync('codeAction',         visualmode())<CR>
v  <Plug>(coc-format-selected) * :<C-U>call       CocActionAsync('formatSelected',     visualmode())<CR>
n  <Plug>(coc-codelens-action) * :<C-U>call       CocActionAsync('codeLensAction')<CR>
n  <Plug>(coc-range-select) * :<C-U>call       CocAction('rangeSelect',     '', v:true)<CR>
v  <Plug>(coc-range-select-backward) * :<C-U>call       CocAction('rangeSelect',     visualmode(), v:false)<CR>
v  <Plug>(coc-range-select) * :<C-U>call       CocAction('rangeSelect',     visualmode(), v:true)<CR>
o  <Plug>(fzf-maps-o) * <C-C>:<C-U>call fzf#vim#maps('o', 0)<CR>
x  <Plug>(fzf-maps-x) * :<C-U>call fzf#vim#maps('x', 0)<CR>
n  <Plug>(fzf-maps-n) * :<C-U>call fzf#vim#maps('n', 0)<CR>
n  <F12>         <Plug>VimspectorStepOut
n  <F11>         <Plug>VimspectorStepInto
n  <F10>         <Plug>VimspectorStepOver
n  <F8>          <Plug>VimspectorAddFunctionBreakpoint
n  <F9>          <Plug>VimspectorToggleBreakpoint
n  <F6>          <Plug>VimspectorPause
n  <F4>          <Plug>VimspectorRestart
n  <F3>          <Plug>VimspectorStop
n  <F5>          <Plug>VimspectorContinue
n  <Plug>VimspectorStepOut * :<C-U>call vimspector#StepOut()<CR>
n  <Plug>VimspectorStepInto * :<C-U>call vimspector#StepInto()<CR>
n  <Plug>VimspectorStepOver * :<C-U>call vimspector#StepOver()<CR>
n  <Plug>VimspectorAddFunctionBreakpoint * :<C-U>call vimspector#AddFunctionBreakpoint( expand( '<cexpr>' ) )<CR>
n  <Plug>VimspectorToggleConditionalBreakpoint * :<C-U>call vimspector#ToggleBreakpoint( { 'condition': input( 'Enter condition expression: ' ),   'hitCondition': input( 'Enter hit count expression: ' ) } )<CR>
n  <Plug>VimspectorToggleBreakpoint * :<C-U>call vimspector#ToggleBreakpoint()<CR>
n  <Plug>VimspectorPause * :<C-U>call vimspector#Pause()<CR>
n  <Plug>VimspectorRestart * :<C-U>call vimspector#Restart()<CR>
n  <Plug>VimspectorStop * :<C-U>call vimspector#Stop()<CR>
n  <Plug>VimspectorContinue * :<C-U>call vimspector#Continue()<CR>
n  <F7>        * :call vimspector#Reset()<CR>
n  <F1>        * :call vimspector#StepInto()<CR>