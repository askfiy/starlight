local colors = require("starlight.colors")

local starlight = {}

starlight.normal = {
    a = { bg = colors.blue, fg = colors.black1, gui = "bold" },
    b = { bg = colors.black4, fg = colors.blue },
    c = { bg = colors.black1, fg = colors.white },
}

starlight.insert = {
    a = { bg = colors.green, fg = colors.black2, gui = "bold" },
    b = { bg = colors.black4, fg = colors.teal },
}

starlight.command = {
    a = { bg = colors.peach, fg = colors.black2, gui = "bold" },
    b = { bg = colors.black4, fg = colors.peach },
}

starlight.visual = {
    a = { bg = colors.mauve, fg = colors.black2, gui = "bold" },
    b = { bg = colors.black4, fg = colors.mauve },
}

starlight.replace = {
    a = { bg = colors.red, fg = colors.black2, gui = "bold" },
    b = { bg = colors.black4, fg = colors.red },
}

starlight.inactive = {
    a = { bg = colors.black1, fg = colors.blue },
    b = { bg = colors.black1, fg = colors.black4, gui = "bold" },
    c = { bg = colors.black1, fg = colors.gray0 },
}

return starlight
