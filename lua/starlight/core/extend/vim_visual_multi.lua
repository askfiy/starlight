local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        VM_Extend_hl = { fg = colors.black2, bg = colors.mauve },
        VM_Cursor_hl = { fg = colors.black2, bg = colors.mauve },
        VM_Mono_hl = { fg = colors.black2, bg = colors.blue },
        VM_insert_hl = { fg = colors.black2, bg = colors.red },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
