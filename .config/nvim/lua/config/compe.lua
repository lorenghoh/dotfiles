require('compe').setup({
    enabled          = true,
    autocomplete     = true,
    debug            = false,
    min_length       = 1,
    preselect        = 'always',
    throttle_time    = 80,
    source_timeout   = 200,
    resolve_timeout  = 800,
    incomplete_delay = 400,
    max_abbr_width   = 100,
    max_kind_width   = 100,
    max_menu_width   = 100,
    documentation    = true,

    source = {
        path = true,
        buffer = {
            menu = '[B]',
        },
        calc = true,
        neorg = true,
        nvim_lsp = true,
        nvim_lua = {
            filetypes = { 'lua' },
        },
        luasnip = true,
    },
})

-- Mappings
local opts = {noremap = true, silent = true, expr = true}

vim.api.nvim_set_keymap("i", "<CR>", [[compe#confirm('<cr>')]], opts)
vim.api.nvim_set_keymap("i", "<c-c>", [[compe#complete()]], opts)
vim.api.nvim_set_keymap("i", "<c-e>", [[compe#close('<c-e>')]], opts)


-- Enable LSP snippet support 
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    }
}

require('lspconfig').rust_analyzer.setup {
    capabilities = capabilities,
}

-- Use tab to navigate completion menu
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif require("luasnip").expand_or_jumpable() then
        return t "<cmd>lua require'luasnip'.jump(1)<Cr>"
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn["compe#complete"]()
    end
end

_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif require("luasnip").jumpable(-1) then
        return t "<cmd>lua require'luasnip'.jump(-1)<CR>"
    else
        return t "<S-Tab>"
    end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
