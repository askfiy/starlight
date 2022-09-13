local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        TSException = vim.tbl_deep_extend("keep", { fg = colors.peach }, conf.style.keywords),
        TSFunction = vim.tbl_deep_extend("keep", { fg = colors.blue }, conf.style.functions),
        TSConstBuiltin = vim.tbl_deep_extend("keep", { fg = colors.lavender }, conf.style.keywords),
        TSKeywordFunction = vim.tbl_deep_extend("keep", { fg = colors.maroon }, conf.style.keywords),
        TSKeyword = vim.tbl_deep_extend("keep", { fg = colors.red }, conf.style.keywords),
        TSStringRegex = vim.tbl_deep_extend("keep", { fg = colors.peach }, conf.style.strings),
        TSVariable = vim.tbl_deep_extend("keep", { fg = colors.white }, conf.style.variables),
        TSStringEscape = vim.tbl_deep_extend("keep", { fg = colors.pink }, conf.style.strings),

        TSField = { fg = colors.rosewater },
        TSProperty = { fg = colors.yellow, italic = true },
        TSInclude = { fg = colors.teal, italic = true },
        TSOperator = { fg = colors.sky, bold = true },
        TSKeywordOperator = { fg = colors.sky, bold = true },
        TSPunctSpecial = { fg = colors.maroon, bold = true },

        TSFloat = { fg = colors.peach, bold = true, italic = true },
        TSNumber = { fg = colors.peach, bold = true, italic = true },
        TSBoolean = { fg = colors.peach, bold = true, italic = true },

        TSConstructor = { fg = colors.lavender },
        TSConstant = { fg = colors.peach },
        TSConditional = { fg = colors.mauve, bold = true },
        TSRepeat = { fg = colors.mauve, bold = true },

        TSFuncBuiltin = { fg = colors.peach, italic = true },
        TSTypeBuiltin = { fg = colors.yellow, italic = true },
        TSVariableBuiltin = { fg = colors.teal, italic = true },

        TSFuncMacro = { fg = colors.red },
        TSParameter = { fg = colors.rosewater, italic = true },
        TSKeywordReturn = { fg = colors.pink },

        TSNote = { fg = colors.black2, bg = colors.blue },
        TSWarning = { fg = colors.black2, bg = colors.yellow },
        TSDanger = { fg = colors.black2, bg = colors.red },

        TSLabel = { fg = colors.blue },
        TSMethod = { fg = colors.blue, italic = true },
        TSNamespace = { fg = colors.rosewater, italic = true },

        tomlTSProperty = { fg = colors.blue },
        TSPunctDelimiter = { fg = colors.teal },
        TSPunctBracket = { fg = colors.gray1 },
        TSString = { fg = colors.green },

        TSType = { fg = colors.yellow },
        TSTagAttribute = { fg = colors.mauve, italic = true },
        TSTag = { fg = colors.peach },
        TSTagDelimiter = { fg = colors.maroon },
        TSText = { fg = colors.white },

        TSURI = { fg = colors.rosewater, italic = true, underline = true },
        TSLiteral = { fg = colors.teal, italic = true },
        TSTextReference = { fg = colors.lavender, bold = true },
        TSTitle = { fg = colors.blue, bold = true },
        TSEmphasis = { fg = colors.maroon, italic = true },
        TSStrong = { fg = colors.maroon, bold = true },

        bashTSFuncBuiltin = { fg = colors.red, italic = true },
        bashTSParameter = { fg = colors.yellow, italic = true },

        luaTSField = { fg = colors.lavender },
        luaTSConstructor = { fg = colors.flamingo },

        javaTSConstant = { fg = colors.teal },

        typescriptTSProperty = { fg = colors.lavender, italic = true },

        cssTSType = { fg = colors.lavender },
        cssTSProperty = { fg = colors.yellow, italic = true },

        colorspTSProperty = { fg = colors.white },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
