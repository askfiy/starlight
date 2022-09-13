local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        WhichKey = { fg = colors.flamingo },
        WhichKeyGroup = { fg = colors.blue },
        WhichKeyDesc = { fg = colors.pink },
        WhichKeySeperator = { fg = colors.gray0 },
        WhichKeySeparator = { fg = colors.gray0 },
        WhichKeyFloat = { bg = colors.black0 },
        WhichKeyValue = { fg = colors.gray0 },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
