local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        AerialArrayIcon = { fg = colors.blue },
        AerialBooleanIcon = { fg = colors.blue },
        AerialClassIcon = { fg = colors.blue },
        AerialConstantIcon = { fg = colors.blue },
        AerialConstructorIcon = { fg = colors.blue },
        AerialEnumIcon = { fg = colors.blue },
        AerialEnumMemberIcon = { fg = colors.blue },
        AerialEventIcon = { fg = colors.blue },
        AerialFieldIcon = { fg = colors.blue },
        AerialFileIcon = { fg = colors.blue },
        AerialFunctionIcon = { fg = colors.blue },
        AerialInterfaceIcon = { fg = colors.blue },
        AerialKeyIcon = { fg = colors.blue },
        AerialMethodIcon = { fg = colors.blue },
        AerialModuleIcon = { fg = colors.blue },
        AerialNamespaceIcon = { fg = colors.blue },
        AerialNullIcon = { fg = colors.blue },
        AerialNumberIcon = { fg = colors.blue },
        AerialObjectIcon = { fg = colors.blue },
        AerialOperatorIcon = { fg = colors.blue },
        AerialPackageIcon = { fg = colors.blue },
        AerialPropertyIcon = { fg = colors.blue },
        AerialStringIcon = { fg = colors.blue },
        AerialStructIcon = { fg = colors.blue },
        AerialTypeParameterIcon = { fg = colors.blue },
        AerialVariableIcon = { fg = colors.blue },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
