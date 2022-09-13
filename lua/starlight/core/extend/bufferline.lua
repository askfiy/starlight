local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {

        Directory = { fg = colors.blue, bold = true },

        BufferLineFill = { bg = colors.black0 },

        BufferLineIndicatorSelected = { fg = colors.peach, bg = colors.black2 },
        BufferLineIndicator = { fg = colors.black2, bg = colors.black1 },
        BufferLineIndicatorVisible = { fg = colors.black2, bg = colors.black1 },

        BufferLineSeparatorSelected = { fg = colors.peach, bg = colors.black2 },
        BufferLineSeparator = { fg = colors.black2, bg = colors.black1 },
        BufferLineSeparatorVisible = { fg = colors.black2, bg = colors.black1 },

        BufferLineCloseButtonSelected = { fg = colors.red, bg = colors.black2 },
        BufferLineCloseButton = { fg = colors.black4, bg = colors.black1 },
        BufferLineCloseButtonVisible = { fg = colors.black4, bg = colors.black1 },

        BufferLineModifiedSelected = { fg = colors.green, bg = colors.black2 },
        BufferLineModified = { fg = colors.black4, bg = colors.black1 },
        BufferLineModifiedVisible = { fg = colors.black4, bg = colors.black1 },

        BufferLineNumbersSelected = {
            fg = colors.white,
            bg = colors.black2,
            bold = false,
            italic = false,
        },
        BufferLineNumbers = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },
        BufferLineNumbersVisible = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },

        BufferLinePickSelected = { fg = colors.red, bg = colors.black2, bold = true },
        BufferLinePick = { fg = colors.red, bg = colors.black1, bold = true },
        BufferLinePickVisible = { fg = colors.red, bg = colors.black1, bold = true },

        BufferLineTabSelected = { fg = colors.black1, bg = colors.back1 },
        BufferLineTab = { fg = colors.black4, bg = colors.black1 },
        BufferLineTabClose = { fg = colors.red, bg = colors.black1 },

        BufferlineDuplicateSelected = { fg = colors.white, bg = colors.black2, italic = true },
        BufferlineDuplicate = { fg = colors.black4, bg = colors.black1, italic = true },
        BufferlineDuplicateVisible = {
            fg = colors.black4,
            bg = colors.black1,
            italic = true,
        },

        BufferLineBufferSelected = { fg = colors.white, bg = colors.black2, bold = false, italic = false },
        BufferLineBackground = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },
        BufferLineBufferVisible = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },

        BufferLineHintSelected = { fg = colors.rosewater, bg = colors.black2, bold = false, italic = false },
        BufferLineHint = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },
        BufferLineHintVisible = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },

        BufferLineInfoSelected = { fg = colors.blue, bg = colors.black2, bold = false, italic = false },
        BufferLineInfo = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },
        BufferLineInfoVisible = { fg = colors.black4, bg = colors.black2, bold = false, italic = false },

        BufferLineWarningSelected = { fg = colors.yellow, bg = colors.black2, bold = false, italic = false },
        BufferLineWarning = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },
        BufferLineWarningVisible = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },

        BufferLineErrorSelected = { fg = colors.red, bg = colors.black2, bold = false, italic = false },
        BufferLineError = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },
        BufferLineErrorVisible = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },

        BufferLineHintDiagnosticSelected = {
            fg = colors.rosewater,
            bg = colors.black2,
            bold = false,
            italic = false,
        },
        BufferLineHintDiagnostic = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },
        BufferLineHintDiagnosticVisible = {
            fg = colors.black4,
            bg = colors.black1,
            bold = false,
            italic = false,
        },

        BufferLineInfoDiagnosticSelected = {
            fg = colors.blue,
            bg = colors.black2,
            bold = false,
            italic = false,
        },
        BufferLineInfoDiagnostic = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },
        BufferLineInfoDiagnosticVisible = {
            fg = colors.black4,
            bg = colors.black2,
            bold = false,
            italic = false,
        },

        BufferLineWarningDiagnosticSelected = {
            fg = colors.yellow,
            bg = colors.black2,
            bold = false,
            italic = false,
        },
        BufferLineWarningDiagnostic = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },
        BufferLineWarningDiagnosticVisible = {
            fg = colors.black4,
            bg = colors.black1,
            bold = false,
            italic = false,
        },

        BufferLineErrorDiagnosticSelected = {
            fg = colors.red,
            bg = colors.black2,
            bold = false,
            italic = false,
        },
        BufferLineErrorDiagnostic = { fg = colors.black4, bg = colors.black1, bold = false, italic = false },
        BufferLineErrorDiagnosticVisible = {
            fg = colors.black4,
            bg = colors.black1,
            bold = false,
            italic = false,
        },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
