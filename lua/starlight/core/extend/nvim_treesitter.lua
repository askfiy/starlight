local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {

        ["@function"] = vim.tbl_deep_extend("keep", { fg = colors.blue }, conf.style.functions),
        ["@function.call"] = vim.tbl_deep_extend("keep", { fg = colors.blue }, conf.style.functions),
        ["@function.builtin"] = vim.tbl_deep_extend("keep", { fg = colors.blue }, conf.style.functions),
        ["@function.macro"] = vim.tbl_deep_extend("keep", { fg = colors.blue }, conf.style.functions),

        ["@method"] = vim.tbl_deep_extend("keep", { fg = colors.blue, italic = true }, conf.style.functions),
        ["@constructor"] = vim.tbl_deep_extend("keep", { fg = colors.blue }, conf.style.functions),

        ["@constant"] = vim.tbl_deep_extend("keep", { fg = colors.peach }, conf.style.functions),
        ["@constant.builtin"] = vim.tbl_deep_extend("keep", { fg = colors.peach }, conf.style.functions),
        ["@constant.macro"] = vim.tbl_deep_extend("keep", { fg = colors.pink }, conf.style.functions),

        ["@keyword"] = vim.tbl_deep_extend("keep", { fg = colors.red }, conf.style.keywords),
        ["@keyword.function"] = vim.tbl_deep_extend("keep", { fg = colors.red }, conf.style.keywords),
        ["@keyword.operator"] = { fg = colors.maroon },
        ["@keyword.return"] = { fg = colors.maroon },
        ["@repeat"] = { fg = colors.maroon },
        ["@include"] = { fg = colors.red, italic = true },
        ["@conditional"] = { fg = colors.red },

        ["@string"] = vim.tbl_deep_extend("keep", { fg = colors.green }, conf.style.strings),
        ["@string.regex"] = vim.tbl_deep_extend("keep", { fg = colors.peach }, conf.style.strings),
        ["@string.escape"] = vim.tbl_deep_extend("keep", { fg = colors.pink }, conf.style.strings),
        ["@string.special"] = { fg = colors.blue },

        ["@variable"] = vim.tbl_deep_extend("keep", { fg = colors.white }, conf.style.variables),
        ["@variable.builtin"] = vim.tbl_deep_extend("keep", { fg = colors.lavender }, conf.style.variables),

        ["@comment"] = vim.tbl_deep_extend("keep", { fg = colors.gray0 }, conf.style.comments),

        ["@field"] = { fg = colors.rosewater },
        ["@property"] = { fg = colors.yellow, italic = true },
        ["@operator"] = { fg = colors.sky },

        ["@punctuation.delimiter"] = { fg = colors.teal },
        ["@punctuation.bracket"] = { fg = colors.gray1 },
        ["@punctuation.special"] = { fg = colors.maroon },

        ["@number"] = { fg = colors.peach, italic = true },
        ["@boolean"] = { fg = colors.peach, italic = true },
        ["@float"] = { fg = colors.peach, italic = true },

        ["@type"] = { fg = colors.yellow },
        ["@type.builtin"] = { fg = colors.yellow, italic = true },
        ["@type.definition"] = { fg = colors.yellow },
        ["@type.qualifier"] = { fg = colors.yellow },

        ["@parameter"] = { fg = colors.white, italic = true },

        ["@text"] = { fg = colors.white },
        ["@text.note"] = { fg = colors.black2, bg = colors.blue },
        ["@text.warning"] = { fg = colors.black2, bg = colors.yellow },
        ["@text.danger"] = { fg = colors.black2, bg = colors.red },

        ["@text.literal"] = { fg = colors.teal, italic = true },
        ["@text.reference"] = { fg = colors.lavender, bold = true },
        ["@text.title"] = { fg = colors.blue, bold = true },
        ["@text.uri"] = { fg = colors.rosewater, italic = true, underline = true },
        ["@text.emphasis"] = { fg = colors.maroon, italic = true },
        ["@text.strong"] = { fg = colors.maroon, bold = true },
        ["@text.underline"] = {},
        ["@text.todo"] = {},

        ["@exception"] = { fg = colors.red },
        ["@define"] = { fg = colors.mauve },
        ["@macro"] = { fg = colors.mauve },
        ["@character"] = { fg = colors.green },
        ["@character.special"] = { fg = colors.green },

        ["@label"] = { fg = colors.blue },

        ["@storageclass"] = { fg = colors.yellow, bold = true },
        ["@namespace"] = { fg = colors.rosewater, italic = true },
        ["@preproc"] = { fg = colors.mauve },

        ["@tag"] = { fg = colors.peach },
        ["@tag.attribute"] = { fg = colors.mauve, italic = true },
        ["@tag.delimiter"] = { fg = colors.maroon },

        ["@property.toml"] = { fg = colors.blue },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
