" hi clear
source $VIMRUNTIME/colors/vim.lua " Nvim: revert to Vim default color scheme
let g:colors_name = 'andrew'

let s:t_Co = &t_Co

let s:rosewater = "#F4DBD6"
let s:flamingo = "#F0C6C6"
let s:pink = "#F5BDE6"
let s:mauve = "#C6A0F6"
let s:red = "#ED8796"
let s:maroon = "#EE99A0"
let s:peach = "#F5A97F"
let s:yellow = "#EED49F"
let s:green = "#A6DA95"
let s:teal = "#8BD5CA"
let s:sky = "#91D7E3"
let s:sapphire = "#7DC4E4"
let s:blue = "#8AADF4"
let s:lavender = "#B7BDF8"

let s:text = "#CAD3F5"
let s:subtextf = "#B8C0E0"
let s:subtextz = "#A5ADCB"
let s:overlays = "#939AB7"
let s:overlayf = "#8087A2"
let s:overlayz = "#6E738D"
let s:surfaces = "#5B6078" " s = 2
let s:surfacef = "#494D64" " f = 1
let s:surfacez = "#363A4F" " z = 0

let s:base = "#24273A"
let s:mantle = "#1E2030"
let s:crust = "#181926"

hi! link Terminal Normal
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link lCursor Cursor
hi! link debugBreakpoint ModeMsg
hi! link debugPC CursorLine

if &background ==# 'dark'
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#24273a', '#ed8796', '#a6da95', '#eed49f', '#8aadf4', '#f5bde6', '#8bd5ca', '#b8c0e0', '#', '#ff005f', '#00d75f', '#ffaf00', '#5fafff', '#ff87ff', '#00d7d7', '#ffffff']
    " Nvim uses g:terminal_color_{0-15} instead
    for i in range(g:terminal_ansi_colors->len())
      let g:terminal_color_{i} = g:terminal_ansi_colors[i]
    endfor
  endif
  hi Normal guifg=text guibg=base gui=NONE cterm=NONE " Changed
  hi ColorColumn guifg=NONE guibg=surfacez gui=NONE cterm=NONE " Changed
  hi Conceal guifg=overlayf guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE " Changed
  hi CurSearch guifg=mantle guibg=red gui=reverse cterm=reverse " Changed
  hi Cursor guifg=base guibg=text gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse " Changed
  hi CursorColumn guifg=NONE guibg=mantle gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg= gui=NONE cterm=NONE
  hi CursorLineNr guifg=#dadada guibg=#303030 gui=NONE cterm=NONE
  hi DiffAdd guifg=#00af00 guibg=#000000 gui=reverse cterm=reverse
  hi DiffChange guifg=#87afd7 guibg=#000000 gui=reverse cterm=reverse
  hi DiffDelete guifg=#d75f5f guibg=#000000 gui=reverse cterm=reverse
  hi DiffText guifg=#d787d7 guibg=#000000 gui=reverse cterm=reverse
  hi Directory guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#707070 guibg=NONE gui=NONE cterm=NONE
  hi ErrorMsg guifg=#dadada guibg=#000000 gui=reverse cterm=reverse
  hi FoldColumn guifg=#707070 guibg=NONE gui=NONE cterm=NONE
  hi Folded guifg=#707070 guibg=#000000 gui=NONE cterm=NONE
  hi IncSearch guifg=#ffaf00 guibg=#000000 gui=reverse cterm=reverse
  hi LineNr guifg=#585858 guibg=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=#ff00af guibg=NONE gui=bold cterm=bold
  hi ModeMsg guifg=#dadada guibg=NONE gui=bold cterm=bold
  hi MoreMsg guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#707070 guibg=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#000000 guibg=#a8a8a8 gui=NONE cterm=NONE
  hi PmenuExtra guifg=#000000 guibg=#a8a8a8 gui=NONE cterm=NONE
  hi PmenuKind guifg=#000000 guibg=#a8a8a8 gui=bold cterm=bold
  hi PmenuSbar guifg=#707070 guibg=#585858 gui=NONE cterm=NONE
  hi PmenuSel guifg=#000000 guibg=#dadada gui=NONE cterm=NONE
  hi PmenuExtraSel guifg=#000000 guibg=#dadada gui=NONE cterm=NONE
  hi PmenuKindSel guifg=#000000 guibg=#dadada gui=bold cterm=bold
  hi PmenuThumb guifg=#dadada guibg=#dadada gui=NONE cterm=NONE
  hi Question guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi QuickFixLine guifg=#ff5fff guibg=#000000 gui=reverse cterm=reverse
  hi Search guifg=#00afff guibg=#000000 gui=reverse cterm=reverse
  hi SignColumn guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#707070 guibg=NONE gui=bold cterm=bold
  hi SpellBad guifg=#d7005f guibg=NONE guisp=#d7005f gui=undercurl cterm=underline
  hi SpellCap guifg=#0087d7 guibg=NONE guisp=#0087d7 gui=undercurl cterm=underline
  hi SpellLocal guifg=#d787d7 guibg=NONE guisp=#d787d7 gui=undercurl cterm=underline
  hi SpellRare guifg=#00afaf guibg=NONE guisp=#00afaf gui=undercurl cterm=underline
  hi StatusLine guifg=#000000 guibg=#dadada gui=bold cterm=bold
  hi StatusLineNC guifg=#707070 guibg=#000000 gui=reverse cterm=reverse
  hi TabLine guifg=#707070 guibg=#000000 gui=reverse cterm=reverse
  hi TabLineFill guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#000000 guibg=#dadada gui=bold cterm=bold
  hi Title guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi VertSplit guifg=#707070 guibg=#000000 gui=NONE cterm=NONE
  hi Visual guifg=#ffaf00 guibg=#000000 gui=reverse cterm=reverse
  hi VisualNOS guifg=NONE guibg=#303030 gui=NONE cterm=NONE
  hi WarningMsg guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi WildMenu guifg=#00afff guibg=#000000 gui=bold cterm=bold
  hi Comment guifg=#707070 guibg=NONE gui=bold cterm=bold
  hi Constant guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Error guifg=#ff005f guibg=#000000 gui=bold,reverse cterm=bold,reverse
  hi Identifier guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=#00ffaf guibg=NONE gui=bold,reverse cterm=bold,reverse
  hi Type guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#dadada guibg=NONE gui=underline cterm=underline
  hi CursorIM guifg=#000000 guibg=#afff00 gui=NONE cterm=NONE
  hi ToolbarLine guifg=NONE guibg=#000000 gui=NONE cterm=NONE
  hi ToolbarButton guifg=#dadada guibg=#000000 gui=bold cterm=bold
