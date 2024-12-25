require "nvchad.options"

local opt = vim.opt

opt.cursorlineopt = "both"
opt.linebreak = true

opt.wrap = true
opt.textwidth = 0
opt.autoindent = true
opt.tabstop = 8 -- keep this default
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.spell = true
opt.spelllang = "en_ca"

-- Show LSP diagnostics in a floating window
-- Courtesy of u/notaresponsibleadult
vim.diagnostic.config({
    virtual_text = false, -- Turn off inline diagnostics
})

-- Show all diagnostics on current line in floating window
vim.api.nvim_set_keymap(
    'n', '<Leader>d', ':lua vim.diagnostic.open_float()<CR>',
    {
        noremap = true,
        silent = true,
        desc = "show diagnostics",
    }
)
-- Go to next diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap(
    'n', '<Leader>dN', ':lua vim.diagnostic.goto_next()<CR>',
    {
        noremap = true,
        silent = true,
        desc = "search next diagnostic"
    }
)
-- Go to prev diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap(
    'n', '<Leader>dn', ':lua vim.diagnostic.goto_prev()<CR>',
    {
        noremap = true,
        silent = true,
        desc = "search prev diagnostic"
    }
)

-- Show NvDash on empty buffer
-- Courtesy of u/siduck
vim.api.nvim_create_autocmd({ "BufEnter", "BufDelete", "FileType" }, {
    callback = function(args)
        if args.event == "FileType" then
            vim.o.showtabline = vim.bo.ft == "nvdash" and 0 or 2
            return
        end

        local buf = args.buf

        if not vim.bo[buf].buflisted then
            return
        end

        vim.schedule(function()
            if #vim.t.bufs == 1 and vim.api.nvim_buf_get_name(buf) == "" then
                vim.cmd "Nvdash"
            end
        end)
    end,
})
