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
opt.infercase = true                -- Smart case-aware completions
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
opt.ignorecase = true               -- Ignore case
opt.smartcase = true                -- Do not ignore case with capitals
opt.smartindent = true              -- Insert indents automatically
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new windows right of current
opt.tabstop = indent                -- Number of spaces tabs count for
opt.termguicolors = true            -- True color support
opt.updatetime = 100                -- Delay before swap file is saved
opt.wrap = true                     -- Enable line wrap
opt.linebreak = true                -- Break by word
opt.mouse = 'a'                     -- Enable mouse support
opt.relativenumber = true           -- Display relative numbers

opt.clipboard = 'unnamedplus'
