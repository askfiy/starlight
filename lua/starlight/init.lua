---@diagnostic disable: need-check-nil

local core = require("starlight.core")
local utils = require("starlight.utils")
local colors = require("starlight.colors")
local config = require("starlight.config")

local function apply_basic()
    local base_hl_groups = core.get_basic_highlight(config)
    utils.hl.bulk_set_highlight(base_hl_groups)
end

local function apply_extend()
    local extend_hl_groups = core.get_extend_highlight(config)
    utils.hl.bulk_set_highlight(extend_hl_groups)
end

local function apply_transparent()
    ---@diagnostic disable-next-line: need-check-nil
    if config.transparent then
        local transparent_hl_groups = core.get_transparent_highlight(config)
        utils.hl.bulk_set_highlight(transparent_hl_groups)
    end
end

local M = {}

function M.setup(conf)
    vim.opt.background = "dark"
    vim.g.colors_name = "starlight"

    ---@diagnostic disable-next-line: cast-local-type
    config = vim.tbl_deep_extend("keep", config, conf or {})

    vim.cmd("highlight clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    config.hooks.before(utils, colors)
    if config.preset then
        apply_basic()
        apply_extend()
        apply_transparent()
    end
    config.hooks.after(utils, colors)
end

return M
