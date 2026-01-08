return{
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  opts = {},
  config = function()
    require"nvim-web-devicons".setup {
      override_by_extension = {
        ["ts"] = {
          icon = "",
          color = "#008080",
          name = "TypeScript"
        }
      };
    }
  end,
}
