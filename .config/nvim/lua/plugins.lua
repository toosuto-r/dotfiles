return {
  -- LSP Support
  { "neovim/nvim-lspconfig" },

  {
    "jpalardy/vim-slime",
    cmd = { "SlimeConfig", "SlimeSend", "SlimeSend1", "SlimeSend0" }, -- loads on these commands
    keys = {
      { "<leader>rr", "<Plug>SlimeRegionSend", mode = "v", desc = "Send selection to tmux" },
      { "<leader>rl", "<Plug>SlimeLineSend",   mode = "n", desc = "Send line to tmux"      },
      { "<leader>rp", "<Plug>SlimeParagraphSend", mode = "n", desc = "Send paragraph"     },
      { "<leader>rt", "<cmd>SlimeConfig<CR>",  mode = "n", desc = "Choose tmux target"     },
    },
    init = function()
      vim.g.slime_target = "tmux"
      vim.g.slime_dont_ask_default = 1
      vim.g.slime_suggest_default = 1
      vim.g.slime_bracketed_paste = 1
      -- Adjust to your usual target if you like (window.pane)
      vim.g.slime_default_config = { socket_name = "default", target_pane = ":.2" }
    end,
  },
}
