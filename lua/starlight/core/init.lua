---@diagnostic disable: undefined-global
local colors = require("starlight.colors")

local M = {
    baisc = "starlight.core.basic",
    transparent = "starlight.core.transparent",
    extend = "starlight.core.extend.%s",
}

function M.get_basic_highlight(conf)
    return require(M.baisc).load_global_hl(conf, colors)
end

function M.get_transparent_highlight(conf)
    return require(M.transparent).load_global_hl(conf, colors)
end

function M.get_extend_highlight(conf)
    local extend = {}

    local enable_extend_table = vim.tbl_filter(function(k)
        return true and conf.extend[k] == true
    end, vim.tbl_keys(conf.extend))

    for _, extend_name in ipairs(enable_extend_table) do
        local ok, extend_module = pcall(require, string.format(M.extend, extend_name))

        if ok then
            ---@diagnostic disable-next-line: cast-local-type
            extend = vim.tbl_extend("keep", extend, extend_module.load_global_hl(conf, colors))
        else
            local err = string.format("extend %s load failed", extend_name)
            vim.api.nvim_echo({ { err, "ErrorMsg" } }, true, {})
        end
    end

    return extend
end

return M
