local lush = require('lush')
local hsl = lush.hsl

-- Nord Colors
-- ===========
local colors = {
  -- Polar Night
  nord0 = hsl(220, 16, 22), -- #2F3541
  nord1 = hsl(222, 16, 28), -- #3C4353
  nord2 = hsl(220, 17, 32), -- #444D5F
  nord3 = hsl(220, 16, 36), -- #4D576A
  nord3_bright = hsl(220, 17, 46), -- #616F89
  -- Snow Storm
  nord4 = hsl(219, 28, 88), -- #D8DEE9
  nord5 = hsl(233, 22, 92), -- #E5E9F0
  nord6 = hsl(218, 27, 94), -- #ECEFF4
  -- Frost
  nord7 = hsl(191, 25, 44), -- #8FBCBB
  nord8 = hsl(193, 43, 67), -- #87BFCF
  nord9 = hsl(210, 34, 63), -- #81A1C1
  nord10 = hsl(224, 33, 49), -- #5D81AC
  -- Aurora
  nord11 = hsl(354, 42, 56), -- #BE6069
  nord12 = hsl(14, 51, 63), -- #D18771
  nord13 = hsl(40, 71, 73), -- #EBCA89
  nord14 = hsl(101, 27, 43), -- #A4BF8D
  nord15 = hsl(297, 57, 30), -- #B48EAD
}

-- Polar Night
local black_0 = colors.nord0
local black_1 = colors.nord1
local black_2 = colors.nord2
local black_3 = colors.nord3
local black3_bright = colors.nord3_bright

-- Snow Storm
local white_0 = colors.nord4
local white_1 = colors.nord5
local white_2 = colors.nord6

-- Frost
local teal = colors.nord7
local light_blue = colors.nord8
local med_blue = colors.nord9
local dark_blue = colors.nord10

-- Aurora
local red = colors.nord11
local orange = colors.nord12
local yellow = colors.nord13
local green = colors.nord14
local purple = colors.nord15

-- Call lush with our lush-spec.
local theme = lush(function()
  return {
    Normal { bg = white_1, fg = black_3 }, -- normal text
    CursorLine { bg = white_0.da(2) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Visual { bg = dark_blue.sa(10).li(60), fg = white_2 },
    Whitespace { fg = Normal.fg.lighten(50) },
    Comment { Whitespace, gui="italic" },
    LineNr { bg = Normal.bg, fg = Comment.fg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = CursorLine.bg, fg = black_3 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    ColorColumn { CursorLine },
    search_base { bg = orange, fg = black_0 },
    Search       { search_base },
    IncSearch    { bg = red, fg = black_0 },
    VertSplit { bg = Normal.bg, fg = dark_blue },
    MatchParen { fg = purple },
    Pmenu { bg = white_0.darken(5), fg = dark_blue },
    PmenuSel { bg = Pmenu.fg, fg = Pmenu.bg },
    Directory { fg = green },
    DiffAdd { fg = green },
    DiffChange { fg = orange },
    DiffDelete { fg = red },
    DiffText { Normal },
    ErrorMsg { bg = red, fg = black_0 },
    Float { fg = orange },
    Folded { fg = green },
    Boolean { fg = teal },
    Character { fg = red },
    Conditional { fg = dark_blue },
    Constant { fg = green },
    Define { fg = dark_blue },
    Function { fg = teal },
    Identifier { fg = purple },
    Keyword { fg = red },
    Label { Normal },
    NonText { Normal },
    Number { fg = orange },
    Operator { Normal },
    PreProc { fg = dark_blue },
    SignColumn { LineNr },
    Special { fg = green },
    SpecialKey { fg = red },
    Statement { fg = purple },
    StorageClass { fg = orange },
    String { fg = green },
    Tag { fg = purple },
    Title { Normal },
    Todo { Comment },
    Type { fg = orange },
    Underlined { fg = red },

    jsBooleanTrue { fg = orange },
    jsBooleanFalse { fg = orange },
    jsConditional { fg = purple },
    jsDestructuringBlock { fg = purple },
    jsDestructuringPropertyValue { fg = purple },
    jsLabel { fg = purple },
    jsFuncArgs { fg = Normal.fg.da(10) },
    jsFuncBlock { fg = purple },
    jsFunction { fg = orange },
    jsGlobalObjects { fg = orange },
    jsModuleAs { fg = purple },
    jsModuleAsterisk { fg = orange },
    jsExport { fg = purple },
    jsFrom { fg = purple },
    jsImport { fg = purple },
    jsNull { fg = orange },
    jsNumber { fg = orange },
    jsStatement { fg = purple },
    jsVariableDef { fg = dark_blue },

    jsxAttrib { fg = orange },
    jsxComponentName { fg = purple },
    jsxTagName { fg = red },

    rubyAccess { fg = teal },
    rubyConstant { fg = orange },
    rubyControl { fg = purple },
    rubyPseudoVariable { fg = orange },
    rubySymbol { fg = purple },

    erubyBlock { fg = dark_blue },
    erubyDelimiter { fg = Normal.fg },
    erubyExpression { fg = dark_blue },

    htmlArg { fg = orange },
    htmlTag { fg = orange },
    htmlEndTag { fg = orange },
    htmlTagName { fg = red },

    yamlBlockMappingKey { fg = red },
    yamlBool { fg = orange },

    GitGutterAdd { fg = green },
    GitGutterChange { fg = orange },
    GitGutterDelete { fg = red },

    diffRemoved { fg = red.li(20) },
    diffAdded { fg = green.de(40) },
    gitCommitSummary { fg = dark_blue },
  }
end)

return theme

