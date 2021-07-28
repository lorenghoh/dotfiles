local builtin = require 'telescope.builtin'
local actions = require 'telescope.actions'
local previewers = require 'telescope.previewers'

require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ["<c-j>"] = actions.move_selection_next,
                ["<c-k>"] = actions.move_selection_previous,
            }
        },
        file_previewer = previewers.vim_buffer_cat.new,
        grep_previewer = previewers.vim_buffer_vimgrep.new,
        qflist_previewer = previewers.vim_buffer_qflist.new
    }
}

-- Mappings
vim.api.nvim_set_keymap("n", "<Leader>ff", ":Telescope find_files<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<Leader>fg", ":Telescope live_grep<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<Leader>fb", ":Telescope buffers<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<Leader>fh", ":Telescope help_tags()<CR>", {noremap=true, silent=true})
