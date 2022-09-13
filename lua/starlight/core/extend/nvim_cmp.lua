local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        PmenuSel = { fg = colors.black0, bg = colors.green, bold = false },
        PmenuThumb = { bg = colors.black4 },

        CmpItemAbbr = { fg = colors.gray2 },
        CmpItemAbbrDeprecated = { fg = colors.gray0, strikethrough = true },
        CmpItemKind = { fg = colors.blue },
        CmpItemMenu = { fg = colors.white },
        CmpItemAbbrMatch = { fg = colors.blue, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = colors.blue },

        CmpItemKindSnippet = { fg = colors.mauve },
        CmpItemKindKeyword = { fg = colors.red },
        CmpItemKindText = { fg = colors.teal },
        CmpItemKindMethod = { fg = colors.blue },
        CmpItemKindConstructor = { fg = colors.blue },
        CmpItemKindFunction = { fg = colors.blue },
        CmpItemKindFolder = { fg = colors.blue },
        CmpItemKindModule = { fg = colors.blue },
        CmpItemKindConstant = { fg = colors.peach },
        CmpItemKindField = { fg = colors.green },
        CmpItemKindProperty = { fg = colors.green },
        CmpItemKindEnum = { fg = colors.green },
        CmpItemKindUnit = { fg = colors.green },
        CmpItemKindClass = { fg = colors.yellow },
        CmpItemKindVariable = { fg = colors.flamingo },
        CmpItemKindFile = { fg = colors.blue },
        CmpItemKindInterface = { fg = colors.yellow },
        CmpItemKindColor = { fg = colors.red },
        CmpItemKindReference = { fg = colors.red },
        CmpItemKindEnumMember = { fg = colors.red },
        CmpItemKindStruct = { fg = colors.blue },
        CmpItemKindValue = { fg = colors.peach },
        CmpItemKindEvent = { fg = colors.blue },
        CmpItemKindOperator = { fg = colors.blue },
        CmpItemKindTypeParameter = { fg = colors.blue },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
