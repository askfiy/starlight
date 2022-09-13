local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        NavicIconsFile = { fg = colors.blue },
        NavicIconsModule = { fg = colors.blue },
        NavicIconsNamespace = { fg = colors.blue },
        NavicIconsPackage = { fg = colors.blue },
        NavicIconsClass = { fg = colors.blue },
        NavicIconsMethod = { fg = colors.blue },
        NavicIconsProperty = { fg = colors.blue },
        NavicIconsField = { fg = colors.blue },
        NavicIconsConstructor = { fg = colors.blue },
        NavicIconsEnum = { fg = colors.blue },
        NavicIconsInterface = { fg = colors.blue },
        NavicIconsFunction = { fg = colors.blue },
        NavicIconsVariable = { fg = colors.blue },
        NavicIconsConstant = { fg = colors.blue },
        NavicIconsString = { fg = colors.blue },
        NavicIconsNumber = { fg = colors.blue },
        NavicIconsBoolean = { fg = colors.blue },
        NavicIconsArray = { fg = colors.blue },
        NavicIconsObject = { fg = colors.blue },
        NavicIconsKey = { fg = colors.blue },
        NavicIconsNull = { fg = colors.blue },
        NavicIconsEnumMember = { fg = colors.blue },
        NavicIconsStruct = { fg = colors.blue },
        NavicIconsEvent = { fg = colors.blue },
        NavicIconsOperator = { fg = colors.blue },
        NavicIconsTypeParameter = { fg = colors.blue },
        NavicText = { fg = colors.white },
        NavicSeparator = { fg = colors.white },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
