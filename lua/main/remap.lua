function SaveAndExit()
    vim.api.nvim_command(":wa")
    vim.api.nvim_command(":qa")
end

vim.cmd('highlight Normal guibg=#272727')

if vim.fn.exists(':NeoraySet') > 0 
then
  vim.cmd('NeoraySet Transparency 0.85')
  vim.cmd('NeoraySet WindowState maximized')
  vim.opt.guifont="JetBrainsMono:h13"
else
  vim.opt.guifont="JetBrainsMono NFM:h13"
end

if vim.fn.has "win32" == 1 
then
  vim.g.undotree_DiffCommand = "C:/Program Files/Git/usr/bin/diff.exe" --nvimPath .. '/bin/diff.exe'
end

vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. '/undo'
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

vim.opt.termguicolors=true
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
--vim.opt.signcolumn = "yes"

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
vim.opt.autoindent = true

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")

vim.api.nvim_set_hl(0, 'BufferLineFill', { bg = 'NONE' })

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
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
vim.keymap.set('n', 'gu', vim.cmd.UndotreeToggle)

vim.keymap.set('n', '<C-PageDown>', vim.cmd.BufferNext)
vim.keymap.set('n', '<C-PageUp>', vim.cmd.BufferPrevious)
vim.keymap.set('n', '<C-S-PageDown>', vim.cmd.BufferMoveNext)
vim.keymap.set('n', '<C-S-PageUp>', vim.cmd.BufferMovePrevious)
vim.keymap.set('n', '<leader>x', vim.cmd.BufferClose)
vim.keymap.set('n', '<leader>X', vim.cmd.BufferRestore)
vim.keymap.set('n', '<leader>bp', vim.cmd.BufferPin)

vim.keymap.set('', '<leader>gt', ":TermSelect<CR>")
vim.keymap.set({'n', 't'}, '<C-\\>', "<cmd>ToggleTerm direction=float<CR>")
vim.keymap.set({'n', 't'}, '<leader>T', ":TermNew direction=float name=")

vim.keymap.set({'n', 'v'}, 'ZZ', function() SaveAndExit() end)
vim.keymap.set({'n', 'v'}, '<C-/>', "gc")
-- vim.keymap.set({'n', 'v'}, 'gh', vim.lsp.buf.hover)
-- vim.keymap.set({'n', 'v'}, 'gh', vim.diagnostic.open_float())
function OpenDiagnosticIfNoFloat()
    for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
        if vim.api.nvim_win_get_config(winid).zindex then
            return
        end
    end
    vim.diagnostic.open_float(0, {
        scope = "cursor",
        focusable = false,
        close_events = {"CursorMoved", "CursorMovedI", "BufHidden", "InsertCharPre", "WinLeave"},
    })
end

vim.api.nvim_set_keymap('n', 'gh', '<cmd>vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
