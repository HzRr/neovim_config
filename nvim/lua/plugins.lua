local packer = require("packer")
packer.startup({
    function(use)
        -- Packer 可以管理自己本身
        use 'wbthomason/packer.nvim'
        --------------------- colorschemes --------------------
        -- tokyonight
        use("folke/tokyonight.nvim")
        -------------------------------------------------------
        -- 你的插件列表...
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
        -- bufferline
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
        -- lualine
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use("arkav/lualine-lsp-progress")
        -- telescope
        use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
        -- dashboard-nvim
        use("glepnir/dashboard-nvim")
        -- project
        use("ahmedkhalf/project.nvim")
        -- treesitter
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        --------------------- LSP --------------------
        use("williamboman/nvim-lsp-installer")
        -- Lspconfig
        use({ "neovim/nvim-lspconfig" })
        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")
        -- ui
        use("onsails/lspkind-nvim")
        use("tami5/lspsaga.nvim")
        -- indent-blankline
        use("lukas-reineke/indent-blankline.nvim")
        -- 代码格式化
        use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    end,

    --  config = {
    -- 并发数限制
    --    max_jobs = 16,
    -- 自定义源
    --    git = {
    --      default_url_format = "https://hub.fastgit.org/%s",
    --      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
    --      -- default_url_format = "https://gitcode.net/mirrors/%s",
    --      -- default_url_format = "https://gitclone.com/github.com/%s",
    --    },
    --  },
})
