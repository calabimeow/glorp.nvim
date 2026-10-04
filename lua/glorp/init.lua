local bg = "#0d1410"
local bg2 = "#121b16"
local white = "#e8f5ec"
local grey = "#8fa898"
local blue = "#7fe8c4"
local cyan = "#7fdcff"
local green = "#00ff7f"
local green_dark = "#00c766"
local green_soft = "#4dd48e"
local lime = "#b8ff5c"
local yellow = "#ffe066"
local red = "#ff5c8a"
local purple = "#c792ea"

local groups =
{
    Normal = {fg = white, bg = bg},
    Delimiter = {fg = white},
    Special = {fg = green_dark},
    ModeMsg = {fg = blue, bold = true},
    Search = {fg = bg, bg = green},
    IncSearch = {fg = bg, bg = green},
    Directory = {fg = green},
    LineNr = {fg = grey},
    StatusLine = {fg = white, bg = bg2},
    StatusLineNC = {fg = grey, bg = bg2},

    CursorLine = {bg = bg2},
    CursorColumn = {bg = bg2},
    ColorColumn = {bg = bg2},
    SignColumn = {fg = grey, bg = bg},
    CurSearch = {fg = bg, bg = yellow, bold = true},
    MatchParen = {fg = yellow, bold = true, underline = true},
    NonText = {fg = green_dark},
    Visual = {bg = "#1e3a2c"},

    Cursor = {fg = green},
    TermCursor = {fg = green},
    lCursor = {fg = green},
    CursorLineNr = {fg = green, bold = true},

    Function = {fg = blue},
    KeyWord = {fg = green, bold = true},
    Constant = {fg = lime},
    Identifier = {fg = white},
    String = {fg = green_soft},
    Type = {fg = green},
    Label = {fg = green},
    Macro = {fg = purple},
    Operator = {fg = cyan},

    Comment = {fg = green_dark, italic = true},
    Error = {fg = red, bold = true},

    ["@variable.member"] = {fg = white},
    ["@punctuation.bracket"] = {fg = green},
    ["@_parent"] = {fg = green},
    ["@lsp.type.property"] = {fg = green},
    ["@constant.builtin"] = {fg = green},
    ["@function.builtin"] = {fg = blue},
    ["@constant.macro"] = {fg = purple},
    ["@constant.builtin"] = {fg = lime, bold = true},
    ["@function.macro"] = {fg = purple},
    ["@number"] = {fg = lime},
    ["@keyword.import"] = {fg = purple},
    ["@type"] = {fg = green_soft, italic = true},
    ["@type.builtin"] = {fg = green_soft, italic = true},
    ["@type.qualifier"] = {fg = green, bold = true},
    ["@type.definition"] = {fg = green_soft, italic = true},
    ["@punctuation.special"] = {fg = orange},
    ["@variable.parameter"] = {fg = green_soft, italic = true},
    ["@operator"] = {fg = cyan},
    ["@keyword.operator"] = {fg = cyan},
}

for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
end
    
vim.g.colors_name = "glorp"
