-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
    "html",
    "cssls",
    "ruff",
    "fortls",
    "marksman",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    }
end

-- Latex
lspconfig.typos_lsp.setup {
    filetypes = { "markdown", "latex" },
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
}

lspconfig.texlab.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    settings = {
        texlab = {
            build = {
                onSave = true,
                executable = "tectonic",
                args = {
                    "-X",
                    "compile",
                    "%f",
                    "--synctex",
                    "--keep-logs",
                    "--keep-intermediates"
                }
            },
            diagnostics = {
                ignoredPatterns = { "Unused label", "Undefined reference" }
            },
        }
    }
}

-- Typst
lspconfig.tinymist.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    settings = {
        formatterMode = "typstyle",
        exportPdf = "onSave",
        symanticTokens = "enable",
    }
}
