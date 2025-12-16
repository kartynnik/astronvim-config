---@type LazySpec
local better_escape_mappings = {
  j = {
    j = false,   -- Disable jj
    k = "<Esc>", -- Enable jk
  },
}

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
  },
  {
    "max397574/better-escape.nvim",
    opts = {
      mappings = {
        i = better_escape_mappings,  -- Insert mode
        c = better_escape_mappings,  -- Command mode
        t = better_escape_mappings,  -- Terminal mode
        v = better_escape_mappings,  -- Visual mode
        s = better_escape_mappings,  -- Select mode
      },
    },
  },
}
