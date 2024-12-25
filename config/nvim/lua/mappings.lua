require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true})
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Disable mappings
local nomap = vim.keymap.del

nomap("n", "<leader>x")
