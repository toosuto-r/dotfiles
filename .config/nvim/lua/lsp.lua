return {
  { "neovim/nvim-lspconfig" },

  -- Mason core
  { "williamboman/mason.nvim", config = true },

  -- Mason ↔ lspconfig bridge (this is where setup_handlers lives)
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      local lspconfig = require("lspconfig")
      local mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup({
        ensure_installed = { "basedpyright" },
      })

      -- Use handlers to set up all servers
      mason_lspconfig.setup_handlers({
        -- default handler for every server
        function(server)
          lspconfig[server].setup({
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
          })
        end,

        -- optional: override a specific server
        ["basedpyright"] = function()
          lspconfig.basedpyright.setup({
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            settings = {
              python = { analysis = { typeCheckingMode = "standard" } },
            },
          })
        end,
      })
    end,
  },
}
