return require('packer').startup(
  function(use)
    -- [themes]
    use 'folke/tokyonight.nvim'

    
    -- [aesthetics]
    use {
      'nvim-lualine/lualine.nvim',    -- status bar
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = function()
        require('lualine').setup {}
      end,
    }
    use 'Yggdroot/indentLine'         -- displays indent lines
    use {
      "tversteeg/registers.nvim",     -- register popup
      config = function()
        require("registers").setup()
      end,
    }
    use {
      'norcalli/nvim-colorizer.lua', -- colorizes #FFFFFF
      config = function()
        require("colorizer").setup()
      end,
    }
    use {
      'nkakouros-original/numbers.nvim',  -- updates relative numbers
      config = function()
        require("numbers").setup()
      end,
    }
    use {
      "folke/todo-comments.nvim",     -- adds  TODO: comments
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup {}
      end,
    }


    -- [lsp]
    use 'neovim/nvim-lspconfig'


    -- [file nav]
    use {
      'kyazdani42/nvim-tree.lua',     -- filesystem navigation
      requires = 'kyazdani42/nvim-web-devicons', -- filesystem icons
      config = function()
        require('nvim-tree').setup()
      end,
    }


    -- [formatting and autocompletion]
    use {
      "windwp/nvim-autopairs",        -- automatically close brackets
      event = "InsertEnter",
      config = function() 
        require("nvim-autopairs").setup {
          map_cr = true
        } 
      end
    }
    use 'tpope/vim-commentary'        -- comment with gc

    
    -- [syntax highlighting]
    -- TODO: test if glsl with treesitter is good now
    -- use 'tikhomirov/vim-glsl'         -- glsl
    use {
      'nvim-treesitter/nvim-treesitter',  -- other
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
        end,
      config = function() 
        require('nvim-treesitter.configs').setup {
          ensure_installed = { "lua", "rust", "toml" },
          auto_install = true,
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
        end
      }
    -- TODO: broken
    -- use {
    --   'p00f/nvim-ts-rainbow',        -- rainbow parentheses (needs treesitter)
    --   requires = { 'nvim-treesitter/nvim-treesitter', opt = false },
    -- }
  end
)
