return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({
        capabilities = capabilities,
        filetypes = { "python" },
      })
      lspconfig.gopls.setup({ 
        capabilities = capabilities,
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gotmpl" },
        root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
      })
      lspconfig.clangd.setup({ capabilities = capabilities })
    end,
  },
}
