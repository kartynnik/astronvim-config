---@type LazySpec
return {
  "kartynnik/vim-janah",
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    event = {
      "BufReadPre " .. vim.fn.expand "~" .. "/Work/Notes/*.md",
      "BufNewFile " .. vim.fn.expand "~" .. "/Work/Notes/*.md",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter",
      "epwalsh/pomo.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "work",
          path = "~/Work/Notes",
        },
      },
    },
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    config = true,
  },
  {
    "kevinhwang91/nvim-ufo",
    enabled = false,
  },
  {
    "windwp/nvim-autopairs",
    enabled = false,
  }
}
