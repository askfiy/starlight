local M = {}

function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {
            NvimTreeNormal = { fg = colors.white, bg = "none" },
            NvimTreeVertSplit = { fg = colors.back0, bg = "none" },
        }
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        NvimTreeFolderName = { fg = colors.blue },
        NvimTreeFolderIcon = { fg = colors.blue },
        NvimTreeNormal = { fg = colors.white, bg = colors.black1 },
        NvimTreeOpenedFolderName = { fg = colors.blue },
        NvimTreeEmptyFolderName = { fg = colors.blue },
        NvimTreeIndentMarker = { fg = colors.gray0 },
        NvimTreeVertSplit = { fg = colors.black2, bg = colors.black2 },
        NvimTreeRootFolder = { fg = colors.pink, bold = true },
        NvimTreeSymlink = { fg = colors.pink },
        NvimTreeStatuslineNc = { fg = colors.black1, bg = colors.black1 },
        NvimTreeGitDirty = { fg = colors.yellow },
        NvimTreeGitNew = { fg = colors.blue },
        NvimTreeGitDeleted = { fg = colors.red },
        NvimTreeSpecialFile = { fg = colors.flamingo },
        NvimTreeImageFile = { fg = colors.white },
        NvimTreeOpenedFile = { fg = colors.pink },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
