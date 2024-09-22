return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")

    config.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html", "java", "go", "python" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      modules = {},
      ignore_install = {},
      auto_install = true,
    })
  end,
}