endif

if s:t_Co >= 256
  if &background ==# 'dark'
    hi Normal ctermfg=253 ctermbg=16 cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CurSearch ctermfg=207 ctermbg=16 cterm=reverse
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
    hi CursorLineNr ctermfg=253 ctermbg=236 cterm=NONE
    hi DiffAdd ctermfg=34 ctermbg=16 cterm=reverse
    hi DiffChange ctermfg=110 ctermbg=16 cterm=reverse
    hi DiffDelete ctermfg=167 ctermbg=16 cterm=reverse
    hi DiffText ctermfg=176 ctermbg=16 cterm=reverse
    hi Directory ctermfg=253 ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=242 ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=253 ctermbg=16 cterm=reverse
    hi FoldColumn ctermfg=242 ctermbg=NONE cterm=NONE
    hi Folded ctermfg=242 ctermbg=16 cterm=NONE
    hi IncSearch ctermfg=214 ctermbg=16 cterm=reverse
    hi LineNr ctermfg=240 ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=199 ctermbg=NONE cterm=bold
    hi ModeMsg ctermfg=253 ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=253 ctermbg=NONE cterm=NONE
    hi NonText ctermfg=242 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=16 ctermbg=248 cterm=NONE
    hi PmenuExtra ctermfg=16 ctermbg=248 cterm=NONE
    hi PmenuKind ctermfg=16 ctermbg=248 cterm=bold
    hi PmenuSbar ctermfg=242 ctermbg=240 cterm=NONE
    hi PmenuSel ctermfg=16 ctermbg=253 cterm=NONE
    hi PmenuExtraSel ctermfg=16 ctermbg=253 cterm=NONE
    hi PmenuKindSel ctermfg=16 ctermbg=253 cterm=bold
    hi PmenuThumb ctermfg=253 ctermbg=253 cterm=NONE
    hi Question ctermfg=253 ctermbg=NONE cterm=NONE
    hi QuickFixLine ctermfg=207 ctermbg=16 cterm=reverse
    hi Search ctermfg=39 ctermbg=16 cterm=reverse
    hi SignColumn ctermfg=253 ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=242 ctermbg=NONE cterm=bold
    hi SpellBad ctermfg=161 ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=32 ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=176 ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=37 ctermbg=NONE cterm=underline
    hi StatusLine ctermfg=16 ctermbg=253 cterm=bold
    hi StatusLineNC ctermfg=242 ctermbg=16 cterm=reverse
    hi TabLine ctermfg=242 ctermbg=16 cterm=reverse
    hi TabLineFill ctermfg=253 ctermbg=NONE cterm=NONE
    hi TabLineSel ctermfg=16 ctermbg=253 cterm=bold
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=242 ctermbg=16 cterm=NONE
    hi Visual ctermfg=214 ctermbg=16 cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=236 cterm=NONE
    hi WarningMsg ctermfg=253 ctermbg=NONE cterm=NONE
    hi WildMenu ctermfg=39 ctermbg=16 cterm=bold
    hi Comment ctermfg=242 ctermbg=NONE cterm=bold
    hi Constant ctermfg=253 ctermbg=NONE cterm=NONE
    hi Error ctermfg=197 ctermbg=16 cterm=bold,reverse
    hi Identifier ctermfg=253 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=253 ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=253 ctermbg=NONE cterm=NONE
    hi Special ctermfg=253 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=253 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=49 ctermbg=NONE cterm=bold,reverse
    hi Type ctermfg=253 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=253 ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=16 ctermbg=154 cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=16 cterm=NONE
    hi ToolbarButton ctermfg=253 ctermbg=16 cterm=bold
  endif
  unlet s:t_Co
  finish
