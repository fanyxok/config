-- In order to modify the `lspconfig` configuration:
local overrides = require("custom.configs.overrides")

local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format && linter
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- overrides plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "anuvyklack/hydra.nvim",
    event = { "BufReadPre" },
    opts = {
      specs = {
        gitsigns = require("custom.configs.config_hydra").gitsigns_menu,
        quick = require("custom.configs.config_hydra").quick_menu,
        lsp = require("custom.configs.config_hydra").lsp_menu,
      },
    },
    config = function(_, opts)
      local hydra = require("hydra")
      for s, _ in pairs(opts.specs) do
        hydra(opts.specs[s]())
      end
    end,
  }
  -- install a plugin 
  -- {

  -- }
}

return plugins

