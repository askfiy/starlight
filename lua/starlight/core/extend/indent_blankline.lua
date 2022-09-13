local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        IndentBlanklineChar = { fg = colors.black4 },
        IndentBlanklineContextChar = { fg = colors.blue },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
