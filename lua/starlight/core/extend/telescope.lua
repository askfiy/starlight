local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        TelescopeBorder = { fg = colors.blue },
        TelescopeSelectionCaret = { fg = colors.flamingo },
        TelescopeSelection = { fg = colors.white, bg = colors.black3, bold = true },
        TelescopeMatching = { fg = colors.blue },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
