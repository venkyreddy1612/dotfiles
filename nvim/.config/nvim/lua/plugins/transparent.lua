return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    priority = 1000,
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
