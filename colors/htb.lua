local htb_normal = require('htb.htb-normal.highlights')

local darkColors = {
    none        = {'none', 'none'},
    fg          = {"#a4b1cd", 145},
    back        = {'#141d2b',23},
    base0       = {'#a4b1cd',145},
    base1       = {'#a4b1cd',145},
    base2       = {'#ffffff',230},
    base3       = {'#ffffff',231},
    base00      = {'#404552',103},
    base01      = {'#313f55',102},
    base02      = {'#111927',23},
    base03      = {'#1a2332',23},
    gray        = {"#313f55", 106},
    red         = {'#ff3e3e',203},
    diff_red    = {"#ff8484", 203},
    green       = {'#9fef00',142},
    diff_green  = {"#c5f467", 142},
    yellow      = {'#ffaf00',178},
    diff_yellow = {'#ffcc5c', 179},
    blue        = {'#004cff',38},
    light_blue  = {"#5cb2ff", 39},
    magenta     = {'#9f00ff',169},
    cyan        = {'#5cecc6',37},
    dark_cyan   = {"#2ee7b6", 37},
    orange      = {'#2ee7b6',166},
    violet      = {'#c16cfa',104},
    err_bg      = {'#ffffff',231}
}

htb_normal.load_syntax(darkColors)
htb_normal.terminal_colors(darkColors)
