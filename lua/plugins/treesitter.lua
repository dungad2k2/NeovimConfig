return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "python",
          "go",
          "c",
          "cpp",
          "javascript",
          "typescript",
        },

        highlight = {
          enable = true,
        },

        indent = {
          enable = true,
        },
      })
    end,
  },
}
