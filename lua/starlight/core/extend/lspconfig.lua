local M = {}

---@diagnostic disable-next-line: unused-local
function M.load_transparent_hl(conf, colors)
    if conf.transparent then
        return {}
    end
end

function M.load_global_hl(conf, colors)
    return vim.tbl_deep_extend("force", {
        LspReferenceText = { bg = colors.black4 },
        LspReferenceRead = { bg = colors.black4 },
        LspReferenceWrite = { bg = colors.black4 },

        DiagnosticError = { fg = colors.red, bg = "none" },
        DiagnosticWarn = { fg = colors.yellow, bg = "none" },
        DiagnosticInfo = { fg = colors.blue, bg = "none" },
        DiagnosticHint = { fg = colors.blue, bg = "none" },

        DiagnosticUnderlineError = { underline = true, sp = colors.red },
        DiagnosticUnderlineWarn = { underline = true, sp = colors.yellow },
        DiagnosticUnderlineInfo = { underline = true, sp = colors.blue },
        DiagnosticUnderlineHint = { underline = true, sp = colors.blue },

        LspDiagnosticsDefaultError = { fg = colors.red },
        LspDiagnosticsDefaultWarning = { fg = colors.yellow },
        LspDiagnosticsDefaultInformation = { fg = colors.blue },
        LspDiagnosticsDefaultHint = { fg = colors.blue },
        LspSignatureActiveParameter = { fg = colors.peach },

        LspDiagnosticsError = { fg = colors.red },
        LspDiagnosticsWarning = { fg = colors.yellow },
        LspDiagnosticsInformation = { fg = colors.blue },
        LspDiagnosticsHint = { fg = colors.blue },
        LspDiagnosticsVirtualTextError = { fg = colors.red },
        LspDiagnosticsVirtualTextWarning = { fg = colors.yellow },
        LspDiagnosticsVirtualTextInformation = { fg = colors.blue },
        LspDiagnosticsVirtualTextHint = { fg = colors.blue },
        LspDiagnosticsUnderlineError = { underline = true, sp = colors.red },
        LspDiagnosticsUnderlineWarning = { underline = true, sp = colors.yellow },
        LspDiagnosticsUnderlineInformation = { underline = true, sp = colors.blue },
        LspDiagnosticsUnderlineHint = { underline = true, sp = colors.blue },
        LspCodeLens = { fg = colors.gray0 },

        LspInfoBorder = { fg = colors.blue },
    }, M.load_transparent_hl(conf, colors) or {})
end

return M
