return{
  "numToStr/FTerm.nvim",
  config = function()
    require'FTerm'.setup({
      cmd = '"C:\\Program Files\\Git\\bin\\bash.exe"',
      border = 'double',
      dimensions  = {
        height = 1,
        width = 1,
      },
    })

    -- Example keybindings
    vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
    vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
  end,
}
