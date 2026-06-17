return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "gopls",
        "clangd",
      },
      automatic_enable = false,
    },
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })

      vim.lsp.config("pyright", {
        capabilities = capabilities,
        filetypes = { "python" },
      })

      vim.lsp.config("gopls", {
        capabilities = capabilities,
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gotmpl" },
        root_markers = { "go.mod", ".git" },
      })

      vim.lsp.config("clangd", {
        capabilities = capabilities,
      })

      vim.lsp.enable({
        "lua_ls",
        "pyright",
        "gopls",
        "clangd",
      })
    end,
  },
}
