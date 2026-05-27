return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        extra_groups = {
          "NormalFloat",
          "NvimTreeNormal",
          "NeoTreeNormal",
          "TelescopeNormal",
          "TelescopeBorder",
          "FloatBorder",
        },
      })

      vim.cmd("TransparentEnable")
    end,
  },
}
