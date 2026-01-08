require "main.vars"

cmd('highlight Normal guibg=#272727')
cmd('highlight Visual guibg=#efefef')
cmd('highlight BufferLineFill guibg=NONE')
-- cmd('colorscheme evergarden')
cmd("colorscheme onedark_dark") 

o.cpoptions="I"

o.guifont="IBM-VGA-8x14-NFE:h19"
o.guicursor = "i:hor20"

-- o.shada="'1000,<500,:50"

o.undofile = true
o.undolevels = 1000
o.undoreload = 10000

o.termguicolors=true
g.mapleader = " "
o.number = true
o.relativenumber = true

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

o.linebreak = true
o.showbreak = "┣╸"

o.scrolloff=5
--o.sethistory=500

o.visualbell = true
o.errorbells = false

o.pumheight = 8

o.swapfile = false
o.autoindent = true

if fn.exists(':NeoraySet') > 0 
then
  cmd('NeoraySet Transparency 0.85')
  cmd('NeoraySet WindowState maximized')
end

if fn.has "win32" == 1 
then
  g.undotree_DiffCommand = "C:/Program Files/Git/usr/bin/diff.exe" --nvimPath .. '/bin/diff.exe'
end
