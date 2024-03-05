return {
	-- [lsp]
  {
    "neovim/nvim-lspconfig"
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    ft = { 'rust' },
  },
  --
  
  -- [formatting and autocompletion]
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },
  {
    "tpope/vim-commentary"  -- comment with gc
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
    },
  },
  --
  
  -- [treesitter]
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function(plugin)
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "lua", "rust", "toml", "c" },
        -- auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting=false,
        },
        ident = { enable = true },
        -- rainbow = {
        --   enable = true,
        --   extended_mode = true,
        --   max_file_lines = nil,
        -- }
      }
    end,
  },
  --

  -- [themes]
  {
    "folke/tokyonight.nvim",
    priority = 1000
  },
  --

  -- [aesthetics]
  {
    "nvim-lualine/lualine.nvim",  -- status bar
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true
  },
  "Yggdroot/indentLine",  -- display indent lines
  {
    "tversteeg/registers.nvim",     -- register popup
    config = true
  },
  {
    "norcalli/nvim-colorizer.lua", -- colorizes #FFFFFF
    config = true
  },
  {
    'nkakouros-original/numbers.nvim',  -- updates relative numbers
    config = true
  },
  {
    "folke/todo-comments.nvim",     -- adds  TODO: comments
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
  },
  --
}
