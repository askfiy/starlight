local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_global_hl(conf, colors)
    return {
        Normal = { fg = colors.white, bg = "none" },
        NormalNC = { fg = colors.white, bg = "none" },
        NormalFloat = { fg = colors.white, bg = "none" },
        SignColumn = { fg = colors.black4, bg = "none" },
    }
end

return M
