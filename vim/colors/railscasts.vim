" Vim color scheme
"
" Name:        railscast.vim
" Maintainer:  Josh O'Rourke <joshorourke@me.com>
" License:     public domain
"
" A GUI Only port of the RailsCasts TextMate theme [1] to Vim.
" Some parts of this theme were borrowed from the well-documented Lucius theme [2].
"
" [1] http://railscasts.com/about
" [2] http://www.vim.org/scripts/script.php?script_id=2536

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "railscasts"

" Colors
" Brown        #BC9458
" Dark Blue    #6D9CBE
" Dark Green   #519F50
" Dark Orange  #CC7833
" Light Blue   #D0D0FF
" Light Green  #A5C261
" Tan          #FFC66D

hi Normal                    guibg=#2B2B2B guifg=#E6E1DC  ctermfg=7     ctermbg=234
hi Cursor                    guibg=#FFFFFF                ctermfg=0     ctermbg=15
hi CursorLine                guibg=#333435                              ctermbg=235 cterm=NONE
hi Search                    guibg=#5A647E                ctermfg=NONE  ctermbg=235
hi Visual                    guibg=#5A647E                              ctermbg=60
hi LineNr                    guibg=#464646 guifg=#72706d  ctermfg=239   ctermbg=235 gui=NONE 
hi CursorLineNr              guifg=#050505                              ctermbg=233 cterm=NONE
hi StatusLine                guibg=#414243 guifg=#E6E1DC  ctermfg=243   ctermbg=235 gui=NONE
hi StatusLineNC              guibg=#414243                ctermfg=239   ctermbg=235 gui=NONE
hi VertSplit                 guibg=#414243 guifg=#414243  ctermfg=239   ctermbg=235 gui=NONE

" Folds
" -----
" line used for closed folds
hi Folded                    guibg=#444444 guifg=#F6F3E8                            gui=NONE

" Invisible Characters
" ------------------
hi NonText                   guifg=#777777 gui=NONE ctermfg=239
hi SpecialKey                guifg=#777777 ctermfg=167 gui=NONE

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A5C261 gui=NONE
"blue
hi Directory                 guifg=#6D9CBE gui=NONE 
" gray
hi Directory                 guifg=#999999 gui=NONE

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#A5C261 gui=NONE
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA gui=NONE


"rubyComment
hi Comment                   guifg=#BC9458 gui=italic ctermfg=180
hi Todo                      guifg=#BC9458 guibg=NONE gui=italic

"rubyPseudoVariable
"nil, self, symbols, etc
hi Constant                  guifg=#6D9CBE ctermfg=73

"rubyClass, rubyModule, rubyDefine
"def, end, include, etc
hi Define                    guifg=#CC7833 ctermfg=173

"rubyInterpolation
hi Delimiter                 guifg=#519F50 ctermfg=143

"rubyError, rubyInvalidVariable
hi Error                     guifg=#FFFFFF guibg=#990000 ctermfg=221 ctermbg=88

"rubyFunction
hi Function                  guifg=#FFC66D gui=NONE ctermfg=221 cterm=NONE

"rubyIdentifier
"@var, @@var, $var, etc
hi Identifier                guifg=#D0D0FF gui=NONE ctermfg=73 cterm=NONE

"rubyInclude
"include, autoload, extend, load, require
hi Include                   guifg=#CC7833 gui=NONE ctermfg=173 cterm=NONE

"rubyKeyword, rubyKeywordAsMethod
"alias, undef, super, yield, callcc, caller, lambda, proc
hi Keyword                   guifg=#CC7833 ctermfg=173 cterm=NONE

" same as define
hi Macro                     guifg=#CC7833 gui=NONE ctermfg=173

"rubyInteger
hi Number                    guifg=#A5C261 ctermfg=107

" #if, #else, #endif
hi PreCondit                 guifg=#CC7833 gui=NONE ctermfg=173 cterm=NONE

" generic preprocessor
hi PreProc                   guifg=#CC7833 gui=NONE ctermfg=173

"rubyControl, rubyAccess, rubyEval
"case, begin, do, for, if unless, while, until else, etc.
hi Statement                 guifg=#CC7833 gui=NONE ctermfg=173 cterm=NONE

"rubyString
hi String                    guifg=#A5C261 ctermfg=107

hi Title                     guifg=#FFFFFF ctermfg=15

"rubyConstant
hi Type                      guifg=#DA4939 gui=NONE ctermfg=167 cterm=NONE

hi DiffAdd                   guifg=#E6E1DC guibg=#144212 ctermfg=7 ctermbg=71
hi DiffDelete                guifg=#E6E1DC guibg=#660000 ctermfg=7 ctermbg=52

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

hi xmlTag                    guifg=#E8BF6A ctermfg=179
hi xmlTagName                guifg=#E8BF6A ctermfg=179
hi xmlEndTag                 guifg=#E8BF6A ctermfg=179

highlight MatchParen ctermbg=60

