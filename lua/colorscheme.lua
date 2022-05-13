vim.cmd [[ colorscheme nightfly ]]

local opt = vim.opt
local g = vim.g

-- opt.fillchars = { horiz = '━', horizup = '┻', horizdown = '┳', vert = '┃', vertleft = '┫', vertright = '┣', verthoriz = '╋', }

local highlight_create = vim.highlight.create
local highlight_link = vim.highlight.link

g.nightflyCursorColor = 1
g.nightflyUnderlineMatchParen = 0
g.nightflyNormalFloat = 1
g.nightflyTransparent = 0


highlight_create('CursorLineNR', {
    guifg = "Yellow",
    ctermfg = "Yellow",
    guibg = "None",
    cterm = "bold",
}, false)

highlight_create('LspDiagnosticsVirtualTextError', { 
    guifg = "Red", ctermfg = "Red", gui = "bold" 
}, false)

highlight_create('DiagnosticVirtualTextError', { 
    guifg = "Red", ctermfg = "Red", gui = "bold" 
}, false)

highlight_create('LspDiagnosticsVirtualTextWarning', { 
    guifg = "Yellow", ctermfg = "Yellow" 
}, false)

highlight_create('DiagnosticVirtualTextWarn', { 
    guifg = "Yellow", ctermfg = "Yellow" 
}, false)

highlight_create('DiagnosticVirtualTextInfo', { 
    guifg = "White", ctermfg = "White" 
}, false)

highlight_create('DiagnosticVirtualTextHint', { 
    guifg = "White", ctermfg = "White" 
}, false)

highlight_create('Comment', { 
    gui = "italic", cterm = "italic" 
}, false);

highlight_link('FloatBorder', 'NightflyWhiteAler', false)
