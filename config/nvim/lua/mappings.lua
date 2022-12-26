-- Mappings
local function map(mode, kc_in, kc_out, opts)
    local options = {
        remap = true
    }

    if opts then
        options = vim.tbl_extend('force', options, opts)
    end

    vim.keymap.set(mode, kc_in, kc_out, options)
end


-- Force quit
map('n', '<Leader>z', ':qa!')

-- Write
map('n', '<Leader>w', ':w<CR>')

-- Copy to clipboard in normal, visual, select and operator modes
map('', '<leader>c', '"+y')

-- Make <C-u> undo-friendly
map('i', '<C-u>', '<C-g>u<C-u>')

-- Make <C-w> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')

-- Replace j and k with gj and gk
map('n', '<Down>', 'j', { silent = true })
map('v', '<Down>', 'j', { silent = true })
map('i', '<Down>', '<C-o>j', { silent = true} )
map('n', '<Up>', 'k', { silent = true })
map('v', '<Up>', 'k', { silent = true })
map('i', '<Up>', '<C-o>k', { silent = true} )

local function k_jump (kc)
    if (vim.v.count > 0)
    then
        return kc
    else
        return 'g' .. kc
    end
end

map('n', 'j', function() return k_jump('j') end, { expr = true, silent = true })
map('v', 'j', function() return k_jump('j') end, { expr = true, silent = true })
map('n', 'k', function() return k_jump('k') end, { expr = true, silent = true })
map('v', 'k', function() return k_jump('k') end, { expr = true, silent = true })

-- Packer
map('n', '<Leader>u', ":PackerSync<CR>")

-- Nvim-tree
map('n', '<Leader>t', ":NvimTreeToggle<CR>", { silent = true })

-- Telescope
map('n', '<Leader>ff', ":Telescope find_files<CR>", { silent = true })
map('n', '<Leader>fg', ":Telescope live_grep<CR>", { silent = true })
map('n', '<Leader>fb', ":Telescope buffers<CR>", { silent = true })
map('n', '<Leader>fh', ":Telescope help_tags<CR>", { silent = true })
