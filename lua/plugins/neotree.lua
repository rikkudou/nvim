return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added = "", -- or "✚"
            modified = "", -- or ""
            deleted = "", -- this can only be used in the git_status source
            renamed = "", -- this can only be used in the git_status source
            -- Status type
            untracked = "",
            ignored = "",
            unstaged = "",
            staged = "",
            conflict = "",
          },
        },
      }
    },
    window = {
      mappings = {
        ["P"] = {
          "toggle_preview",
          config = {
            use_float = true,
            -- use_image_nvim = true,
            -- use_snacks_image = true,
            -- title = 'Neo-tree Preview',
          },
        },
      }
    }
  }
}
