local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        markdownHeadingDelimiter = { fg = colors.peach, bold = true },
        markdownCode = { fg = colors.flamingo },
        markdownCodeBlock = { fg = colors.flamingo },
        markdownLinkText = { fg = colors.blue, underline = true },
        markdownH1 = { fg = colors.lavender },
        markdownH2 = { fg = colors.mauve },
        markdownH3 = { fg = colors.green },
        markdownH4 = { fg = colors.yellow },
        markdownH5 = { fg = colors.pink },
        markdownH6 = { fg = colors.teal },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