endif

if s:t_Co >= 16
  if &background ==# 'dark'
    hi Comment ctermfg=darkgrey ctermbg=NONE cterm=bold
    hi CurSearch ctermfg=magenta ctermbg=black cterm=reverse
    hi EndOfBuffer ctermfg=darkgrey ctermbg=NONE cterm=NONE
    hi Folded ctermfg=darkgrey ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=yellow ctermbg=black cterm=reverse
    hi LineNr ctermfg=darkgrey ctermbg=NONE cterm=NONE
    hi NonText ctermfg=darkgrey ctermbg=NONE cterm=NONE
    hi PmenuSbar ctermfg=darkgrey ctermbg=NONE cterm=reverse
    hi Search ctermfg=cyan ctermbg=black cterm=reverse
    hi SpecialKey ctermfg=darkgrey ctermbg=NONE cterm=bold
    hi StatusLineNC ctermfg=darkgrey ctermbg=NONE cterm=reverse
    hi TabLine ctermfg=darkgrey ctermbg=NONE cterm=reverse
    hi VertSplit ctermfg=darkgrey ctermbg=NONE cterm=NONE
    hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=bold
    hi DiffAdd ctermfg=darkgreen ctermbg=black cterm=reverse
    hi DiffChange ctermfg=darkblue ctermbg=black cterm=reverse
    hi DiffDelete ctermfg=darkred ctermbg=black cterm=reverse
    hi DiffText ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuExtra ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuKind ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi PmenuSel ctermfg=NONE ctermbg=NONE cterm=bold
    hi PmenuExtraSel ctermfg=NONE ctermbg=NONE cterm=bold
    hi PmenuKindSel ctermfg=NONE ctermbg=NONE cterm=bold
    hi PmenuThumb ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Question ctermfg=NONE ctermbg=NONE cterm=standout
    hi QuickFixLine ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi SignColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi SpellBad ctermfg=darkred ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=darkblue ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=darkmagenta ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=darkcyan ctermbg=NONE cterm=underline
    hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
    hi TabLineSel ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Visual ctermfg=darkyellow ctermbg=black cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=standout
    hi WildMenu ctermfg=NONE ctermbg=NONE cterm=bold
    hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Error ctermfg=darkred ctermbg=black cterm=bold,reverse
    hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Special ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Statement ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Todo ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Type ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=reverse
    hi ToolbarButton ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  endif
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  if &background ==# 'dark'
    hi Comment ctermfg=NONE ctermbg=NONE cterm=bold
    hi CurSearch ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Folded ctermfg=NONE ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=darkyellow ctermbg=black cterm=reverse
    hi LineNr ctermfg=NONE ctermbg=NONE cterm=NONE
    hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=reverse
    hi Search ctermfg=darkcyan ctermbg=black cterm=reverse
    hi SpecialKey ctermfg=NONE ctermbg=NONE cterm=bold
    hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi TabLine ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi VertSplit ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=bold
    hi DiffAdd ctermfg=darkgreen ctermbg=black cterm=reverse
    hi DiffChange ctermfg=darkblue ctermbg=black cterm=reverse
    hi DiffDelete ctermfg=darkred ctermbg=black cterm=reverse
    hi DiffText ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuExtra ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuKind ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi PmenuSel ctermfg=NONE ctermbg=NONE cterm=bold
    hi PmenuExtraSel ctermfg=NONE ctermbg=NONE cterm=bold
    hi PmenuKindSel ctermfg=NONE ctermbg=NONE cterm=bold
    hi PmenuThumb ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Question ctermfg=NONE ctermbg=NONE cterm=standout
    hi QuickFixLine ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi SignColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi SpellBad ctermfg=darkred ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=darkblue ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=darkmagenta ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=darkcyan ctermbg=NONE cterm=underline
    hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
    hi TabLineSel ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Visual ctermfg=darkyellow ctermbg=black cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=standout
    hi WildMenu ctermfg=NONE ctermbg=NONE cterm=bold
    hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Error ctermfg=darkred ctermbg=black cterm=bold,reverse
    hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Special ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Statement ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Todo ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Type ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=reverse
    hi ToolbarButton ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  endif
  unlet s:t_Co
  finish
