-- Mappings
local function map(mode, lhs, rhs, opts)
    local options = {
        noremap = true
    }

    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Force quit
map('n', '<Leader>z', ":qa!")

-- Copy to clipboard in normal, visual, select and operator modes
map('', '<leader>c', '"+y')

-- Make <C-u> undo-friendly
map('i', '<C-u>', '<C-g>u<C-u>')

-- Make <C-w> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')

-- Replace j and k with gj and gk
map('n', 'j', [[v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj']], { expr = true })
map('n', 'k', [[v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk']], { expr = true })

-- Map Packer
map('n', '<Leader>u', ":PackerSync<CR>")

-- Map nvim-tree
map('n', '<Leader>t', ":NvimTreeFocus<CR>", { silent = true })

-- Map Telescope
map('n', '<Leader>ff', ":Telescope find_files<CR>", { silent = true})
map('n', '<Leader>fg', ":Telescope live_grep<CR>", { silent = true})
map('n', '<Leader>fb', ":Telescope buffers<CR>", { silent = true})
map('n', '<Leader>fh', ":Telescope help_tags<CR>", { silent = true})
