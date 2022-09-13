local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        HopNextKey = { fg = colors.peach, bold = true },
        HopNextKey1 = { fg = colors.blue, bold = true },
        HopNextKey2 = { fg = colors.teal, bold = true, italic = true },
        HopUnmatched = { fg = colors.gray0 },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
