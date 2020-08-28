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
