local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        NotifyERRORBorder = { fg = colors.red },
        NotifyERRORIcon = { fg = colors.red },
        NotifyERRORTitle = { fg = colors.red, italic = true },
        NotifyWARNBorder = { fg = colors.yellow },
        NotifyWARNIcon = { fg = colors.yellow },
        NotifyWARNTitle = { fg = colors.yellow, italic = true },
        NotifyINFOBorder = { fg = colors.blue },
        NotifyINFOIcon = { fg = colors.blue },
        NotifyINFOTitle = { fg = colors.blue, italic = true },
        NotifyDEBUGBorder = { fg = colors.peach },
        NotifyDEBUGIcon = { fg = colors.peach },
        NotifyDEBUGTitle = { fg = colors.peach, italic = true },
        NotifyTRACEBorder = { fg = colors.rosewater },
        NotifyTRACEIcon = { fg = colors.rosewater },
        NotifyTRACETitle = { fg = colors.rosewater, italic = true },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
