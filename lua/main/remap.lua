require "main.vars"
require "main.functions"

key.set("n", "<leader>pv", cmd.Ex)
key.set("i", "jk", "<Esc>")
-- key.set("n", "o", "o <BS>")
-- key.set("i", "<CR>", "<CR> <BS>")

key.set({"n", "v"}, "H", "12h")
key.set({"n", "v"}, "J", "12j")
key.set({"n", "v"}, "K", "12k")
key.set({"n", "v"}, "L", "12l")

key.set("n", "j", "gj")
key.set("n", "k", "gk")
key.set("n", "gj", "j")
key.set("n", "gk", "k")

key.set({"n", "v"}, "-", "_")
key.set({"n", "v"}, "=", "$")
key.set({"n", "v"}, "_", "%")
key.set({"n", "v"}, "U", "<C-r>")
key.set("v", "<BS>", "<Esc>")
key.set("n", "<C-BS>", "J")

key.set("n", "<leader>h", "<C-w>h")
key.set("n", "<leader>j", "<C-w>j")
key.set("n", "<leader>k", "<C-w>k")
key.set("n", "<leader>l", "<C-w>l")

key.set("n", ";", ":")
key.set("v", ";", "<C-[>:")
key.set({"n", "v"}, ":", ";")
key.set("n", "<leader>r", ":source $MYVIMRC<CR>")
key.set("n", "<leader>e", ":Neotree toggle dir="..cmd("pwd").."<CR>")
key.set('n', 'gu', cmd.UndotreeToggle)

key.set('n', '<C-PageDown>', cmd.BufferNext)
key.set('n', '<C-PageUp>', cmd.BufferPrevious)
key.set('n', '<C-S-PageDown>', cmd.BufferMoveNext)
key.set('n', '<C-S-PageUp>', cmd.BufferMovePrevious)
key.set('n', '<leader>x', cmd.BufferClose)
key.set('n', '<leader>X', cmd.BufferRestore)
key.set('n', '<leader>bp', cmd.BufferPin)

key.set('', '<leader>gt', ":TermSelect<CR>")
key.set({'n', 't'}, '<C-\\>', "<cmd>ToggleTerm direction=float<CR>")
key.set({'n', 't'}, '<C-T>', ":TermNew direction=float name=")

key.set({'n', 'v'}, 'ZZ', function() SaveAndExit() end)
key.set({'n', 'v'}, '<C-/>', "gc")
-- key.set({'n', 'v'}, 'gh', vim.lsp.buf.hover)
-- key.set({'n', 'v'}, 'gh', vim.diagnostic.open_float())

api.nvim_set_keymap('n', 'gh', '<cmd>vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
key.set('n', '<leader>cc', ':nohl<CR>')
key.set('n', '<leader>ast', ':AutoSession toggle<CR>')
