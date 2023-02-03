# Starlight

## Overview

`starlight` is a variant of `catppuccin`, It pays more attention to details and strives for excellence.

I wanted my theme to be more manageable, and the integration of various plugins was less cumbersome and easier to manage, so I created it.

## Install and use

Install using `Packer`:

```
use {
    "askfiy/starlight",
    config = function()
        require("starlight").setup()
    end,
}
```

## Default Configuration

Default config:

```
local default_config = {
    preset = true,
    transparent = false,
    style = {
        comments = { italic = true },
        functions = { italic = true },
        keywords = { italic = true },
        strings = { italic = true },
        variables = { italic = true },
    },
    extend = {
        hop = true,
        lazy = true,
        packer = true,
        aerial = true,
        fidget = true,
        null_ls = true,
        nvim_cmp = true,
        gitsigns = true,
        markdown = true,
        which_key = true,
        nvim_tree = true,
        lspconfig = true,
        telescope = true,
        bufferline = true,
        nvim_navic = true,
        nvim_notify = true,
        copilot_vim = true,
        vim_illuminate = true,
        nvim_scrollview = true,
        nvim_treesitter = true,
        nvim_ts_rainbow = true,
        indent_blankline = true,
        vim_visual_multi = true,
    },
    hooks = {
        before = function(utils, colors) end,
        after = function(utils, colors) end,
    },
}
```

## Utils

Import `utils`:

```
local utils = require("starlight.utils")
```

Methods provided:

```
utils.bulk_set_highlight({
    Normal = {fg = "#ffffff", bg = "#000000"},
    Visual = {fg = "#ffffff", bg = "#000000"}
})

utils.set_highlight("Normal", {fg = "#ffffff", bg = "#000000"})

utils.get_highlight("Normal", "fg")

utils.link_highlight("NormalNC", "Normal")
```

## Colors

Import `colors`：

```
local colors = require("starlight.colors")
```

Default colors：

```
local colors = {
    rosewater = "#F5E0DC",
    flamingo = "#F2CDCD",
    mauve = "#DDB6F2",
    pink = "#F5C2E7",
    red = "#F28FAD",
    maroon = "#E8A2AF",
    peach = "#F8BD96",
    yellow = "#FAE3B0",
    green = "#ABE9B3",
    blue = "#96CDFB",
    sky = "#89DCEB",
    teal = "#B5E8E0",
    lavender = "#C9CBFF",
    white = "#D9E0EE",
    gray2 = "#C3BAC6",
    gray1 = "#988BA2",
    gray0 = "#6E6C7E",
    black4 = "#575268",
    black3 = "#302D41",
    black2 = "#1E1E2E",
    black1 = "#1A1826",
    black0 = "#161320",
}
```

## Hooks

Two hook functions are provided in the configuration, which are enabled before and after the color application takes effect:

```
local default_config = {
    ...
    hooks = {
        before = function(utils, colors) end,
        after = function(utils, colors) end,
    },
}
```

## Extension

Extended plugin colors are in the `extend` directory.

[starlight/core/extend](./lua/starlight/core/extend)
