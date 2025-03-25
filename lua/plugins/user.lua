---@type LazySpec
return {
  "kartynnik/vim-janah",
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
