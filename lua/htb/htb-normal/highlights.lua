local M = {}
local cmd = vim.cmd
local g = vim.g
local o = vim.o
local fn = vim.fn
local utils = require('htb.utils')
local colors

cmd('hi clear')

utils.default_settings()

if fn.exists("syntax_on") then
	cmd('syntax reset')
end

g.colors_name = 'htb'

function M.load_syntax(colors)
	local syntax = {}

	syntax['Normal'] = {fg=colors.base1,bg=utils.termtrans(colors.base03)}
	syntax['FoldColumn'] = {fg=colors.base0,bg=utils.termtrans(colors.base02)}
	syntax['Folded'] = {fg=colors.base0,bg=utils.termtrans(colors.base02),guisp=colors.base03,style='bold'}
	syntax['Terminal'] = syntax['Normal']
	syntax['ToolbarButton'] = {fg=colors.base1,bg=utils.termtrans(colors.base02),style='bold'}
	syntax['ToolbarLine'] = {fg=colors.none,bg=utils.termtrans(colors.base02)}
	syntax['CursorLine'] = {fg=colors.none,bg=utils.termtrans(colors.base02)}
	syntax['LineNr'] = {fg=colors.base00,bg=utils.termtrans(colors.base02)}
	syntax['FloatBorder'] = {fg=colors.base1, bg=colors.none}

    syntax['DiffAdd'] = {fg=colors.green,bg=colors.base02,guisp=colors.green}
    syntax['DiffChange'] = {fg=colors.yellow,bg=colors.base02,guisp=colors.yellow}
    syntax['DiffDelete'] = {fg=colors.red,bg=colors.base02,style='bold'}
    syntax['DiffText'] = {fg=colors.blue,bg=colors.base02,guisp=colors.blue}

    syntax['StatusLine'] = {fg=colors.base0,bg=colors.base02,style='reverse'}
    syntax['StatusLineNC'] = {fg=colors.base01,bg=colors.base02,style='reverse'}
    syntax['TabLine'] = {fg=colors.base01,bg=colors.base02,style='reverse'}
    syntax['TabLineFill'] = {fg=colors.base01,bg=colors.base02,style='reverse'}
    syntax['TabLineSel'] = {fg=colors.base0,bg=colors.base02,style='reverse'}
    syntax['VertSplit'] = {fg=colors.base01}

    syntax['CursorLineNr'] = {fg=colors.base0,bg=colors.base02,style='bold'}
    syntax['LineNr'] = {fg=colors.base00,bg=colors.base02,}
    syntax['NonText'] = {fg=colors.base00,style='bold'}
    syntax['SpecialKey'] = {fg=colors.base00,bg=colors.base02,style='bold'}
    syntax['SpellBad'] = {fg=colors.violet,guisp=colors.violet,style='undercurl'}
    syntax['SpellCap'] = {fg=colors.violet,guisp=colors.violet,style='undercurl'}
    syntax['SpellLocal'] = {fg=colors.yellow,guisp=colors.yellow,style='undercurl'}
    syntax['SpellRare'] = {fg=colors.cyan,guisp=colors.cyan,style='undercurl'}
    syntax['Title'] = {fg=colors.orange,style='bold'}

	syntax['ColorColumn'] = {fg=colors.none,bg=colors.base02}
	syntax['Conceal'] = {fg=colors.blue}
	syntax['CursorColumn'] = {fg=colors.none,bg=colors.base02}
	syntax['Directory'] = {fg=colors.light_blue}
	syntax['EndOfBuffer'] = {fg=colors.none,ctermfg=colors.none,ctermbg=colors.none}
	syntax['ErrorMsg'] = {fg=colors.red,bg=colors.err_bg,style='reverse'}
	syntax['IncSearch'] = {fg=colors.orange,style='standout'}
	syntax['MatchParen'] = {fg=colors.base3,bg=colors.base02,style='bold'}
	syntax['ModeMsg'] = {fg=colors.blue}
	syntax['MoreMsg'] = {fg=colors.blue}
	syntax['Pmenu'] = {fg=colors.base1,bg=colors.base02}
	syntax['PmenuSbar'] = {fg=colors.none,bg=colors.base01}
	syntax['PmenuSel'] = {fg=colors.base2,bg=colors.base00}
	syntax['PmenuThumb'] = {fg=colors.none,bg=colors.base0}
	syntax['Question'] = {fg=colors.cyan,style='bold'}
	syntax['Search'] = {fg=colors.yellow,style='reverse'}
	syntax['SignColumn'] = {fg=colors.base0}
	syntax['Visual'] = {fg=colors.base01,bg=colors.base03,style='reverse'}
	syntax['VisualNOS'] = {fg=colors.none,bg=colors.base02,style='reverse'}
	syntax['WarningMsg'] = {fg=colors.orange,style='bold'}
	syntax['WildMenu'] = {fg=colors.base2,bg=colors.base02,style='reverse'}
	syntax['Comment'] = {fg=colors.base01,style=utils.italics()}
	syntax['Constant'] = {fg=colors.cyan}
	syntax['CursorIM'] = {fg=colors.none,bg=colors.base1}
	syntax['Error'] = {fg=colors.red,bg=colors.err_bg,style='bold,reverse'}
	syntax['Identifier'] = {fg=colors.blue}
	syntax['Ignore'] = {fg=colors.none,ctermfg=colors.none,ctermbg=colors.none}
	syntax['PreProc'] = {fg=colors.orange}
	syntax['Special'] = {fg=colors.orange}
	syntax['Statement'] = {fg=colors.green}
	syntax['Todo'] = {fg=colors.magenta,style='bold'}
	syntax['Type'] = {fg=colors.yellow}
	syntax['Underlined'] = {fg=colors.violet}
	syntax['NormalMode'] = {fg=colors.base0,bg=colors.base3,style='reverse'}
	syntax['InsertMode'] = {fg=colors.cyan,bg=colors.base3,style='reverse'}
	syntax['ReplaceMode'] = {fg=colors.orange,bg=colors.base3,style='reverse'}
	syntax['VisualMode'] = {fg=colors.magenta,bg=colors.base3,style='reverse'}
	syntax['CommandMode'] = {fg=colors.magenta,bg=colors.base3,style='reverse'}
	syntax['vimCommentString'] = {fg=colors.violet}
	syntax['vimCommand'] = {fg=colors.yellow}
	syntax['vimCmdSep'] = {fg=colors.blue,style='bold'}
	syntax['helpExample'] = {fg=colors.base1}
	syntax['helpOption'] = {fg=colors.cyan}
	syntax['helpNote'] = {fg=colors.magenta}
	syntax['helpVim'] = {fg=colors.magenta}
	syntax['helpHyperTextJump'] = {fg=colors.blue}
	syntax['helpHyperTextEntry'] = {fg=colors.green}
	syntax['vimIsCommand'] = {fg=colors.base00}
	syntax['vimSynMtchOpt'] = {fg=colors.yellow}
	syntax['vimSynType'] = {fg=colors.cyan}
	syntax['vimHiLink'] = {fg=colors.blue}
	syntax['vimHiGroup'] = {fg=colors.blue}
	syntax['vimGroup'] = {fg=colors.blue,style='bold'}
	syntax['gitcommitComment'] = {fg=colors.base01,style=utils.italics()}
	syntax['gitcommitUnmerged'] = {fg=colors.green,style='bold'}
	syntax['gitcommitOnBranch'] = {fg=colors.base01,style='bold'}
	syntax['gitcommitBranch'] = {fg=colors.magenta,style='bold'}
	syntax['gitcommitdiscardedtype'] = {fg=colors.red}
	syntax['gitcommitselectedtype'] = {fg=colors.green}
	syntax['gitcommitHeader'] = {fg=colors.base01}
	syntax['gitcommitUntrackedFile'] = {fg=colors.cyan,style='bold'}
	syntax['gitcommitDiscardedFile'] = {fg=colors.red,style='bold'}
	syntax['gitcommitSelectedFile'] = {fg=colors.green,style='bold'}
	syntax['gitcommitUnmergedFile'] = {fg=colors.yellow,style='bold'}
	syntax['gitcommitFile'] = {fg=colors.base0,style='bold'}
	syntax['htmlTag'] = {fg=colors.base01}
	syntax['htmlEndTag'] = {fg=colors.base01}
	syntax['htmlTagN'] = {fg=colors.base1,style='bold'}
	syntax['htmlTagName'] = {fg=colors.blue,style='bold'}
	syntax['htmlSpecialTagName'] = {fg=colors.blue,style=utils.italics()}
	syntax['htmlArg'] = {fg=colors.base00}
	syntax['javaScript'] = {fg=colors.yellow}
	syntax['perlHereDoc'] = {fg=colors.base1}
	syntax['perlVarPlain'] = {fg=colors.yellow}
	syntax['perlStatementFileDesc'] = {fg=colors.cyan}
	syntax['texstatement'] = {fg=colors.cyan}
	syntax['texmathzonex'] = {fg=colors.yellow}
	syntax['texmathmatcher'] = {fg=colors.yellow}
	syntax['texreflabel'] = {fg=colors.yellow}
	syntax['rubyDefine'] = {fg=colors.base1,style='bold'}
	syntax['rubyBoolean'] = {fg=colors.magenta}
	syntax['cPreCondit'] = {fg=colors.orange}
	syntax['VarId'] = {fg=colors.blue}
	syntax['ConId'] = {fg=colors.yellow}
	syntax['hsImport'] = {fg=colors.magenta}
	syntax['hsString'] = {fg=colors.base00}
	syntax['hsStructure'] = {fg=colors.cyan}
	syntax['hs_hlFunctionName'] = {fg=colors.blue}
	syntax['hsStatement'] = {fg=colors.cyan}
	syntax['hsImportLabel'] = {fg=colors.cyan}
	syntax['hs_OpFunctionName'] = {fg=colors.yellow}
	syntax['hs_DeclareFunction'] = {fg=colors.orange}
	syntax['hsVarSym'] = {fg=colors.cyan}
	syntax['hsType'] = {fg=colors.yellow}
	syntax['hsTypedef'] = {fg=colors.cyan}
	syntax['hsModuleName'] = {fg=colors.green}
	syntax['pandocTitleBlock'] = {fg=colors.blue}
	syntax['pandocTitleBlockTitle'] = {fg=colors.blue,style='bold'}
	syntax['pandocTitleComment'] = {fg=colors.blue,style='bold'}
	syntax['pandocComment'] = {fg=colors.base01,style=utils.italics()}
	syntax['pandocVerbatimBlock'] = {fg=colors.yellow}
	syntax['pandocBlockQuote'] = {fg=colors.blue}
	syntax['pandocBlockQuoteLeader1'] = {fg=colors.blue}
	syntax['pandocBlockQuoteLeader2'] = {fg=colors.cyan}
	syntax['pandocBlockQuoteLeader3'] = {fg=colors.yellow}
	syntax['pandocBlockQuoteLeader4'] = {fg=colors.red}
	syntax['pandocBlockQuoteLeader5'] = {fg=colors.base0}
	syntax['pandocBlockQuoteLeader6'] = {fg=colors.base01}
	syntax['pandocListMarker'] = {fg=colors.magenta}
	syntax['pandocListReference'] = {fg=colors.magenta}
	syntax['pandocDefinitionBlock'] = {fg=colors.violet}
	syntax['pandocDefinitionTerm'] = {fg=colors.violet,style='standout'}
	syntax['pandocDefinitionIndctr'] = {fg=colors.violet,style='bold'}
	syntax['pandocEmphasisDefinition'] = {fg=colors.violet,style=utils.italics()}
	syntax['pandocEmphasisNestedDefinition'] = {fg=colors.violet,style='bold'}
	syntax['pandocStrongEmphasisDefinition'] = {fg=colors.violet,style='bold'}
	syntax['pandocStrongEmphasisNestedDefinition'] = {fg=colors.violet,style='bold'}
	syntax['pandocStrongEmphasisEmphasisDefinition'] = {fg=colors.violet,style='bold'}
	syntax['pandocStrikeoutDefinition'] = {fg=colors.violet,style='reverse'}
	syntax['pandocVerbatimInlineDefinition'] = {fg=colors.violet}
	syntax['pandocSuperscriptDefinition'] = {fg=colors.violet}
	syntax['pandocSubscriptDefinition'] = {fg=colors.violet}
	syntax['pandocTable'] = {fg=colors.blue}
	syntax['pandocTableStructure'] = {fg=colors.blue}
	syntax['pandocTableZebraLight'] = {fg=colors.blue,bg=colors.base03}
	syntax['pandocTableZebraDark'] = {fg=colors.blue,bg=colors.base02}
	syntax['pandocEmphasisTable'] = {fg=colors.blue,style=utils.italics()}
	syntax['pandocEmphasisNestedTable'] = {fg=colors.blue,style='bold'}
	syntax['pandocStrongEmphasisTable'] = {fg=colors.blue,style='bold'}
	syntax['pandocStrongEmphasisNestedTable'] = {fg=colors.blue,style='bold'}
	syntax['pandocStrongEmphasisEmphasisTable'] = {fg=colors.blue,style='bold'}
	syntax['pandocStrikeoutTable'] = {fg=colors.blue,style='reverse'}
	syntax['pandocVerbatimInlineTable'] = {fg=colors.blue}
	syntax['pandocSuperscriptTable'] = {fg=colors.blue}
	syntax['pandocSubscriptTable'] = {fg=colors.blue}
	syntax['pandocHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocHeadingMarker'] = {fg=colors.orange,style='bold'}
	syntax['pandocEmphasisHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocEmphasisNestedHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocStrongEmphasisHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocStrongEmphasisNestedHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocStrongEmphasisEmphasisHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocStrikeoutHeading'] = {fg=colors.orange,style='reverse'}
	syntax['pandocVerbatimInlineHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocSuperscriptHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocSubscriptHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocLinkDelim'] = {fg=colors.base01}
	syntax['pandocLinkLabel'] = {fg=colors.blue}
	syntax['pandocLinkText'] = {fg=colors.blue}
	syntax['pandocLinkURL'] = {fg=colors.base00}
	syntax['pandocLinkTitle'] = {fg=colors.base00}
	syntax['pandocLinkTitleDelim'] = {fg=colors.base01,guisp=colors.base00}
	syntax['pandocLinkDefinition'] = {fg=colors.cyan,guisp=colors.base00}
	syntax['pandocLinkDefinitionID'] = {fg=colors.blue,style='bold'}
	syntax['pandocImageCaption'] = {fg=colors.violet,style='bold'}
	syntax['pandocFootnoteLink'] = {fg=colors.green}
	syntax['pandocFootnoteDefLink'] = {fg=colors.green,style='bold'}
	syntax['pandocFootnoteInline'] = {fg=colors.green,style='bold'}
	syntax['pandocFootnote'] = {fg=colors.green}
	syntax['pandocCitationDelim'] = {fg=colors.magenta}
	syntax['pandocCitation'] = {fg=colors.magenta}
	syntax['pandocCitationID'] = {fg=colors.magenta}
	syntax['pandocCitationRef'] = {fg=colors.magenta}
	syntax['pandocStyleDelim'] = {fg=colors.base01}
	syntax['pandocEmphasis'] = {fg=colors.base0,style=utils.italics()}
	syntax['pandocEmphasisNested'] = {fg=colors.base0,style='bold'}
	syntax['pandocStrongEmphasis'] = {fg=colors.base0,style='bold'}
	syntax['pandocStrongEmphasisNested'] = {fg=colors.base0,style='bold'}
	syntax['pandocStrongEmphasisEmphasis'] = {fg=colors.base0,style='bold'}
	syntax['pandocStrikeout'] = {fg=colors.base01,style='reverse'}
	syntax['pandocVerbatimInline'] = {fg=colors.yellow}
	syntax['pandocSuperscript'] = {fg=colors.violet}
	syntax['pandocSubscript'] = {fg=colors.violet}
	syntax['pandocRule'] = {fg=colors.blue,style='bold'}
	syntax['pandocRuleLine'] = {fg=colors.blue,style='bold'}
	syntax['pandocEscapePair'] = {fg=colors.red,style='bold'}
	syntax['pandocCitationRef'] = {fg=colors.magenta}
	syntax['pandocNonBreakingSpace'] = {fg=colors.red,style='reverse'}
	syntax['pandocMetadataDelim'] = {fg=colors.base01}
	syntax['pandocMetadata'] = {fg=colors.blue}
	syntax['pandocMetadataKey'] = {fg=colors.blue}
	syntax['pandocMetadata'] = {fg=colors.blue,style='bold'}

	syntax['Boolean'] = syntax['Constant']
	syntax['Character'] = syntax['Constant']
	syntax['Conditional'] = syntax['Statement']
	syntax['Debug'] = syntax['Special']
	syntax['Define'] = syntax['PreProc']
	syntax['Delimiter'] = syntax['Special']
	syntax['Exception'] = syntax['Statement']
	syntax['Float'] = syntax['Constant']
	syntax['Function'] = syntax['Identifier']
	syntax['Include'] = syntax['PreProc']
	syntax['Keyword'] = syntax['Statement']
	syntax['Label'] = syntax['Statement']
	syntax['Macro'] = syntax['PreProc']
	syntax['Number'] = syntax['Constant']
	syntax['Operator'] = syntax['Statement']
	syntax['PreCondit'] = syntax['PreProc']
	syntax['QuickFixLine'] = syntax['Search']
	syntax['Repeat'] = syntax['Statement']
	syntax['SpecialChar'] = syntax['Special']
	syntax['SpecialComment'] = syntax['Special']
	syntax['StatusLineTerm'] = syntax['StatusLine']
	syntax['StatusLineTermNC'] = syntax['StatusLineNC']
	syntax['StorageClass'] = syntax['Type']
	syntax['String'] = syntax['Constant']
	syntax['Structure'] = syntax['Type']
	syntax['Tag'] = syntax['Special']
	syntax['Typedef'] = syntax['Type']
	syntax['lCursor'] = syntax['Cursor']
	syntax['vimVar'] = syntax['Identifier']
	syntax['vimFunc'] = syntax['Function']
	syntax['vimUserFunc'] = syntax['Function']
	syntax['helpSpecial'] = syntax['Special']
	syntax['vimSet'] = syntax['Normal']
	syntax['vimSetEqual'] = syntax['Normal']
	syntax['diffAdded'] = syntax['Statement']
	syntax['diffLine'] = syntax['Identifier']
	syntax['gitcommitUntracked'] = syntax['gitcommitComment']
	syntax['gitcommitDiscarded'] = syntax['gitcommitComment']
	syntax['gitcommitSelected'] = syntax['gitcommitComment']
	syntax['gitcommitNoBranch'] = syntax['gitcommitBranch']
	syntax['gitcommitDiscardedArrow'] = syntax['gitcommitDiscardedFile']
	syntax['gitcommitSelectedArrow'] = syntax['gitcommitSelectedFile']
	syntax['gitcommitUnmergedArrow'] = syntax['gitcommitUnmergedFile']
	syntax['jsFuncCall'] = syntax['Function']
	syntax['rubySymbol'] = syntax['String']
	syntax['hsImportParams'] = syntax['Delimiter']
	syntax['hsDelimTypeExport'] = syntax['Delimiter']
	syntax['hsModuleStartLabel'] = syntax['hsStructure']
	syntax['hsModuleWhereLabel'] = syntax['hsModuleStartLabel']
	syntax['pandocVerbatimBlockDeep'] = syntax['pandocVerbatimBlock']
	syntax['pandocCodeBlock'] = syntax['pandocVerbatimBlock']
	syntax['pandocCodeBlockDelim'] = syntax['pandocVerbatimBlock']
	syntax['pandocTableStructureTop'] = syntax['pandocTableStructre']
	syntax['pandocTableStructureEnd'] = syntax['pandocTableStructre']
	syntax['pandocEscapedCharacter'] = syntax['pandocEscapePair']
	syntax['pandocLineBreak'] = syntax['pandocEscapePair']
	syntax['pandocMetadataTitle'] = syntax['pandocMetadata']

	-- TreeSitter
    syntax['TSComment'] = {fg = colors.gray, bg = colors.none, style = utils.italics()} -- For comment blocks.
    syntax['TSConditional'] = {fg = colors.light_blue, style = utils.italics()} -- For keywords related to conditionnals.
    syntax['TSKeyword'] = {fg = colors.diff_red, style = utils.italics()} -- For keywords that don't fall in previous categories.
    syntax['TSAnnotation'] = {fg = colors.orange} -- For C++/Dart attributes annotations that can be attached to the code to denote some kind of meta information.
    syntax['TSRepeat'] = {fg = colors.violet, style = utils.italics()} -- For keywords related to loops.
    syntax['TSAttribute'] = {fg = colors.cyan} -- (unstable) TODO: docs
    syntax['TSKeywordFunction'] = {fg = colors.diff_red, style = utils.italics()} -- For keywords used to define a fuction.
    syntax['TSCharacter'] = {fg = colors.orange} -- For characters.
    syntax['TSBoolean'] = {fg = colors.orange, bg = colors.none, style = utils.italics()} -- true or false
    syntax['TSFunction'] = {fg = colors.diff_yellow, style = utils.italics()} -- For fuction (calls and definitions).
    syntax['TSMethod'] = {fg = colors.diff_yellow, style = utils.italics()} -- For method calls and definitions.
    syntax['TSConstructor'] = {fg = colors.diff_yellow} -- For constructor calls and definitions: `= { }` in Lua and Java constructors.
    syntax['TSFuncBuiltin'] = {fg = colors.diff_yellow, style = utils.italics()} -- For builtin functions: `table.insert` in Lua.
    syntax['TSConstant'] = {fg = colors.fg} -- For constants
    syntax['TSVariable'] = {fg = colors.fg, style = utils.italics()} -- Any variable name that does not have another highlight.
    syntax['TSVariableBuiltin'] = {fg = colors.diff_red, style = utils.italics()} -- Variable names that are defined by the languages, like `this` or `self`.        TSConstBuiltin = {fg = orange} -- For constant that are built in the language: `nil` in Lua.
    syntax['TSConstMacro'] = {fg = colors.cyan} -- For constants that are defined by macros: `NULL` in colors.
    syntax['TSError'] = {fg = colors.red} -- For syntax/parser errors.
    syntax['TSException'] = {fg = colors.violet} -- For exception related keywords.
    syntax['TSField'] = {fg = colors.fg} -- For fields.
    syntax['TSFloat'] = {fg = colors.red} -- For floats.
    syntax['TSFuncMacro'] = {fg = colors.orange} -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    syntax['TSInclude'] = {fg = colors.violet} -- For includes: `#include` in C, `use` or `extern crate` in Rust or `require` in Lua.
    syntax['TSLabel'] = {fg = colors.cyan} -- For labels: `label:` in C and `:label:` in Lua.
    syntax['TSNamespace'] = {fg = colors.cyan} -- For identifiers referring to modules and namespaces.
    syntax['TSNumber'] = {fg = colors.light_blue} -- For all numbers
    syntax['TSOperator'] = {fg = colors.diff_red} -- For any operator: `+` but also `->` and `*` in colors.
    syntax['TSParameter'] = {fg = colors.light_blue} -- For parameters of a function.
    syntax['TSParameterReference'] = {fg = colors.diff_yellow} -- For references to parameters of a function.
    syntax['TSProperty'] = {fg = colors.violet} -- Same as `TSField`.
    syntax['TSPunctDelimiter'] = {fg = colors.cyan} -- For delimiters ie: `.`
    syntax['TSPunctBracket'] = {fg = colors.cyan} -- For brackets and parens.
    syntax['TSPunctSpecial'] = {fg = colors.yellow} -- For special punctutation that does not fall in the catagories before.
    syntax['TSString'] = {fg = colors.diff_green} -- For strings.
    syntax['TSStringRegex'] = {fg = colors.blue} -- For regexes.
    syntax['TSStringEscape'] = {fg = colors.orange} -- For escape characters within a string.
    syntax['TSSymbol'] = {fg = colors.orange} -- For identifiers referring to symbols or atoms.
    syntax['TSType'] = {fg = colors.orange} -- For types.
    syntax['TSTypeBuiltin'] = {fg = colors.cyan} -- For builtin types.
    syntax['TSTag'] = {fg = colors.blue} -- Tags like html tag names.
    syntax['TSTagDelimiter'] = {fg = colors.blue} -- Tag delimiter like `<` `>` `/`
    syntax['TSText'] = {fg = colors.violet} -- For strings considered text in a markup language.
    syntax['TSTextReference'] = {fg = colors.orange} -- FIXME
    syntax['TSEmphasis'] = {fg = colors.violet} -- For text to be represented with emphasis.
    syntax['TSUnderline'] = {fg = colors.diff_green, bg = colors.none, style = "underline"} -- For text to be represented with an underline.
    syntax['TSTitle'] = {fg = colors.fg, bg = colors.none, style = "bold"} -- Text that is part of a title.
    syntax['TSLiteral'] = {fg = colors.fg} -- Literal text.
    syntax['TSURI'] = {fg = colors.diff_green} -- Any URL like a link or email.

	syntax['DiagnosticError'] = {fg=colors.red,guisp=colors.red,style='none'}
	syntax['DiagnosticWarning'] = {fg=colors.yellow,guisp=colors.yellow,style='none'}
	syntax['DiagnosticInformation'] = {fg=colors.cyan,guisp=colors.cyan,style='none'}
	syntax['DiagnosticHint'] = {fg=colors.green,guisp=colors.green,style='none'}
	syntax['DiagnosticUnderlineError'] = {fg=colors.none,guisp=colors.red,style='underline'}
	syntax['DiagnosticUnderlineWarning'] = {fg=colors.none,guisp=colors.yellow,style='underline'}
	syntax['DiagnosticUnderlineInformation'] = {fg=colors.none,guisp=colors.cyan,style='underline'}
	syntax['DiagnosticUnderlineHint'] = {fg=colors.none,guisp=colors.green,style='underline'}

	syntax['LspReferenceRead'] = {fg=colors.none,style='underline'}
	syntax['LspReferenceText'] = syntax['LspReferenceRead']
	syntax['LspReferenceWrite'] = {fg=colors.none,style='underline,bold'}

	-- Lspsaga
	syntax['LspSagaFinderSelection'] = syntax['Search']
	syntax['TargetWord'] = syntax['Title']

	syntax['GitSignsAdd'] = syntax['DiffAdd']
	syntax['GitSignsChange'] = syntax['DiffChange']
	syntax['GitSignsDelete'] = syntax['DiffDelete']

	syntax['VGitSignAdd'] = syntax['DiffAdd']
	syntax['VgitSignChange'] = syntax['DiffChange']
	syntax['VGitSignRemove'] = syntax['DiffDelete']

	-- nvim-cmp syntax support
	syntax['CmpDocumentation' ] = {fg=colors.base2, bg=colors.base02 }
	syntax['CmpDocumentationBorder' ] = {fg=colors.base2, bg=colors.base02 }

	syntax['CmpItemAbbr' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemAbbrDeprecated' ] = {fg=colors.base0, bg=colors.none }
	syntax['CmpItemAbbrMatch' ] = {fg=colors.light_blue, bg=colors.none }
	syntax['CmpItemAbbrMatchFuzzy' ] = {fg=colors.light_blue, bg=colors.none }

	syntax['CmpItemKindDefault' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemMenu' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindKeyword' ] = {fg=colors.yellow, bg=colors.none }
	syntax['CmpItemKindVariable' ] = {fg=colors.diff_green, bg=colors.none }
	syntax['CmpItemKindConstant' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindReference' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindValue' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindFunction' ] = {fg=colors.light_blue, bg=colors.none }
	syntax['CmpItemKindMethod' ] = {fg=colors.light_blue, bg=colors.none }
	syntax['CmpItemKindConstructor' ] = {fg=colors.light_blue, bg=colors.none }
	syntax['CmpItemKindClass' ] = {fg=colors.diff_red, bg=colors.none }
	syntax['CmpItemKindInterface' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindStruct' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindEvent' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindEnum' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindUnit' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindModule' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindProperty' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindField' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindTypeParameter' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindEnumMember' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindOperator' ] = {fg=colors.base1, bg=colors.none }
	syntax['CmpItemKindSnippet' ] = {fg=colors.orange, bg=colors.none }

	for group, highlights in pairs(syntax) do
		utils.highlighter(group, highlights)
	end
end

function M.terminal_colors(colors)
	g.terminal_color_0 = colors.base02[1]
	g.terminal_color_1 = colors.red[1]
	g.terminal_color_2 = colors.green[1]
	g.terminal_color_3 = colors.yellow[1]
	g.terminal_color_4 = colors.blue[1]
	g.terminal_color_5 = colors.violet[1]
	g.terminal_color_6 = colors.cyan[1]
	g.terminal_color_7 = colors.base2[1]
	g.terminal_color_8 = colors.base03[1]
	g.terminal_color_9 = colors.orange[1]
	g.terminal_color_10 = colors.base01[1]
	g.terminal_color_11 = colors.base00[1]
	g.terminal_color_12 = colors.base0[1]
	g.terminal_color_13 = colors.violet[1]
	g.terminal_color_14 = colors.base1[1]
	g.terminal_color_15 = colors.base3[1]
end

return M
