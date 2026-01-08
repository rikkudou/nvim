return{
  'akinsho/toggleterm.nvim',
  opts = {

  },
  config = function()
    vim.cmd [[let &shell = '"C:\Program Files\Git\bin\bash.exe"']]
    vim.cmd [[let &shellcmdflag = '-s']]
    
    require("toggleterm").setup{
      open_mapping = '<C-\\>',
      start_in_insert = true,
      direction = 'float',
    }
  end,
}