endif

if s:t_Co >= 0
  hi Normal term=NONE
  hi ColorColumn term=reverse
  hi Conceal term=NONE
  hi Cursor term=reverse
  hi CursorColumn term=NONE
  hi CursorLine term=underline
  hi CursorLineNr term=bold
  hi DiffAdd term=reverse
  hi DiffChange term=NONE
  hi DiffDelete term=reverse
  hi DiffText term=reverse
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi ErrorMsg term=bold,reverse
  hi FoldColumn term=NONE
  hi Folded term=NONE
  hi IncSearch term=bold,reverse,underline
  hi LineNr term=NONE
  hi MatchParen term=bold,underline
  hi ModeMsg term=bold
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=reverse
  hi PmenuSel term=bold
  hi PmenuThumb term=NONE
  hi Question term=standout
  hi Search term=reverse
  hi SignColumn term=reverse
  hi SpecialKey term=bold
  hi SpellBad term=underline
  hi SpellCap term=underline
  hi SpellLocal term=underline
  hi SpellRare term=underline
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=bold,underline
  hi TabLine term=bold,underline
  hi TabLineFill term=NONE
  hi Terminal term=NONE
  hi TabLineSel term=bold,reverse
  hi Title term=NONE
  hi VertSplit term=NONE
  hi Visual term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  hi CursorIM term=NONE
  hi ToolbarLine term=reverse
  hi ToolbarButton term=bold,reverse
  hi CurSearch term=reverse
  hi CursorLineFold term=underline
  hi CursorLineSign term=underline
  hi Comment term=bold
  hi Constant term=NONE
  hi Error term=bold,reverse
  hi Identifier term=NONE
  hi Ignore term=NONE
  hi PreProc term=NONE
  hi Special term=NONE
  hi Statement term=NONE
  hi Todo term=bold,reverse
  hi Type term=NONE
  hi Underlined term=underline
  unlet s:t_Co
  finish
endif

" Background: dark
" Color: dark0         #000000           16                black
" Color: dark1         #d7005f           161               darkred
" Color: dark2         #00af5f           35                darkgreen
" Color: dark3         #d78700           172               darkyellow
" Color: dark4         #0087d7           32                darkblue
" Color: dark5         #d787d7           176               darkmagenta
" Color: dark6         #00afaf           37                darkcyan
" Color: dark7         #dadada           253               grey
" Color: dark8         #707070           242               darkgrey
" Color: dark9         #ff005f           197               red
" Color: dark10        #00d75f           41                green
" Color: dark11        #ffaf00           214               yellow
" Color: dark12        #5fafff           75                blue
" Color: dark13        #ff87ff           213               magenta
" Color: dark14        #00d7d7           44                cyan
" Color: dark15        #ffffff           231               white
" Color: diffred       #d75f5f           167               darkred
" Color: diffgreen     #00af00           34                darkgreen
" Color: diffblue      #87afd7           110               darkblue
" Color: diffpink      #d787d7           176               darkmagenta
" Color: uipink        #ff00af           199               magenta
" Color: uilime        #afff00           154               green
" Color: uiteal        #00ffaf           49                green
" Color: uiblue        #00afff           39                blue
" Color: uipurple      #af00ff           129               darkmagenta
" Color: uiamber       #ffaf00           214               darkyellow
" Color: uiblack       #303030           236               darkgrey
" Color: yasogrey      #1c1c1c           234               black
" Color: linenrblack   #585858           240               darkgrey
" Color: uicursearch   #ff5fff           207               magenta
" Color: invisigrey    #a8a8a8           248               darkgrey
" Color: errorred      #ff005f           197               red
" Term colors: dark0 dark1 dark2 dark3 dark4 dark5 dark6 dark7
" Term colors: dark8 dark9 dark10 dark11 dark12 dark13 dark14 dark15
" Background: any
" vim: et ts=8 sw=2 sts=2
