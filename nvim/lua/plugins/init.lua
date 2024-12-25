return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "svelte-language-server",
        "typescript-language-server",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "svelte",
        "typescript",
      },
    },
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },
  {
    "phaazon/hop.nvim",
    version = "v2",
    config = function()
      require("hop").setup {
        keys = "etovxqpdygfblzhckisuran",
      }
    end,
  },
  {
    "gen740/SmoothCursor.nvim",
    config = function()
      require("smoothcursor").setup {
        matrix = {
          head = {
            -- cursor = {""},
            cursor = { "" },
            texthl = { "SmoothCursorAqua" },
          },
          body = {
            texthl = {
              "SmoothCursorRed",
              "SmoothCursorOrange",
              "SmoothCursorYellow",
              "SmoothCursorGreen",
              "SmoothCursorAqua",
              "SmoothCursorBlue",
              "SmoothCursorPurple",
            },
          },
        },
        type = "matrix",
      }
    end,
  },
  {
    -- 添加缩进标记
    "lukas-reineke/indent-blankline.nvim",
    version = "*",
    opts = {},
    config = function()
      require("ibl").setup()
    end,
  },
  {
    -- 为单词添加下划线插件
    "RRethy/vim-illuminate",
  },
  {
    --为特殊的注释添加特殊的标识 以及高亮显示
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    --FIX:
    --  FIXIT:
    --      FIXME:
    --        BUG:
    --          ISSUE:

    --TODO:

    --HACK:

    --WARN:
    --  WARNING:

    --PERF:
    --  OPTIM:
    --    PERFORMANCE:
    --      OPTIMIZE:

    --NOTE:
    -- INFO:

    --TEST:
    --  TESTING:
    --    PASSED:
    --     FAILED:

    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    --彩虹括号
    "HiPhish/rainbow-delimiters.nvim",
  },
}
