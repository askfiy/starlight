local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        rainbowcol1 = { fg = colors.peach, bg = "none" },
        rainbowcol2 = { fg = colors.mauve, bg = "none" },
        rainbowcol3 = { fg = colors.teal, bg = "none" },
        rainbowcol4 = { fg = colors.peach, bg = "none" },
        rainbowcol5 = { fg = colors.mauve, bg = "none" },
        rainbowcol6 = { fg = colors.teal, bg = "none" },
        rainbowcol7 = { fg = colors.peach, bg = "none" },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
