local hl = {}

local function can_iterable(hls)
    local count = 0

    for _, _ in pairs(hls) do
        count = count + 1
    end

    return count > 0
end

function hl.bulk_set_highlight(hls)
    if can_iterable(hls) then
        for name, hl_options in pairs(hls) do
            if not hl_options.link then
                hl.set_highlight(name, hl_options)
            else
                hl.link_highlight(name, hl_options.link)
            end
        end
    end
end

function hl.set_highlight(name, hl_options)
    local ok, _ = pcall(vim.api.nvim_set_hl, 0, name, hl_options)
    assert(ok, string.format("set highlight %s failed", name))
end

function hl.get_highlight(name, style)
    local ok, result = pcall(vim.api.nvim_get_hl_by_name, name, true)
    if not ok then
        vim.notify(string.format("Failed to get highlight: %s", name), "INFO", { title = "highlight" })
        return
    end

    for _, key in pairs({ "foreground", "background", "special" }) do
        if result[key] then
            result[key] = string.format("#%06x", result[key])
        end
    end

    if style then
        if style == "fg" then
            return result["foreground"]
        elseif style == "bg" then
            return result["background"]
        else
            return result[style]
        end
    end

    return result
end

function hl.link_highlight(hl1, hl2)
    vim.cmd(string.format("highlight! link %s %s", hl1, hl2))
end

return hl
