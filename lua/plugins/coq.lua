return{
  "ms-jpq/coq_nvim",
  branch = "coq",
  config = function()
    vim.g.coq_settings = {
      auto_start = 'shut-up',
      display = { preview = true }
    }

    vim.lsp.config('lua_ls', {
      settings = {
        Lua = {
          runtime = {
            version = 'LuaJIT',
          },
          diagnostics = {
            globals = {
              'vim',
              'require',
            },
          },
        },
      },
    })

    require("mason").setup()
    local coq = require("coq")
    require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "jdtls", "dockerls", "elixirls", "ts_ls" },
        automatic_installation = true,

        handlers = {
            function(server_name)
                require("lspconfig")[server_name].setup(
                    coq.lsp_ensure_capabilities({})
                )
            end,

            ["lua_ls"] = function()
                require("lspconfig").lua_ls.setup(
                    coq.lsp_ensure_capabilities({})
                )
            end,
        },
    })
  end,
  enabled = false,
}
