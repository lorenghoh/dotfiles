-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local vl = vim.lsp

-- EXAMPLE
local servers = {
	cssls = {},
	html = {},
	fortls = {},
	lua_ls = {},
	ruff = {},
	texlab = {
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
						"--keep-intermediates",
					},
				},
				diagnostics = {
					ignoredPatterns = { "Unused label", "Undefined reference" },
				},
			},
		},
	},
	tinymist = {
		settings = {
			formatterMode = "typstyle",
			exportPdf = "onSave",
			symanticTokens = "enable",
		},
	},
	typos_lsp = {
		filetypes = { "markdown", "latex" },
	},
}

for name, opts in pairs(servers) do
	vl.config(name, opts)
	vl.enable(name)
end
