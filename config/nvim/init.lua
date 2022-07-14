-------------------- HELPERS -------------------------------
local api, cmd, fn, g = vim.api, vim.cmd, vim.fn, vim.g
local opt, wo = vim.opt, vim.wo
local fmt = string.format

local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    api.nvim_set_keymap(mode, lhs, rhs, options)
end

require 'vim_options'
require 'mappings'
require 'plugins'

-- Replace tabline
vim.o.tabline = '%!v:lua.require\'luatab\'.tabline()'
