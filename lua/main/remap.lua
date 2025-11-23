vim.cmd('highlight Normal guibg=#272727')
if vim.fn.exists(':NeoraySet') > 0 then
  vim.cmd('NeoraySet Transparency 0.85')
  vim.cmd('NeoraySet WindowState maximized')
end
vim.opt.guifont="JetBrainsMono NFM:h14"
vim.opt.termguicolors=true
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.linebreak = true
vim.opt.showbreak = "↪"

vim.opt.scrolloff=5
--vim.opt.sethistory=500

vim.opt.visualbell = true
vim.opt.errorbells = false

vim.opt.pumheight = 8

vim.opt.swapfile = false

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set({"n", "v"}, "H", "12h")
vim.keymap.set({"n", "v"}, "J", "12j")
vim.keymap.set({"n", "v"}, "K", "12k")
vim.keymap.set({"n", "v"}, "L", "12l")

vim.keymap.set({"n", "v"}, "-", "_")
vim.keymap.set({"n", "v"}, "=", "$")
vim.keymap.set({"n", "v"}, "_", "%")
vim.keymap.set({"n", "v"}, "U", "<C-r>")

vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

vim.keymap.set("n", ";", ":")
vim.keymap.set("v", ";", "<C-[>:")
vim.keymap.set({"n", "v"}, ":", ";")
vim.keymap.set("n", "<leader>r", ":source $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>")
vim.keymap.set('n', 'gu', vim.cmd.UndotreeToggle)

vim.keymap.set('n', '<C-PageDown>', vim.cmd.BufferNext)
vim.keymap.set('n', '<C-PageUp>', vim.cmd.BufferPrevious)
vim.keymap.set('n', '<C-S-PageDown>', vim.cmd.BufferMoveNext)
vim.keymap.set('n', '<C-S-PageUp>', vim.cmd.BufferMovePrevious)

vim.keymap.set('', '<leader>gt', ":TermSelect<CR>")
vim.keymap.set({'n', 't'}, '<C-\\>', "<cmd>ToggleTerm direction=float<CR>")
