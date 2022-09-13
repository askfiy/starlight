local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        -- line blame
        GitSignsCurrentLineBlame = { bg = "none" },

        -- line number
        GitSignsAdd = { fg = colors.green, bg = "none" },
        GitSignsChange = { fg = colors.yellow, bg = "none" },
        GitSignsDelete = { fg = colors.red, bg = "none" },

        -- preview hunk floating
        GitSignsAddLn = { fg = colors.green, bg = "none" },
        GitSignsChangeLn = { fg = colors.yellow, bg = "none" },
        GitSignsDeleteLn = { fg = colors.red, bg = "none" },

        -- blame line full floating
        GitSignsAddInline = { fg = colors.green, bg = "none" },
        GitSignsDeleteInline = { fg = colors.yellow, bg = "none" },
        GitSignsChangeInline = { fg = colors.red, bg = "none" },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
