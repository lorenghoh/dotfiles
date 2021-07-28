local opt = vim.opt
local indent = 4

-- Completion options
opt.completeopt = {'menuone', 'noinsert', 'noselect'}
-- Command-line completion mode
opt.wildmode = {'list', 'longest'}

opt.cursorline = true               -- Highlight cursor line
opt.expandtab = true                -- Use spaces instead of tabs
opt.formatoptions = 'crqnj'         -- Automatic formatting options
opt.hidden = true                   -- Enable background buffers
opt.ignorecase = true               -- Ignore case
opt.joinspaces = false              -- No double spaces with join
opt.list = true                     -- Show some invisible characters
opt.number = true                   -- Show line numbers
opt.pumheight = 12                  -- Max height of popup menu
opt.scrolloff = 4                   -- Lines of context
opt.shiftround = true               -- Round indent
opt.shiftwidth = indent             -- Size of an indent
opt.shortmess = 'atToOFc'           -- Prompt message options
opt.sidescrolloff = 8               -- Columns of context
opt.signcolumn = 'yes'              -- Show sign column
opt.smartcase = true                -- Do not ignore case with capitals
opt.smartindent = true              -- Insert indents automatically
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new windows right of current
opt.tabstop = indent                -- Number of spaces tabs count for
opt.termguicolors = true            -- True color support
opt.updatetime = 100                -- Delay before swap file is saved
opt.wrap = true                     -- Disable line wrap
opt.mouse = 'a'                     -- Enable mouse support

opt.clipboard = 'unnamedplus'

-- Mappings
local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('', '<leader>c', '"+y')         -- Copy to clipboard in normal, visual, select and operator modes
map('i', '<C-u>', '<C-g>u<C-u>')    -- Make <C-u> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')    -- Make <C-w> undo-friendly
