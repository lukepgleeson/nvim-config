return {
  {
    "mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          --          "lua_ls",
          "jdtls",
          --          "golangci_lint_ls",
          --          "html",
          --          "bashls",
          --          "cssls",
          --          "dockerls",
          --          "docker_compose_language_service",
          --          "basedpyright",
          --          "tsserver",
          --          "gitlab_ci_ls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.jdtls.setup({
        cmd = {
          "jdtls",
          "--jvm-arg=" .. string.format("-javaagent:%s", vim.fn.expand("$MASON/share/jdtls/lombok.jar")),
        },
      })
      lspconfig.golangci_lint_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.bashls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
      lspconfig.basedpyright.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.gitlab_ci_ls.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
