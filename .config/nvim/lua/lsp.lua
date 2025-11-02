local lspconfig = vim.lsp.config('basedpyright', {
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "basic",
      },
    },
  },
  on_attach = function(client, bufnr)
    -- your keymaps, etc
  end,
}
)

vim.lsp.enable('basedpyright')
