return {
  "rmagatti/auto-session",
  lazy = false,

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    close_filetypes_on_save = { "checkhealth", "undotree", "neo-tree" }, -- List of file types to close before saving
    close_unsupported_windows = true,
    auto_restore_last_session = true,
    auto_save = true,
    auto_restore = true,
    auto_create = true,
    -- log_level = 'debug',
    mappings = {
      -- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
      delete_session = { "i", "<C-d>" }, -- mode and key for deleting a session from the picker
      alternate_session = { "i", "<C-s>" }, -- mode and key for swapping to alternate session from the picker
      copy_session = { "i", "<C-y>" }, -- mode and key for copying a session from the picker
    },
  },
  --config = function()
    --vim.cmd("AutoSession enable")
  --end,
  keys = {
   -- Will use Telescope if installed or a vim.ui.select picker otherwise
    { "<leader>io", "<cmd>AutoSession search<CR>", desc = "Session search" },
    { "<leader>pp", ":AutoSession save ", desc = "Save session" },
    { "<leader>wa", "<cmd>AutoSession toggle<CR>", desc = "Toggle autosave" },
  },
  --enabled = false,
}
