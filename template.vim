if exists("g:basic")
  finish
endif
let g:basic = 1

if (has("termguicolors"))
    set termguicolors
endif

highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "basic"

let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

let s:italics = s:italics && get(g:, 'basic_italics', 1)
hi! link CursorColumn CursorLine
hi! link QuickFixLine Search
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link VisualNOS Visual
hi! link Tag Special
hi! link lCursor Cursor
hi! link iCursor Cursor
hi! link vCursor Cursor

if &background ==# 'dark'
  let g:terminal_ansi_colors = ['{dark.terminal.color_00}', '{dark.terminal.color_01}', '{dark.terminal.color_02}', '{dark.terminal.color_03}', '{dark.terminal.color_04}', '{dark.terminal.color_05}', '{dark.terminal.color_06}', '{dark.terminal.color_07}', '{dark.terminal.color_08}', '{dark.terminal.color_09}', '{dark.terminal.color_10}', '{dark.terminal.color_11}', '{dark.terminal.color_12}', '{dark.terminal.color_13}', '{dark.terminal.color_14}', '{dark.terminal.color_15}']
  if has('nvim')
    let g:terminal_color_0 = '{dark.terminal.color_00}'
    let g:terminal_color_1 = '{dark.terminal.color_01}'
    let g:terminal_color_2 = '{dark.terminal.color_02}'
    let g:terminal_color_3 = '{dark.terminal.color_03}'
    let g:terminal_color_4 = '{dark.terminal.color_04}'
    let g:terminal_color_5 = '{dark.terminal.color_05}'
    let g:terminal_color_6 = '{dark.terminal.color_06}'
    let g:terminal_color_7 = '{dark.terminal.color_07}'
    let g:terminal_color_8 = '{dark.terminal.color_08}'
    let g:terminal_color_9 = '{dark.terminal.color_09}'
    let g:terminal_color_10 = '{dark.terminal.color_10}'
    let g:terminal_color_11 = '{dark.terminal.color_11}'
    let g:terminal_color_12 = '{dark.terminal.color_12}'
    let g:terminal_color_13 = '{dark.terminal.color_13}'
    let g:terminal_color_14 = '{dark.terminal.color_14}'
    let g:terminal_color_15 = '{dark.terminal.color_15}'
  endif
  if get(g:, 'basic_transp_bg', 0) && !has('gui_running')
    hi Normal guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi CursorLineNr guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi FoldColumn guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi SignColumn guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi VertSplit guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  else
    hi Normal guifg={dark.foreground} guibg={dark.background} gui=NONE cterm=NONE
    hi CursorLineNr guifg={dark.foreground} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi FoldColumn guifg={dark.normal.black} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi SignColumn guifg={dark.foreground} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi VertSplit guifg={dark.normal.white} guibg={dark.background} gui=NONE cterm=NONE
  endif
  hi ColorColumn guifg=NONE guibg={dark.normal.black} gui=NONE cterm=NONE
  hi Comment guifg={dark.normal.white} guibg=NONE gui=italic cterm=italic
  hi CursorLine guifg=NONE guibg={dark.normal.black} gui=NONE cterm=NONE
  hi Error guifg={dark.normal.red} guibg={dark.background} gui=bold,reverse cterm=bold,reverse
  hi ErrorMsg guifg={dark.background} guibg={dark.normal.red} gui=bold cterm=bold
  hi Folded guifg={dark.normal.black} guibg={dark.normal.black} gui=italic cterm=italic
  hi LineNr guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=NONE guibg={dark.normal.black} gui=bold,underline cterm=bold,underline
  hi NonText guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi Pmenu guifg={dark.foreground} guibg={dark.normal.black} gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg={dark.normal.black} gui=NONE cterm=NONE
  hi PmenuSel guifg={dark.normal.black} guibg={dark.normal.blue} gui=bold cterm=bold
  hi PmenuThumb guifg=NONE guibg={dark.normal.white} gui=NONE cterm=NONE
  hi SpecialKey guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi StatusLine guifg={dark.normal.black} guibg={dark.foreground} gui=reverse cterm=reverse
  hi StatusLineNC guifg={dark.normal.black} guibg={dark.normal.white} gui=reverse cterm=reverse
  hi TabLine guifg={dark.normal.white} guibg={dark.normal.black} gui=NONE cterm=NONE
  hi TabLineFill guifg={dark.normal.white} guibg={dark.normal.black} gui=NONE cterm=NONE
  hi TabLineSel guifg={dark.bright.green} guibg={dark.normal.black} gui=NONE cterm=NONE
  hi ToolbarButton guifg={dark.normal.white} guibg={dark.normal.white} gui=bold cterm=bold
  hi ToolbarLine guifg=NONE guibg={dark.normal.white} gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg={dark.normal.black} gui=NONE cterm=NONE
  hi WildMenu guifg={dark.normal.blue} guibg={dark.normal.black} gui=bold cterm=bold
  hi Conceal guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi DiffAdd guifg={dark.normal.green} guibg={dark.background} gui=reverse cterm=reverse
  hi DiffChange guifg={dark.normal.cyan} guibg={dark.background} gui=reverse cterm=reverse
  hi DiffDelete guifg={dark.normal.red} guibg={dark.background} gui=reverse cterm=reverse
  hi DiffText guifg={dark.bright.yellow} guibg={dark.background} gui=reverse cterm=reverse
  hi Directory guifg={dark.normal.green} guibg=NONE gui=bold cterm=bold
  hi EndOfBuffer guifg={dark.background} guibg=NONE gui=NONE cterm=NONE
  hi IncSearch guifg={dark.operator} guibg={dark.background} gui=reverse cterm=reverse
  hi ModeMsg guifg={dark.bright.yellow} guibg=NONE gui=bold cterm=bold
  hi MoreMsg guifg={dark.bright.yellow} guibg=NONE gui=bold cterm=bold
  hi Question guifg={dark.operator} guibg=NONE gui=bold cterm=bold
  hi Search guifg={dark.bright.yellow} guibg={dark.background} gui=reverse cterm=reverse
  hi SpellBad guifg={dark.normal.red} guibg=NONE guisp={dark.normal.red} gui=italic,undercurl cterm=italic,underline
  hi SpellCap guifg={dark.normal.blue} guibg=NONE guisp={dark.normal.blue} gui=italic,undercurl cterm=italic,underline
  hi SpellLocal guifg={dark.normal.cyan} guibg=NONE guisp={dark.normal.cyan} gui=italic,undercurl cterm=italic,underline
  hi SpellRare guifg={dark.normal.magenta} guibg=NONE guisp={dark.normal.magenta} gui=italic,undercurl cterm=italic,underline
  hi Title guifg={dark.normal.green} guibg=NONE gui=bold cterm=bold
  hi WarningMsg guifg={dark.normal.red} guibg=NONE gui=bold cterm=bold
  hi Boolean guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi Character guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi Conditional guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi Constant guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi Define guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi Debug guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi Delimiter guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
  hi Error guifg={dark.normal.red} guibg={dark.background} gui=bold,reverse cterm=bold,reverse
  hi Exception guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi Float guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi Function guifg={dark.bright.yellow} guibg=NONE gui=bold cterm=bold
  hi Identifier guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=fg guibg=NONE gui=NONE cterm=NONE
  hi Include guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
  hi Keyword guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi Label guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi Macro guifg={dark.bright.blue} guibg=NONE gui=NONE cterm=NONE
  hi Number guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi Operator guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
  hi PreCondit guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg={dark.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi Repeat guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi SpecialComment guifg={dark.bright.green} guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi StorageClass guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
  hi Special guifg={dark.operator} guibg=NONE gui=italic cterm=italic
  hi String guifg={dark.normal.green} guibg=NONE gui=italic cterm=italic
  hi Structure guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=fg guibg={dark.background} gui=bold,italic cterm=bold,italic
  hi Type guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi Typedef guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
  hi Underlined guifg={dark.normal.blue} guibg=NONE guisp={dark.normal.blue} gui=underline cterm=underline
  hi CursorIM guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  if !s:italics
    hi Comment gui=NONE cterm=NONE
    hi Folded gui=NONE cterm=NONE
    hi SpellBad gui=undercurl cterm=underline
    hi SpellCap gui=undercurl cterm=underline
    hi SpellLocal gui=undercurl cterm=underline
    hi SpellRare gui=undercurl cterm=underline
    hi Special gui=NONE cterm=NONE
    hi String gui=NONE cterm=NONE
    hi Todo gui=bold cterm=bold
  endif
  if !get(g:, 'basic_italicize_strings', 1)
    hi Special gui=NONE cterm=NONE
    hi String gui=NONE cterm=NONE
  endif
  if !get(g:, 'basic_bold', 1)
    hi Directory gui=NONE cterm=NONE
    hi Error gui=reverse cterm=reverse
    hi ErrorMsg gui=NONE cterm=NONE
    hi Function gui=NONE cterm=NONE
    hi MatchParen gui=underline cterm=underline
    hi ModeMsg gui=NONE cterm=NONE
    hi MoreMsg gui=NONE cterm=NONE
    hi PmenuSel gui=NONE cterm=NONE
    hi Question gui=NONE cterm=NONE
    hi Title gui=NONE cterm=NONE
    hi Todo gui=italic cterm=italic
    hi ToolbarButton gui=NONE cterm=NONE
    hi WarningMsg gui=NONE cterm=NONE
    hi WildMenu gui=NONE cterm=NONE
  endif
  hi NormalMode guifg={dark.normal.white} guibg={dark.background} gui=reverse cterm=reverse
  hi InsertMode guifg={dark.normal.blue} guibg={dark.background} gui=reverse cterm=reverse
  hi ReplaceMode guifg={dark.normal.cyan} guibg={dark.background} gui=reverse cterm=reverse
  hi VisualMode guifg={dark.operator} guibg={dark.background} gui=reverse cterm=reverse
  hi CommandMode guifg={dark.normal.magenta} guibg={dark.background} gui=reverse cterm=reverse
  hi Warnings guifg={dark.operator} guibg={dark.background} gui=reverse cterm=reverse
  if has('nvim')
    hi! link TermCursor Cursor
    hi TermCursorNC guifg={dark.normal.black} guibg={dark.foreground} gui=NONE cterm=NONE
  endif
  if !(get(g:, 'basic_plugin_hi_groups', 0) || get(g:, 'basic_filetype_hi_groups', 0))
    finish
  endif
  if get(g:, "basic_plugin_hi_groups", 0)
    hi ALEError guifg=NONE guibg=NONE guisp={dark.normal.red} gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi ALEWarning guifg=NONE guibg=NONE guisp={dark.normal.red} gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi ALEInfo guifg=NONE guibg=NONE guisp={dark.normal.blue} gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi ALEErrorSign guifg={dark.normal.red} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi ALEWarningSign guifg={dark.bright.yellow} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi ALEInfoSign guifg={dark.normal.blue} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi BufTabLineCurrent guifg={dark.background} guibg={dark.normal.white} gui=NONE cterm=NONE
    hi BufTabLineActive guifg={dark.normal.white} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi BufTabLineHidden guifg={dark.normal.white} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi BufTabLineFill guifg={dark.background} guibg={dark.background} gui=NONE cterm=NONE
    hi CocErrorSign guifg={dark.normal.red} guibg={dark.background} gui=NONE cterm=NONE
    hi CocWarningSign guifg={dark.bright.yellow} guibg={dark.background} gui=NONE cterm=NONE
    hi CocInfoSign guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi CocHintSign guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi CocErrorFloat guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi CocWarningFloat guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi CocInfoFloat guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi CocHintFloat guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi CocSelectedText guifg={dark.normal.black} guibg={dark.background} gui=NONE cterm=NONE
    hi CocCodeLens guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi CtrlPMatch guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi CtrlPNoEntries guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi CtrlPPrtBase guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi CtrlPPrtCursor guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi CtrlPLinePre guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi CtrlPMode1 guifg={dark.normal.blue} guibg={dark.normal.black} gui=bold cterm=bold
    hi CtrlPMode2 guifg={dark.background} guibg={dark.normal.blue} gui=bold cterm=bold
    hi CtrlPStats guifg={dark.normal.white} guibg={dark.normal.black} gui=bold cterm=bold
    if !get(g:, 'basic_bold', 1)
      hi CtrlPMode1 gui=NONE cterm=NONE
      hi CtrlPMode2 gui=NONE cterm=NONE
      hi CtrlPStats gui=NONE cterm=NONE
    endif
    hi DirvishPathTail guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi DirvishArg guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi! link EasyMotionTarget Search
    hi! link EasyMotionShade Comment
    hi gitcommitSelectedFile guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi gitcommitDiscardedFile guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    if get(g:, 'basic_transp_bg', 0)
      hi GitGutterAdd guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
      hi GitGutterChange guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
      hi GitGutterDelete guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
      hi GitGutterChangeDelete guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    else
      hi GitGutterAdd guifg={dark.normal.green} guibg={dark.normal.black} gui=NONE cterm=NONE
      hi GitGutterChange guifg={dark.normal.cyan} guibg={dark.normal.black} gui=NONE cterm=NONE
      hi GitGutterDelete guifg={dark.normal.red} guibg={dark.normal.black} gui=NONE cterm=NONE
      hi GitGutterChangeDelete guifg={dark.normal.cyan} guibg={dark.normal.black} gui=NONE cterm=NONE
    endif
    if get(g:, 'indent_guides_auto_colors', 0)
      if get(g:, 'basic_invert_indent_guides', 0)
        hi IndentGuidesOdd guifg={dark.background} guibg={dark.normal.black} gui=reverse cterm=reverse
        hi IndentGuidesEven guifg={dark.background} guibg={dark.normal.black} gui=reverse cterm=reverse
      else
        hi IndentGuidesOdd guifg={dark.background} guibg={dark.normal.black} gui=NONE cterm=NONE
        hi IndentGuidesEven guifg={dark.background} guibg={dark.normal.black} gui=NONE cterm=NONE
      endif
    endif
    if !exists('g:indentLine_color_term')
      let g:indentLine_color_term = 239
    endif
    if !exists('g:indentLine_color_gui')
      let g:indentLine_color_gui = '{dark.normal.black}'
    endif
    hi LspDiagnosticsDefaultError guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsErrorFloating guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignError guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineError guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE

    hi LspDiagnosticsDefaultWarning guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignWarning guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineWarning guifg={dark.bright.yellow} guibg=NONE guisp={dark.bright.yellow} gui=undercurl cterm=underline

    hi LspDiagnosticsDefaultInformation guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignInformation guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineInformation guifg={dark.normal.blue} guibg=NONE guisp={dark.normal.blue} gui=undercurl cterm=underline

    hi LspDiagnosticsDefaultHint guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsSignHint guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi LspDiagnosticsUnderlineHint guifg={dark.normal.cyan} guibg=NONE guisp={dark.normal.cyan} gui=undercurl cterm=underline

    hi LanguageClientError guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientErrorSign guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientWarning guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientWarningSign guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi LangaugeClientInfo guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientInfoSign guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi LanguageClientCodeLens guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeDir guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeDirSlash guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeOpenable guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeClosable guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeFile guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeExecFile guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeUp guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeCWD guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeHelp guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeToggleOn guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi NERDTreeToggleOff guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi netrwDir guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi netrwClassify guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi netrwLink guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi netrwSymLink guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi netrwExe guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi netrwComment guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi netrwList guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi netrwHelpCmd guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi netrwCmdSep guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi netrwVersion guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE

    let g:niji_dark_colours = g:rbpt_colorpairs
    let g:niji_light_colours = g:rbpt_colorpairs
    hi ShowMarksHLl guifg={dark.normal.blue} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi ShowMarksHLu guifg={dark.normal.blue} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi ShowMarksHLo guifg={dark.normal.blue} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi ShowMarksHLm guifg={dark.normal.blue} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi SignifySignAdd guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi SignifySignChange guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi SignifySignDelete guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi SignatureMarkText guifg={dark.normal.blue} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi SignatureMarkerText guifg={dark.normal.magenta} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi StartifyBracket guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi StartifyFile guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi StartifyNumber guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi StartifyPath guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi StartifySlash guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi StartifySection guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi StartifySpecial guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi StartifyHeader guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi StartifyFooter guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi SyntasticError guifg=NONE guibg=NONE guisp={dark.normal.red} gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi SyntasticWarning guifg=NONE guibg=NONE guisp={dark.bright.yellow} gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
    hi SyntasticErrorSign guifg={dark.normal.red} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi SyntasticWarningSign guifg={dark.bright.yellow} guibg={dark.normal.black} gui=NONE cterm=NONE
    hi multiple_cursors_cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
    hi multiple_cursors_visual guifg=NONE guibg={dark.normal.black} gui=NONE cterm=NONE
    let g:vimshell_escape_colors = [
          \ '{dark.normal.white}', '{dark.normal.red}', '{dark.normal.green}', '{dark.bright.yellow}',
          \ '{dark.normal.blue}', '{dark.normal.magenta}', '{dark.normal.cyan}', '{dark.normal.white}',
          \ '{dark.background}', '{dark.normal.red}', '{dark.normal.green}', '{dark.operator}',
          \ '{dark.normal.blue}', '{dark.normal.magenta}', '{dark.normal.cyan}', '{dark.normal.white}'
          \ ]
  endif
  if get(g:, "basic_filetype_hi_groups", 0)
    hi diffAdded guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi diffRemoved guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi diffChanged guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi diffFile guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi diffNewFile guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi diffLine guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi htmlTag guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi htmlEndTag guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi htmlTagName guifg={dark.normal.cyan} guibg=NONE gui=bold cterm=bold
    hi htmlArg guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi htmlScriptTag guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi htmlTagN guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi htmlSpecialTagName guifg={dark.normal.cyan} guibg=NONE gui=bold cterm=bold
    hi htmlLink guifg={dark.normal.white} guibg=NONE gui=underline cterm=underline
    hi htmlSpecialChar guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi htmlBold guifg=fg guibg={dark.background} gui=bold cterm=bold
    hi htmlBoldUnderline guifg=fg guibg={dark.background} gui=bold,underline cterm=bold,underline
    hi htmlBoldItalic guifg=fg guibg={dark.background} gui=bold,italic cterm=bold,italic
    hi htmlBoldUnderlineItalic guifg=fg guibg={dark.background} gui=bold,italic,underline cterm=bold,italic,underline
    hi htmlUnderline guifg=fg guibg={dark.background} gui=underline cterm=underline
    hi htmlUnderlineItalic guifg=fg guibg={dark.background} gui=italic,underline cterm=italic,underline
    hi htmlItalic guifg=fg guibg={dark.background} gui=italic cterm=italic
    hi xmlTag guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi xmlEndTag guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi xmlTagName guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi xmlEqual guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi docbkKeyword guifg={dark.normal.cyan} guibg=NONE gui=bold cterm=bold
    hi xmlDocTypeDecl guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi xmlDocTypeKeyword guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi xmlCdataStart guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi xmlCdataCdata guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi dtdFunction guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi dtdTagName guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi xmlAttrib guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi xmlProcessingDelim guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi dtdParamEntityPunct guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi dtdParamEntityDPunct guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi xmlAttribPunct guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi xmlEntity guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi xmlEntityPunct guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi vimCommentTitle guifg={dark.normal.white} guibg=NONE gui=bold cterm=bold
    hi vimNotation guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi vimBracket guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi vimMapModKey guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi vimFuncSID guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi vimSetSep guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi vimSep guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi vimContinue guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi clojureKeyword guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi clojureCond guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi clojureSpecial guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi clojureDefine guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi clojureFunc guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi clojureRepeat guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi clojureCharacter guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi clojureStringEscape guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi clojureException guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi clojureRegexp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi clojureRegexpEscape guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi clojureRegexpCharClass guifg={dark.normal.white} guibg=NONE gui=bold cterm=bold
    hi! link clojureRegexpMod clojureRegexpCharClass
    hi! link clojureRegexpQuantifier clojureRegexpCharClass
    hi clojureParen guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi clojureAnonArg guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi clojureVariable guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi clojureMacro guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi clojureMeta guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi clojureDeref guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi clojureQuote guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi clojureUnquote guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi cOperator guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi cStructure guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi pythonBuiltin guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi pythonBuiltinObj guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi pythonBuiltinFunc guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi pythonFunction guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi pythonDecorator guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi pythonInclude guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi pythonImport guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi pythonRun guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi pythonCoding guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi pythonOperator guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi pythonException guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi pythonExceptions guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi pythonBoolean guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi pythonDot guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi pythonConditional guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi pythonRepeat guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi pythonDottedName guifg={dark.normal.green} guibg=NONE gui=bold cterm=bold
    hi cssBraces guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi cssFunctionName guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi cssIdentifier guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi cssClassName guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi cssColor guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi cssSelectorOp guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi cssSelectorOp2 guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi cssImportant guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi cssVendor guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi cssTextProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssAnimationProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssUIProp guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi cssTransformProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssTransitionProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssPrintProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssPositioningProp guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi cssBoxProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssFontDescriptorProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssFlexibleBoxProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssBorderOutlineProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssBackgroundProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssMarginProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssListProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssTableProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssFontProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssPaddingProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssDimensionProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssRenderProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssColorProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi cssGeneratedContentProp guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi javaScriptBraces guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javaScriptFunction guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi javaScriptIdentifier guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi javaScriptMember guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi javaScriptNumber guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi javaScriptNull guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi javaScriptParens guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javascriptImport guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi javascriptExport guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassKeyword guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassExtends guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDefault guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassName guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassSuperName guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi javascriptGlobal guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi javascriptEndColons guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptFuncArg guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptGlobalMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptNodeGlobal guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMWindowProp guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptArrayMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptArrayStaticMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptCacheMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDateMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptMathStaticMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptURLUtilsProp guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMNavigatorProp guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMDocMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMDocProp guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMLocationMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptBOMWindowMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptStringMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptVariable guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi javascriptIdentifier guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassSuper guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi javascriptFuncKeyword guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi javascriptAsyncFunc guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi javascriptClassStatic guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi javascriptOperator guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi javascriptForOperator guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi javascriptYield guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi javascriptExceptions guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi javascriptMessage guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi javascriptTemplateSB guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi javascriptTemplateSubstitution guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptLabel guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptObjectLabel guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptPropertyName guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptLogicSymbols guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptArrowFunc guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocParamName guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocTags guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocNotation guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocParamType guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDocNamedParamType guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javascriptBrackets guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMElemAttrs guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMEventMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMNodeMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptDOMStorageMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptHeadersMethod guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi javascriptAsyncFuncKeyword guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi javascriptAwaitFuncKeyword guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi jsImport guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi jsExport guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi jsFrom guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi jsThis guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi jsParen guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsOperator guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi jsSpreadOperator guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi jsSpreadExpression guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsClassKeyword guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi jsClassProperty guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi jsExtendsKeyword guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi jsExportDefault guifg={dark.operator} guibg=NONE gui=bold cterm=bold
    hi jsTemplateBraces guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi jsGlobalNodeObjects guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi jsGlobalObjects guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi jsFunction guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi jsFuncParens guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi jsFuncBlock guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsParens guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi jsNull guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi jsUndefined guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi jsClassDefinition guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi jsFunctionKey guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi jsBracket guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi jsObjectColon guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi jsObjectProp guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsFuncBraces guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi jsVariableDef guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi jsObjectValue guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsDestructuringBlock guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi jsParenIfElse guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsClassBlock guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsFutureKeys guifg={dark.operator} guibg=NONE gui=bold cterm=bold
    hi jsStorageClass guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi jsModuleKeyword guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsObjectShorthandProp guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsxRegion guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsxTagName guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsxComponentName guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi jsxEscapeJsAttributes guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsxEscapeJsContent guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsxAttrib guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi jsxAttributeBraces guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi jsxEqual guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi jsxString guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi jsxCloseTag guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsxEndTag guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsxEndString guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsxCloseString guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsxIfOperator guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi jsxElseOperator guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi jsxDot guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi jsxNamespace guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi jsxPunct guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptReserved guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptLabel guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptFuncKeyword guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptIdentifier guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptBraces guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptEndColons guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptDOMObjects guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptAjaxMethods guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptLogicSymbols guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi! link typeScriptDocSeeTag Comment
    hi! link typeScriptDocParam Comment
    hi! link typeScriptDocTags vimCommentTitle
    hi typeScriptGlobalObjects guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptParens guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptOpSymbols guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptHtmlElemProperties guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptNull guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi typeScriptInterpolationDelimiter guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi purescriptModuleKeyword guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi purescriptModuleName guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi purescriptWhere guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi purescriptDelimiter guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi purescriptType guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi purescriptImportKeyword guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi purescriptHidingKeyword guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi purescriptAsKeyword guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi purescriptStructure guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi purescriptOperator guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi purescriptTypeVar guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi purescriptConstructor guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi purescriptFunction guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi purescriptConditional guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi purescriptBacktick guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi coffeeExtendedOp guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi coffeeSpecialOp guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi coffeeCurly guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi coffeeParen guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi coffeeBracket guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi rubyStringDelimiter guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi rubyInterpolationDelimiter guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi objcTypeModifier guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi objcDirective guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi goDirective guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi goConstants guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi goDeclaration guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi goDeclType guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi goBuiltins guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE

    hi rustModPath guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi rustDerive guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE

    hi luaIn guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi luaFunction guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi luaTable guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi moonSpecialOp guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi moonExtendedOp guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi moonFunction guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi moonObject guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi javaAnnotation guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi javaDocTags guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi! link javaCommentTitle vimCommentTitle
    hi javaParen guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javaParen1 guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javaParen2 guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javaParen3 guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javaParen4 guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javaParen5 guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi javaOperator guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi javaVarArg guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi! link elixirDocString Comment
    hi elixirStringDelimiter guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi elixirInterpolationDelimiter guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi elixirModuleDeclaration guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi scalaNameDefinition guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi scalaCaseFollowing guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi scalaCapitalWord guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi scalaTypeExtension guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi scalaKeyword guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi scalaKeywordModifier guifg={dark.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi scalaSpecial guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi scalaOperator guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi scalaTypeDeclaration guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi scalaTypeTypePostDeclaration guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi scalaInstanceDeclaration guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi scalaInterpolation guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi markdownItalic guifg={dark.normal.white} guibg=NONE gui=italic cterm=italic
    hi markdownH1 guifg={dark.normal.green} guibg=NONE gui=bold cterm=bold
    hi markdownH2 guifg={dark.normal.green} guibg=NONE gui=bold cterm=bold
    hi markdownH3 guifg={dark.bright.yellow} guibg=NONE gui=bold cterm=bold
    hi markdownH4 guifg={dark.bright.yellow} guibg=NONE gui=bold cterm=bold
    hi markdownH5 guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi markdownH6 guifg={dark.bright.yellow} guibg=NONE gui=NONE cterm=NONE
    hi markdownCode guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi markdownCodeBlock guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi markdownCodeDelimiter guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi markdownBlockquote guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi markdownListMarker guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi markdownOrderedListMarker guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi markdownRule guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi markdownHeadingRule guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
    hi markdownUrlDelimiter guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi markdownLinkDelimiter guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi markdownLinkTextDelimiter guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi markdownHeadingDelimiter guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi markdownUrl guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi markdownUrlTitleDelimiter guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi markdownLinkText guifg={dark.normal.black} guibg=NONE gui=underline cterm=underline
    hi! link markdownIdDeclaration markdownLinkText
    hi haskellType guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi haskellIdentifier guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi haskellSeparator guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi haskellDelimiter guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
    hi haskellOperators guifg={dark.normal.blue} guibg=NONE gui=NONE cterm=NONE
    hi haskellBacktick guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi haskellStatement guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi haskellConditional guifg={dark.operator} guibg=NONE gui=NONE cterm=NONE
    hi haskellLet guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi haskellDefault guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi haskellWhere guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi haskellBottom guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi haskellBlockKeywords guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi haskellImportKeywords guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi haskellDeclKeyword guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi haskellDeriving guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi haskellAssocType guifg={dark.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi haskellNumber guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi haskellPragma guifg={dark.normal.magenta} guibg=NONE gui=NONE cterm=NONE
    hi haskellString guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi haskellChar guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi jsonKeyword guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi jsonQuote guifg={dark.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi jsonBraces guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    hi jsonString guifg={dark.foreground} guibg=NONE gui=NONE cterm=NONE
    if !s:italics
      hi htmlBoldItalic gui=bold cterm=bold
      hi htmlBoldUnderlineItalic gui=bold,underline cterm=bold,underline
      hi htmlUnderlineItalic gui=underline cterm=underline
      hi htmlItalic gui=NONE cterm=NONE
      hi markdownItalic gui=NONE cterm=NONE
    endif
    if !get(g:, 'basic_bold', 1)
      hi htmlTagName gui=NONE cterm=NONE
      hi htmlSpecialTagName gui=NONE cterm=NONE
      hi htmlBold gui=NONE cterm=NONE
      hi htmlBoldUnderline gui=underline cterm=underline
      hi htmlBoldItalic gui=italic cterm=italic
      hi htmlBoldUnderlineItalic gui=underline,italic cterm=underline,italic
      hi docbkKeyword gui=NONE cterm=NONE
      hi vimCommentTitle gui=NONE cterm=NONE
      hi clojureRegexpCharClass gui=NONE cterm=NONE
      hi pythonDottedName gui=NONE cterm=NONE
      hi jsExportDefault gui=NONE cterm=NONE
      hi jsFutureKeys gui=NONE cterm=NONE
      hi markdownH1 gui=NONE cterm=NONE
      hi markdownH2 gui=NONE cterm=NONE
      hi markdownH3 gui=NONE cterm=NONE
      hi markdownH4 gui=NONE cterm=NONE
    endif
  endif
  unlet s:t_Co s:italics
  finish
endif















































































































































































































































































" Light background
let g:terminal_ansi_colors = ['{dark.normal.black}', '{dark.normal.red}', '{dark.normal.green}', '{dark.bright.yellow}', '{dark.normal.blue}', '{dark.normal.magenta}', '{dark.normal.cyan}', '{dark.normal.white}', '{dark.normal.black}', '{light.normal.red}', '{light.normal.green}', '{light.normal.yellow}', '{light.normal.blue}', '{light.normal.magenta}', '{light.normal.cyan}', '{dark.normal.white}']
if has('nvim')
  let g:terminal_color_0 = '{dark.normal.black}'
  let g:terminal_color_1 = '{dark.normal.red}'
  let g:terminal_color_2 = '{dark.normal.green}'
  let g:terminal_color_3 = '{dark.bright.yellow}'
  let g:terminal_color_4 = '{dark.normal.blue}'
  let g:terminal_color_5 = '{dark.normal.magenta}'
  let g:terminal_color_6 = '{dark.normal.cyan}'
  let g:terminal_color_7 = '{dark.normal.white}'
  let g:terminal_color_8 = '{dark.normal.black}'
  let g:terminal_color_9 = '{light.normal.red}'
  let g:terminal_color_10 = '{light.normal.green}'
  let g:terminal_color_11 = '{light.normal.yellow}'
  let g:terminal_color_12 = '{light.normal.blue}'
  let g:terminal_color_13 = '{light.normal.magenta}'
  let g:terminal_color_14 = '{light.normal.cyan}'
  let g:terminal_color_15 = '{dark.normal.white}'
endif
if get(g:, 'basic_transp_bg', 0) && !has('gui_running')
  hi Normal guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg={light.foreground} guibg=NONE gui=NONE cterm=NONE
  hi FoldColumn guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi SignColumn guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi VertSplit guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
else
  hi Normal guifg={dark.normal.black} guibg={dark.normal.white} gui=NONE cterm=NONE
  hi CursorLineNr guifg={light.foreground} guibg={dark.foreground} gui=NONE cterm=NONE
  hi FoldColumn guifg={dark.normal.black} guibg={dark.foreground} gui=NONE cterm=NONE
  hi SignColumn guifg={dark.normal.black} guibg={dark.foreground} gui=NONE cterm=NONE
  hi VertSplit guifg={dark.normal.white} guibg={dark.normal.white} gui=NONE cterm=NONE
endif
hi ColorColumn guifg=NONE guibg={dark.foreground} gui=NONE cterm=NONE
hi Comment guifg={dark.normal.black} guibg=NONE gui=italic cterm=italic
hi CursorLine guifg=NONE guibg={dark.foreground} gui=NONE cterm=NONE
hi Error guifg={light.normal.red} guibg={dark.normal.white} gui=bold,reverse cterm=bold,reverse
hi ErrorMsg guifg={dark.normal.white} guibg={light.normal.red} gui=bold cterm=bold
hi Folded guifg={dark.normal.black} guibg={dark.foreground} gui=italic cterm=italic
hi LineNr guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=NONE guibg={light.normal.white} gui=bold,underline cterm=bold,underline
hi NonText guifg={light.normal.white} guibg=NONE gui=NONE cterm=NONE
hi Pmenu guifg={dark.normal.black} guibg={light.normal.white} gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg={light.normal.white} gui=NONE cterm=NONE
hi PmenuSel guifg={light.normal.white} guibg={light.normal.blue} gui=bold cterm=bold
hi PmenuThumb guifg=NONE guibg={dark.normal.white} gui=NONE cterm=NONE
hi SpecialKey guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg={dark.foreground} guibg={light.normal.white} gui=reverse cterm=reverse
hi StatusLineNC guifg={dark.foreground} guibg={light.normal.black} gui=reverse cterm=reverse
hi TabLine guifg={dark.normal.white} guibg={dark.foreground} gui=NONE cterm=NONE
hi TabLineFill guifg={dark.normal.white} guibg={dark.foreground} gui=NONE cterm=NONE
hi TabLineSel guifg={light.bright.green} guibg={dark.foreground} gui=NONE cterm=NONE
hi ToolbarButton guifg={dark.background} guibg={dark.normal.white} gui=bold cterm=bold
hi ToolbarLine guifg=NONE guibg={dark.normal.white} gui=NONE cterm=NONE
hi Visual guifg=NONE guibg={light.normal.white} gui=NONE cterm=NONE
hi WildMenu guifg={light.normal.blue} guibg={light.normal.white} gui=bold cterm=bold
hi Conceal guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
hi DiffAdd guifg={light.normal.green} guibg={dark.normal.white} gui=reverse cterm=reverse
hi DiffChange guifg={light.normal.cyan} guibg={dark.normal.white} gui=reverse cterm=reverse
hi DiffDelete guifg={light.normal.red} guibg={dark.normal.white} gui=reverse cterm=reverse
hi DiffText guifg={light.normal.yellow} guibg={dark.normal.white} gui=reverse cterm=reverse
hi Directory guifg={light.normal.green} guibg=NONE gui=bold cterm=bold
hi EndOfBuffer guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
hi IncSearch guifg={light.operator} guibg={dark.normal.white} gui=reverse cterm=reverse
hi ModeMsg guifg={light.normal.yellow} guibg=NONE gui=bold cterm=bold
hi MoreMsg guifg={light.normal.yellow} guibg=NONE gui=bold cterm=bold
hi Question guifg={light.operator} guibg=NONE gui=bold cterm=bold
hi Search guifg={light.normal.yellow} guibg={dark.normal.white} gui=reverse cterm=reverse
hi SpellBad guifg={light.normal.red} guibg=NONE guisp={light.normal.red} gui=italic,undercurl cterm=italic,underline
hi SpellCap guifg={light.normal.blue} guibg=NONE guisp={light.normal.blue} gui=italic,undercurl cterm=italic,underline
hi SpellLocal guifg={light.normal.cyan} guibg=NONE guisp={light.normal.cyan} gui=italic,undercurl cterm=italic,underline
hi SpellRare guifg={light.normal.magenta} guibg=NONE guisp={light.normal.magenta} gui=italic,undercurl cterm=italic,underline
hi Title guifg={light.normal.green} guibg=NONE gui=bold cterm=bold
hi WarningMsg guifg={light.normal.red} guibg=NONE gui=bold cterm=bold
hi Boolean guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
hi Character guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
hi Constant guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
hi Define guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
hi Debug guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
hi Error guifg={light.normal.red} guibg={dark.normal.white} gui=bold,reverse cterm=bold,reverse
hi Exception guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
hi Float guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
hi Function guifg={light.normal.green} guibg=NONE gui=bold cterm=bold
hi Identifier guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
hi Ignore guifg=fg guibg=NONE gui=NONE cterm=NONE
hi Include guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
hi Label guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
hi Macro guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
hi Number guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
hi Operator guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
hi Statement guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
hi Special guifg={light.operator} guibg=NONE gui=italic cterm=italic
hi String guifg={light.normal.green} guibg=NONE gui=italic cterm=italic
hi Structure guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=fg guibg={dark.normal.white} gui=bold,italic cterm=bold,italic
hi Type guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg={light.normal.blue} guibg=NONE guisp={light.normal.blue} gui=underline cterm=underline
hi CursorIM guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
if !s:italics
  hi Comment gui=NONE cterm=NONE
  hi Folded gui=NONE cterm=NONE
  hi SpellBad gui=undercurl cterm=underline
  hi SpellCap gui=undercurl cterm=underline
  hi SpellLocal gui=undercurl cterm=underline
  hi SpellRare gui=undercurl cterm=underline
  hi Special gui=NONE cterm=NONE
  hi String gui=NONE cterm=NONE
  hi Todo gui=bold cterm=bold
endif
if !get(g:, 'basic_italicize_strings', 1)
  hi Special gui=NONE cterm=NONE
  hi String gui=NONE cterm=NONE
endif
if !get(g:, 'basic_bold', 1)
  hi Directory gui=NONE cterm=NONE
  hi Error gui=reverse cterm=reverse
  hi ErrorMsg gui=NONE cterm=NONE
  hi Function gui=NONE cterm=NONE
  hi MatchParen gui=underline cterm=underline
  hi ModeMsg gui=NONE cterm=NONE
  hi MoreMsg gui=NONE cterm=NONE
  hi PmenuSel gui=NONE cterm=NONE
  hi Question gui=NONE cterm=NONE
  hi Title gui=NONE cterm=NONE
  hi Todo gui=italic cterm=italic
  hi ToolbarButton gui=NONE cterm=NONE
  hi WarningMsg gui=NONE cterm=NONE
  hi WildMenu gui=NONE cterm=NONE
endif
hi NormalMode guifg={dark.normal.white} guibg={dark.normal.white} gui=reverse cterm=reverse
hi InsertMode guifg={light.normal.blue} guibg={dark.normal.white} gui=reverse cterm=reverse
hi ReplaceMode guifg={light.normal.cyan} guibg={dark.normal.white} gui=reverse cterm=reverse
hi VisualMode guifg={light.operator} guibg={dark.normal.white} gui=reverse cterm=reverse
hi CommandMode guifg={light.normal.magenta} guibg={dark.normal.white} gui=reverse cterm=reverse
hi Warnings guifg={light.operator} guibg={dark.normal.white} gui=reverse cterm=reverse
if has('nvim')
  hi! link TermCursor Cursor
  hi TermCursorNC guifg={dark.foreground} guibg={dark.normal.black} gui=NONE cterm=NONE
endif
if !(get(g:, 'basic_plugin_hi_groups', 0) || get(g:, 'basic_filetype_hi_groups', 0))
  finish
endif
if get(g:, "basic_plugin_hi_groups", 0)
  hi ALEError guifg=NONE guibg=NONE guisp={light.normal.red} gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi ALEWarning guifg=NONE guibg=NONE guisp={light.normal.red} gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi ALEInfo guifg=NONE guibg=NONE guisp={light.normal.blue} gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi ALEErrorSign guifg={light.normal.red} guibg={dark.foreground} gui=NONE cterm=NONE
  hi ALEWarningSign guifg={light.normal.yellow} guibg={dark.foreground} gui=NONE cterm=NONE
  hi ALEInfoSign guifg={light.normal.blue} guibg={dark.foreground} gui=NONE cterm=NONE
  hi BufTabLineCurrent guifg={dark.normal.white} guibg={dark.normal.white} gui=NONE cterm=NONE
  hi BufTabLineActive guifg={dark.normal.white} guibg={light.normal.white} gui=NONE cterm=NONE
  hi BufTabLineHidden guifg={dark.normal.white} guibg={dark.foreground} gui=NONE cterm=NONE
  hi BufTabLineFill guifg={dark.normal.white} guibg={dark.normal.white} gui=NONE cterm=NONE
  hi CocErrorSign guifg={light.normal.red} guibg={dark.normal.white} gui=NONE cterm=NONE
  hi CocWarningSign guifg={light.normal.yellow} guibg={dark.normal.white} gui=NONE cterm=NONE
  hi CocInfoSign guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi CocHintSign guifg={light.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi CocErrorFloat guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi CocWarningFloat guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi CocInfoFloat guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi CocHintFloat guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi CocSelectedText guifg={dark.foreground} guibg={dark.normal.white} gui=NONE cterm=NONE
  hi CocCodeLens guifg={light.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi CtrlPMatch guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi CtrlPNoEntries guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi CtrlPPrtBase guifg={light.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi CtrlPPrtCursor guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi CtrlPLinePre guifg={light.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi CtrlPMode1 guifg={light.normal.blue} guibg={light.normal.white} gui=bold cterm=bold
  hi CtrlPMode2 guifg={dark.normal.white} guibg={light.normal.blue} gui=bold cterm=bold
  hi CtrlPStats guifg={dark.normal.white} guibg={light.normal.white} gui=bold cterm=bold
  if !get(g:, 'basic_bold', 1)
    hi CtrlPMode1 gui=NONE cterm=NONE
    hi CtrlPMode2 gui=NONE cterm=NONE
    hi CtrlPStats gui=NONE cterm=NONE
  endif
  hi DirvishPathTail guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi DirvishArg guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi! link EasyMotionTarget Search
  hi! link EasyMotionShade Comment
  hi gitcommitSelectedFile guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi gitcommitDiscardedFile guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  if get(g:, 'basic_transp_bg', 0)
    hi GitGutterAdd guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
    hi GitGutterChange guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
    hi GitGutterDelete guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
    hi GitGutterChangeDelete guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  else
    hi GitGutterAdd guifg={light.normal.green} guibg={dark.foreground} gui=NONE cterm=NONE
    hi GitGutterChange guifg={light.normal.cyan} guibg={dark.foreground} gui=NONE cterm=NONE
    hi GitGutterDelete guifg={light.normal.red} guibg={dark.foreground} gui=NONE cterm=NONE
    hi GitGutterChangeDelete guifg={light.normal.cyan} guibg={dark.foreground} gui=NONE cterm=NONE
  endif
  if get(g:, 'indent_guides_auto_colors', 0)
    if get(g:, 'basic_invert_indent_guides', 0)
      hi IndentGuidesOdd guifg={dark.normal.white} guibg={light.normal.white} gui=reverse cterm=reverse
      hi IndentGuidesEven guifg={dark.normal.white} guibg={dark.foreground} gui=reverse cterm=reverse
    else
      hi IndentGuidesOdd guifg={dark.normal.white} guibg={light.normal.white} gui=NONE cterm=NONE
      hi IndentGuidesEven guifg={dark.normal.white} guibg={dark.foreground} gui=NONE cterm=NONE
    endif
  endif
  if !exists('g:indentLine_color_term')
    let g:indentLine_color_term = 187
  endif
  if !exists('g:indentLine_color_gui')
    let g:indentLine_color_gui = '{light.normal.white}'
  endif
  hi LspDiagnosticsDefaultError guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi LspDiagnosticsSignError guifg={light.normal.red} guibg={dark.normal.white} gui=NONE cterm=NONE
  hi LspDiagnosticsUnderlineError guifg={light.normal.red} guibg=NONE guisp={light.normal.red} gui=undercurl cterm=underline
  hi LspDiagnosticsDefaultWarning guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi LspDiagnosticsSignWarning guifg={light.normal.yellow} guibg={dark.foreground} gui=NONE cterm=NONE
  hi LspDiagnosticsUnderlineWarning guifg={light.normal.yellow} guibg=NONE guisp={light.normal.yellow} gui=undercurl cterm=underline
  hi LspDiagnosticsDefaultInformation guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi LspDiagnosticsSignInformation guifg={light.normal.blue} guibg={dark.foreground} gui=NONE cterm=NONE
  hi LspDiagnosticsUnderlineInformation guifg={light.normal.blue} guibg=NONE guisp={light.normal.blue} gui=undercurl cterm=underline
  hi LspDiagnosticsDefaultHint guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi LspDiagnosticsSignHint guifg={light.normal.cyan} guibg={dark.foreground} gui=NONE cterm=NONE
  hi LspDiagnosticsUnderlineHint guifg={light.normal.cyan} guibg=NONE guisp={light.normal.cyan} gui=undercurl cterm=underline
  hi LanguageClientError guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi LanguageClientErrorSign guifg={light.normal.red} guibg={dark.normal.white} gui=NONE cterm=NONE
  hi LanguageClientWarning guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi LanguageClientWarningSign guifg={light.normal.yellow} guibg={dark.foreground} gui=NONE cterm=NONE
  hi LangaugeClientInfo guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi LanguageClientInfoSign guifg={light.normal.blue} guibg={dark.foreground} gui=NONE cterm=NONE
  hi LanguageClientCodeLens guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeDir guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeDirSlash guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeOpenable guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeClosable guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeFile guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeExecFile guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeUp guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeCWD guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeHelp guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeToggleOn guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi NERDTreeToggleOff guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi netrwDir guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi netrwClassify guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi netrwLink guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi netrwSymLink guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi netrwExe guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi netrwComment guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi netrwList guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi netrwHelpCmd guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi netrwCmdSep guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi netrwVersion guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE

  let g:niji_dark_colours = g:rbpt_colorpairs
  let g:niji_light_colours = g:rbpt_colorpairs
  hi ShowMarksHLl guifg={light.normal.blue} guibg={dark.foreground} gui=NONE cterm=NONE
  hi ShowMarksHLu guifg={light.normal.blue} guibg={dark.foreground} gui=NONE cterm=NONE
  hi ShowMarksHLo guifg={light.normal.blue} guibg={dark.foreground} gui=NONE cterm=NONE
  hi ShowMarksHLm guifg={light.normal.blue} guibg={dark.foreground} gui=NONE cterm=NONE
  hi SignifySignAdd guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi SignifySignChange guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi SignifySignDelete guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi SignatureMarkText guifg={light.normal.blue} guibg={dark.foreground} gui=NONE cterm=NONE
  hi SignatureMarkerText guifg={light.normal.magenta} guibg={dark.foreground} gui=NONE cterm=NONE
  hi StartifyBracket guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi StartifyFile guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi StartifyNumber guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi StartifyPath guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi StartifySlash guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi StartifySection guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi StartifySpecial guifg={light.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi StartifyHeader guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi StartifyFooter guifg={light.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi SyntasticError guifg=NONE guibg=NONE guisp={light.normal.red} gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SyntasticWarning guifg=NONE guibg=NONE guisp={light.normal.yellow} gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SyntasticErrorSign guifg={light.normal.red} guibg={dark.foreground} gui=NONE cterm=NONE
  hi SyntasticWarningSign guifg={light.normal.yellow} guibg={dark.foreground} gui=NONE cterm=NONE
  hi multiple_cursors_cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi multiple_cursors_visual guifg=NONE guibg={light.normal.white} gui=NONE cterm=NONE
  let g:vimshell_escape_colors = [
        \ '{dark.normal.white}', '{light.normal.red}', '{light.normal.green}', '{light.normal.yellow}',
        \ '{light.normal.blue}', '{light.normal.magenta}', '{light.normal.cyan}', '{dark.normal.white}',
        \ '{dark.normal.white}', '{light.normal.red}', '{light.normal.green}', '{light.operator}',
        \ '{light.normal.blue}', '{light.normal.magenta}', '{light.normal.cyan}', '{dark.background}'
        \ ]
endif
if get(g:, "basic_filetype_hi_groups", 0)
  hi diffAdded guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi diffRemoved guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi diffChanged guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi diffFile guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi diffNewFile guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi diffLine guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi htmlTag guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi htmlEndTag guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi htmlTagName guifg={light.normal.cyan} guibg=NONE gui=bold cterm=bold
  hi htmlArg guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi htmlScriptTag guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi htmlTagN guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi htmlSpecialTagName guifg={light.normal.cyan} guibg=NONE gui=bold cterm=bold
  hi htmlLink guifg={dark.normal.white} guibg=NONE gui=underline cterm=underline
  hi htmlSpecialChar guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi htmlBold guifg=fg guibg={dark.normal.white} gui=bold cterm=bold
  hi htmlBoldUnderline guifg=fg guibg={dark.normal.white} gui=bold,underline cterm=bold,underline
  hi htmlBoldItalic guifg=fg guibg={dark.normal.white} gui=bold,italic cterm=bold,italic
  hi htmlBoldUnderlineItalic guifg=fg guibg={dark.normal.white} gui=bold,italic,underline cterm=bold,italic,underline
  hi htmlUnderline guifg=fg guibg={dark.normal.white} gui=underline cterm=underline
  hi htmlUnderlineItalic guifg=fg guibg={dark.normal.white} gui=italic,underline cterm=italic,underline
  hi htmlItalic guifg=fg guibg={dark.normal.white} gui=italic cterm=italic
  hi xmlTag guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi xmlEndTag guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi xmlTagName guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi xmlEqual guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi docbkKeyword guifg={light.normal.cyan} guibg=NONE gui=bold cterm=bold
  hi xmlDocTypeDecl guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi xmlDocTypeKeyword guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi xmlCdataStart guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi xmlCdataCdata guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi dtdFunction guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi dtdTagName guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi xmlAttrib guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi xmlProcessingDelim guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi dtdParamEntityPunct guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi dtdParamEntityDPunct guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi xmlAttribPunct guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi xmlEntity guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi xmlEntityPunct guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi vimCommentTitle guifg={dark.normal.white} guibg=NONE gui=bold cterm=bold
  hi vimNotation guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi vimBracket guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi vimMapModKey guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi vimFuncSID guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi vimSetSep guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi vimSep guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi vimContinue guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi clojureKeyword guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi clojureCond guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi clojureSpecial guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi clojureDefine guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi clojureFunc guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi clojureRepeat guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi clojureCharacter guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi clojureStringEscape guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi clojureException guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi clojureRegexp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi clojureRegexpEscape guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi clojureRegexpCharClass guifg={dark.normal.white} guibg=NONE gui=bold cterm=bold
  hi! link clojureRegexpMod clojureRegexpCharClass
  hi! link clojureRegexpQuantifier clojureRegexpCharClass
  hi clojureParen guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi clojureAnonArg guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi clojureVariable guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi clojureMacro guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi clojureMeta guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi clojureDeref guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi clojureQuote guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi clojureUnquote guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi cOperator guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi cStructure guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi pythonBuiltin guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi pythonBuiltinObj guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi pythonBuiltinFunc guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi pythonFunction guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi pythonDecorator guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi pythonInclude guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi pythonImport guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi pythonRun guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi pythonCoding guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi pythonOperator guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi pythonException guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi pythonExceptions guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi pythonBoolean guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi pythonDot guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi pythonConditional guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi pythonRepeat guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi pythonDottedName guifg={light.normal.green} guibg=NONE gui=bold cterm=bold
  hi cssBraces guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi cssFunctionName guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi cssIdentifier guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi cssClassName guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi cssColor guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi cssSelectorOp guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi cssSelectorOp2 guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi cssImportant guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi cssVendor guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi cssTextProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssAnimationProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssUIProp guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi cssTransformProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssTransitionProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssPrintProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssPositioningProp guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi cssBoxProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssFontDescriptorProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssFlexibleBoxProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssBorderOutlineProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssBackgroundProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssMarginProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssListProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssTableProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssFontProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssPaddingProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssDimensionProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssRenderProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssColorProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi cssGeneratedContentProp guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi javaScriptBraces guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javaScriptFunction guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi javaScriptIdentifier guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi javaScriptMember guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi javaScriptNumber guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi javaScriptNull guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi javaScriptParens guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javascriptImport guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi javascriptExport guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi javascriptClassKeyword guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi javascriptClassExtends guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDefault guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi javascriptClassName guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi javascriptClassSuperName guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi javascriptGlobal guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi javascriptEndColons guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptFuncArg guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptGlobalMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptNodeGlobal guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptBOMWindowProp guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptArrayMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptArrayStaticMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptCacheMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDateMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptMathStaticMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptURLUtilsProp guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptBOMNavigatorProp guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDOMDocMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDOMDocProp guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptBOMLocationMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptBOMWindowMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptStringMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptVariable guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi javascriptIdentifier guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi javascriptClassSuper guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi javascriptFuncKeyword guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi javascriptAsyncFunc guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi javascriptClassStatic guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi javascriptOperator guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi javascriptForOperator guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi javascriptYield guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi javascriptExceptions guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi javascriptMessage guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi javascriptTemplateSB guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi javascriptTemplateSubstitution guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptLabel guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptObjectLabel guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptPropertyName guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptLogicSymbols guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptArrowFunc guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDocParamName guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDocTags guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDocNotation guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDocParamType guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDocNamedParamType guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javascriptBrackets guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDOMElemAttrs guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDOMEventMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDOMNodeMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptDOMStorageMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptHeadersMethod guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi javascriptAsyncFuncKeyword guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi javascriptAwaitFuncKeyword guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi jsImport guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi jsExport guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi jsFrom guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi jsThis guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi jsParen guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsOperator guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi jsSpreadOperator guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi jsSpreadExpression guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsClassKeyword guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi jsClassProperty guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi jsExtendsKeyword guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi jsExportDefault guifg={light.operator} guibg=NONE gui=bold cterm=bold
  hi jsTemplateBraces guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi jsGlobalNodeObjects guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi jsGlobalObjects guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi jsFunction guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi jsFuncParens guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi jsFuncBlock guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsParens guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi jsNull guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi jsUndefined guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi jsClassDefinition guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi jsFunctionKey guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi jsBracket guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi jsObjectColon guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi jsObjectProp guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsFuncBraces guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi jsVariableDef guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi jsObjectValue guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsDestructuringBlock guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi jsParenIfElse guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsClassBlock guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsFutureKeys guifg={light.operator} guibg=NONE gui=bold cterm=bold
  hi jsStorageClass guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi jsModuleKeyword guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsObjectShorthandProp guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsxRegion guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsxTagName guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsxComponentName guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi jsxEscapeJsAttributes guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsxEscapeJsContent guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsxAttrib guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi jsxAttributeBraces guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi jsxEqual guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi jsxString guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi jsxCloseTag guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsxEndTag guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsxEndString guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsxCloseString guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsxIfOperator guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi jsxElseOperator guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi jsxDot guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi jsxNamespace guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi jsxPunct guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptReserved guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptLabel guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptFuncKeyword guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptIdentifier guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptBraces guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptEndColons guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptDOMObjects guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptAjaxMethods guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptLogicSymbols guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi! link typeScriptDocSeeTag Comment
  hi! link typeScriptDocParam Comment
  hi! link typeScriptDocTags vimCommentTitle
  hi typeScriptGlobalObjects guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptParens guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptOpSymbols guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptHtmlElemProperties guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptNull guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi typeScriptInterpolationDelimiter guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi purescriptModuleKeyword guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi purescriptModuleName guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi purescriptWhere guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi purescriptDelimiter guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi purescriptType guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi purescriptImportKeyword guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi purescriptHidingKeyword guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi purescriptAsKeyword guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi purescriptStructure guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi purescriptOperator guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi purescriptTypeVar guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi purescriptConstructor guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi purescriptFunction guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi purescriptConditional guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi purescriptBacktick guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi coffeeExtendedOp guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi coffeeSpecialOp guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi coffeeCurly guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi coffeeParen guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi coffeeBracket guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi rubyStringDelimiter guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi rubyInterpolationDelimiter guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi objcTypeModifier guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi objcDirective guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi goDirective guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi goConstants guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi goDeclaration guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi goDeclType guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi goBuiltins guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi luaIn guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi luaFunction guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi luaTable guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi moonSpecialOp guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi moonExtendedOp guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi moonFunction guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi moonObject guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi javaAnnotation guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi javaDocTags guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi! link javaCommentTitle vimCommentTitle
  hi javaParen guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javaParen1 guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javaParen2 guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javaParen3 guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javaParen4 guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javaParen5 guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi javaOperator guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi javaVarArg guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi! link elixirDocString Comment
  hi elixirStringDelimiter guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi elixirInterpolationDelimiter guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi elixirModuleDeclaration guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi scalaNameDefinition guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi scalaCaseFollowing guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi scalaCapitalWord guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi scalaTypeExtension guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi scalaKeyword guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi scalaKeywordModifier guifg={light.normal.red} guibg=NONE gui=NONE cterm=NONE
  hi scalaSpecial guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi scalaOperator guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi scalaTypeDeclaration guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi scalaTypeTypePostDeclaration guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi scalaInstanceDeclaration guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi scalaInterpolation guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi markdownItalic guifg={dark.normal.white} guibg=NONE gui=italic cterm=italic
  hi markdownH1 guifg={light.normal.green} guibg=NONE gui=bold cterm=bold
  hi markdownH2 guifg={light.normal.green} guibg=NONE gui=bold cterm=bold
  hi markdownH3 guifg={light.normal.yellow} guibg=NONE gui=bold cterm=bold
  hi markdownH4 guifg={light.normal.yellow} guibg=NONE gui=bold cterm=bold
  hi markdownH5 guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi markdownH6 guifg={light.normal.yellow} guibg=NONE gui=NONE cterm=NONE
  hi markdownCode guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi markdownCodeBlock guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi markdownCodeDelimiter guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi markdownBlockquote guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi markdownListMarker guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi markdownOrderedListMarker guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi markdownRule guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi markdownHeadingRule guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi markdownUrlDelimiter guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi markdownLinkDelimiter guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi markdownLinkTextDelimiter guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi markdownHeadingDelimiter guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi markdownUrl guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi markdownUrlTitleDelimiter guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi markdownLinkText guifg={dark.normal.black} guibg=NONE gui=underline cterm=underline
  hi! link markdownIdDeclaration markdownLinkText
  hi haskellType guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi haskellIdentifier guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi haskellSeparator guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi haskellDelimiter guifg={dark.normal.white} guibg=NONE gui=NONE cterm=NONE
  hi haskellOperators guifg={light.normal.blue} guibg=NONE gui=NONE cterm=NONE
  hi haskellBacktick guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi haskellStatement guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi haskellConditional guifg={light.operator} guibg=NONE gui=NONE cterm=NONE
  hi haskellLet guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi haskellDefault guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi haskellWhere guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi haskellBottom guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi haskellBlockKeywords guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi haskellImportKeywords guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi haskellDeclKeyword guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi haskellDeriving guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi haskellAssocType guifg={light.normal.cyan} guibg=NONE gui=NONE cterm=NONE
  hi haskellNumber guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi haskellPragma guifg={light.normal.magenta} guibg=NONE gui=NONE cterm=NONE
  hi haskellString guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi haskellChar guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi jsonKeyword guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi jsonQuote guifg={light.normal.green} guibg=NONE gui=NONE cterm=NONE
  hi jsonBraces guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  hi jsonString guifg={dark.normal.black} guibg=NONE gui=NONE cterm=NONE
  if !s:italics
    hi htmlBoldItalic gui=bold cterm=bold
    hi htmlBoldUnderlineItalic gui=bold,underline cterm=bold,underline
    hi htmlUnderlineItalic gui=underline cterm=underline
    hi htmlItalic gui=NONE cterm=NONE
    hi markdownItalic gui=NONE cterm=NONE
  endif
  if !get(g:, 'basic_bold', 1)
    hi htmlTagName gui=NONE cterm=NONE
    hi htmlSpecialTagName gui=NONE cterm=NONE
    hi htmlBold gui=NONE cterm=NONE
    hi htmlBoldUnderline gui=underline cterm=underline
    hi htmlBoldItalic gui=italic cterm=italic
    hi htmlBoldUnderlineItalic gui=underline,italic cterm=underline,italic
    hi docbkKeyword gui=NONE cterm=NONE
    hi vimCommentTitle gui=NONE cterm=NONE
    hi clojureRegexpCharClass gui=NONE cterm=NONE
    hi pythonDottedName gui=NONE cterm=NONE
    hi jsExportDefault gui=NONE cterm=NONE
    hi jsFutureKeys gui=NONE cterm=NONE
    hi markdownH1 gui=NONE cterm=NONE
    hi markdownH2 gui=NONE cterm=NONE
    hi markdownH3 gui=NONE cterm=NONE
    hi markdownH4 gui=NONE cterm=NONE
  endif
endif
unlet s:t_Co s:italics
