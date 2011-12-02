" Vim color file
" Converted from Textmate theme Coda using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Coda"

hi Cursor ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#000000 gui=NONE
hi Visual ctermfg=NONE ctermbg=153 cterm=NONE guifg=NONE guibg=#a7caff gui=NONE
hi CursorLine ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e6e6e6 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e6e6e6 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e6e6e6 gui=NONE
hi LineNr ctermfg=244 ctermbg=254 cterm=NONE guifg=#808080 guibg=#e6e6e6 gui=NONE
hi VertSplit ctermfg=249 ctermbg=249 cterm=NONE guifg=#b5b5b5 guibg=#b5b5b5 gui=NONE
hi MatchParen ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa1f63 guibg=NONE gui=NONE
hi StatusLine ctermfg=0 ctermbg=249 cterm=bold guifg=#000000 guibg=#b5b5b5 gui=bold
hi StatusLineNC ctermfg=0 ctermbg=249 cterm=NONE guifg=#000000 guibg=#b5b5b5 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=153 cterm=NONE guifg=NONE guibg=#a7caff gui=NONE
hi IncSearch ctermfg=NONE ctermbg=187 cterm=NONE guifg=NONE guibg=#dbccb3 gui=NONE
hi Search ctermfg=NONE ctermbg=187 cterm=NONE guifg=NONE guibg=#dbccb3 gui=NONE
hi Directory ctermfg=94 ctermbg=NONE cterm=NONE guifg=#916319 guibg=NONE gui=NONE
hi Folded ctermfg=64 ctermbg=15 cterm=NONE guifg=#3c802c guibg=#ffffff gui=NONE

hi Normal ctermfg=0 ctermbg=15 cterm=NONE guifg=#000000 guibg=#ffffff gui=NONE
hi Boolean ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi Character ctermfg=94 ctermbg=NONE cterm=NONE guifg=#916319 guibg=NONE gui=NONE
hi Comment ctermfg=64 ctermbg=NONE cterm=NONE guifg=#3c802c guibg=NONE gui=italic
hi Conditional ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa2063 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa1f63 guibg=NONE gui=NONE
hi ErrorMsg ctermfg=160 ctermbg=NONE cterm=NONE guifg=#eb291c guibg=NONE gui=NONE
hi WarningMsg ctermfg=160 ctermbg=NONE cterm=NONE guifg=#eb291c guibg=NONE gui=NONE
hi Float ctermfg=21 ctermbg=NONE cterm=NONE guifg=#0f20f6 guibg=NONE gui=NONE
hi Function ctermfg=23 ctermbg=NONE cterm=NONE guifg=#053369 guibg=NONE gui=NONE
hi Identifier ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa2063 guibg=NONE gui=NONE
hi Keyword ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa1f63 guibg=NONE gui=NONE
hi Label ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ed7722 guibg=NONE gui=NONE
hi NonText ctermfg=250 ctermbg=231 cterm=NONE guifg=#bfbfbf guibg=#f2f2f2 gui=NONE
hi Number ctermfg=21 ctermbg=NONE cterm=NONE guifg=#0f20f6 guibg=NONE gui=NONE
hi Operator ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi PreProc ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa1f63 guibg=NONE gui=NONE
hi Special ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi SpecialKey ctermfg=250 ctermbg=254 cterm=NONE guifg=#bfbfbf guibg=#e6e6e6 gui=NONE
hi Statement ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa2063 guibg=NONE gui=NONE
hi StorageClass ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa2063 guibg=NONE gui=NONE
hi String ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ed7722 guibg=NONE gui=NONE
hi Tag ctermfg=90 ctermbg=NONE cterm=NONE guifg=#881181 guibg=NONE gui=NONE
hi Title ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi Todo ctermfg=64 ctermbg=NONE cterm=inverse,bold guifg=#3c802c guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa2063 guibg=NONE gui=NONE
hi rubyFunction ctermfg=23 ctermbg=NONE cterm=NONE guifg=#053369 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=94 ctermbg=NONE cterm=NONE guifg=#916319 guibg=NONE gui=NONE
hi rubyConstant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ed7722 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=23 ctermbg=NONE cterm=NONE guifg=#053369 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=94 ctermbg=NONE cterm=NONE guifg=#916319 guibg=NONE gui=NONE
hi rubyInclude ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa1f63 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ed7722 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ed7722 guibg=NONE gui=NONE
hi rubyEscape ctermfg=94 ctermbg=NONE cterm=NONE guifg=#916319 guibg=NONE gui=NONE
hi rubyControl ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa2063 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=94 ctermbg=NONE cterm=NONE guifg=#916319 guibg=NONE gui=NONE
hi rubyOperator ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi rubyException ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa1f63 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=94 ctermbg=NONE cterm=NONE guifg=#916319 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=91 ctermbg=NONE cterm=NONE guifg=#7520af guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=91 ctermbg=NONE cterm=NONE guifg=#7520af guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=91 ctermbg=NONE cterm=NONE guifg=#7520af guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=91 ctermbg=NONE cterm=NONE guifg=#7520af guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=196 ctermbg=NONE cterm=NONE guifg=#f02a1d guibg=NONE gui=NONE
hi erubyComment ctermfg=64 ctermbg=NONE cterm=NONE guifg=#3c802c guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=91 ctermbg=NONE cterm=NONE guifg=#7520af guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=94 ctermbg=NONE cterm=NONE guifg=#916319 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=125 ctermbg=NONE cterm=NONE guifg=#aa2063 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=91 ctermbg=NONE cterm=NONE guifg=#7520af guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=90 ctermbg=NONE cterm=NONE guifg=#881181 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi yamlAlias ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ed7722 guibg=NONE gui=NONE
hi cssURL ctermfg=23 ctermbg=NONE cterm=NONE guifg=#053369 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=91 ctermbg=NONE cterm=NONE guifg=#7520af guibg=NONE gui=NONE
hi cssColor ctermfg=94 ctermbg=NONE cterm=NONE guifg=#916319 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=90 ctermbg=NONE cterm=NONE guifg=#881181 guibg=NONE gui=NONE
hi cssClassName ctermfg=90 ctermbg=NONE cterm=NONE guifg=#881181 guibg=NONE gui=NONE
hi cssValueLength ctermfg=21 ctermbg=NONE cterm=NONE guifg=#0f20f6 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
