local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        markdownHeadingDelimiter = { bold = true },
        markdownCode = { fg = colors.flamingo },
        markdownCodeBlock = { fg = colors.flamingo },
        markdownLinkText = { fg = colors.blue, underline = true },
        markdownH1 = { fg = colors.blue, bold = true },
        markdownH2 = { fg = colors.green, bold = true },
        markdownH3 = { fg = colors.sky, bold = true },
        markdownH4 = { fg = colors.yellow, bold = true },
        markdownH5 = { fg = colors.pink, bold = true },
        markdownH6 = { fg = colors.teal, bold = true },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
