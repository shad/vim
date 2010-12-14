" Vim color file
" Converted from Textmate theme Twilight using Coloration v0.2.4 
" (http://github.com/sickill/coloration)
" Lots of improvements by Shad Reynolds http://shad.github.com
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Twilight"

hi Cursor  guifg=NONE guibg=#999999 gui=NONE
hi Visual  guifg=NONE guibg=#3c4043 gui=NONE
hi CursorLine  guifg=NONE guibg=#1b1b1b gui=NONE
hi CursorColumn  guifg=NONE guibg=#1b1b1b gui=NONE
hi ColorColumn  guifg=NONE guibg=#1d1d1d gui=NONE
hi LineNr  guifg=#AAAAAA guibg=#292929 gui=NONE
hi VertSplit  guifg=#777777 guibg=#444444 gui=NONE
hi MatchParen  guifg=#cda869 guibg=NONE gui=NONE
hi StatusLine  guifg=#ffffff guibg=#555555 gui=bold
hi StatusLineNC  guifg=#aaaaaa guibg=#3f3f3f gui=NONE
hi Pmenu  guifg=#9b703f guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#3c4043 gui=NONE
hi IncSearch  guifg=#ffffff guibg=#E60BFF gui=bold
hi Search  guifg=#0080FF guibg=#0F315D gui=underline
hi Directory  guifg=#cf6a4c guibg=NONE gui=NONE
hi Folded  guifg=#5f5a60 guibg=#141414 gui=NONE

hi Normal  guifg=#f8f8f8 guibg=#141414 gui=NONE
hi Boolean  guifg=#cf6a4c guibg=NONE gui=NONE
hi Character  guifg=#cf6a4c guibg=NONE gui=NONE
hi Comment  guifg=#777777 guibg=NONE gui=italic
hi Conditional  guifg=#cda869 guibg=NONE gui=NONE
hi Constant  guifg=#cf6a4c guibg=NONE gui=NONE
hi Define  guifg=#cda869 guibg=NONE gui=NONE
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE
hi Float  guifg=#cf6a4c guibg=NONE gui=NONE
hi Function  guifg=#9b703f guibg=NONE gui=NONE
hi Identifier  guifg=#f9ee98 guibg=NONE gui=NONE
hi Keyword  guifg=#cda869 guibg=NONE gui=NONE
hi Label  guifg=#8f9d6a guibg=NONE gui=NONE
hi NonText  guifg=#3f3f3f guibg=#141414 gui=NONE
hi Number  guifg=#cf6a4c guibg=NONE gui=NONE
hi Operator  guifg=#cda869 guibg=NONE gui=NONE
hi PreProc  guifg=#cda869 guibg=NONE gui=NONE
hi Special  guifg=#f8f8f8 guibg=NONE gui=NONE
hi SpecialKey  guifg=#4f4f4f guibg=#1b1b1b gui=NONE
hi Statement  guifg=#cda869 guibg=NONE gui=NONE
hi StorageClass  guifg=#f9ee98 guibg=NONE gui=NONE
hi String  guifg=#8f9d6a guibg=NONE gui=NONE
hi Tag  guifg=#9b703f guibg=NONE gui=NONE
hi Title  guifg=#f8f8f8 guibg=NONE gui=bold
hi Todo  guifg=#5f5a60 guibg=NONE gui=inverse,bold,italic
hi Type  guifg=#9b703f guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline


" Ruby
hi rubyClass  guifg=#cda869 guibg=NONE gui=NONE
hi rubyFunction  guifg=#9b703f guibg=NONE gui=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#cf6a4c guibg=NONE gui=NONE
hi rubyConstant  guifg=#9b859d guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#8f9d6a guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=#7587a6 guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#7587a6 guibg=NONE gui=NONE
hi rubyInclude  guifg=#cda869 guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=#7587a6 guibg=NONE gui=NONE
hi rubyRegexp  guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#e9c062 guibg=NONE gui=NONE
hi rubyEscape  guifg=#cf6a4c guibg=NONE gui=NONE
hi rubyControl  guifg=#cda869 guibg=NONE gui=NONE
hi rubyClassVariable  guifg=#7587a6 guibg=NONE gui=NONE
hi rubyOperator  guifg=#cda869 guibg=NONE gui=NONE
hi rubyException  guifg=#cda869 guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=#7587a6 guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=#9b859d guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsARMethod  guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsRenderMethod  guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsMethod  guifg=#dad085 guibg=NONE gui=NONE

" ERuby
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE
hi erubyComment  guifg=#5f5a60 guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#dad085 guibg=NONE gui=NONE

" HTML
hi htmlTag  guifg=#ac885b guibg=NONE gui=NONE
hi htmlEndTag  guifg=#ac885b guibg=NONE gui=NONE
hi htmlTagName  guifg=#ac885b guibg=NONE gui=NONE
hi htmlArg  guifg=#ac885b guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#cf6a4c guibg=NONE gui=NONE

" javascript
hi javaScriptFunction  guifg=#f9ee98 guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=#dad085 guibg=NONE gui=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE

" YAML
hi yamlKey  guifg=#9b703f guibg=NONE gui=NONE
hi yamlAnchor  guifg=#7587a6 guibg=NONE gui=NONE
hi yamlAlias  guifg=#7587a6 guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#8f9d6a guibg=NONE gui=NONE

" CSS
hi cssURL  guifg=#7587a6 guibg=NONE gui=NONE
hi cssFunctionName  guifg=#dad085 guibg=NONE gui=NONE
hi cssColor  guifg=#cf6a4c guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#9b703f guibg=NONE gui=NONE
hi cssClassName  guifg=#9b703f guibg=NONE gui=NONE
hi cssValueLength  guifg=#cf6a4c guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#cf6a4c guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE


" markdown
hi markdownHeadingDelimiter guifg=#cf6a4c guibg=NONE gui=bold
hi markdownH1 guifg=#9b703f guibg=NONE gui=underline,bold
hi markdownH2 guifg=#9b703f guibg=NONE gui=italic,bold
hi markdownH3 guifg=NONE guibg=NONE gui=italic,bold
hi markdownH4 guifg=NONE guibg=NONE gui=italic,bold
hi markdownH5 guifg=NONE guibg=NONE gui=italic,bold
hi markdownCode guifg=#888888 guibg=#222222 gui=NONE
hi markdownCodeBlock guifg=#888888 guibg=#222222 gui=NONE
hi markdownListMarker guifg=#9b703f guibg=NONE gui=bold

" SQL
hi sqlKeyword  guifg=#cda869 guibg=NONE gui=NONE
