return {
"olimorris/onedarkpro.nvim",
  priority = 1000, -- Ensure it loads first
  config = function() 
	vim.cmd("colorscheme onedark_dark") 
	require("onedarkpro").setup({
	  colors = {
	    cursorline = "#FF0000" -- This is optional. The default cursorline color is based on the background
	  },
	  options = {
	    cursorline = true,
	    transparency = true,
	  }
	})
  end,
    enabled = false
}
