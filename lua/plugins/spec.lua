return {
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
    },

    -- {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },

    { 'simrat39/rust-tools.nvim' },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    { 'windwp/nvim-autopairs' },
    { 'windwp/nvim-ts-autotag' },
    { 'theprimeagen/harpoon' },
    -- using lazy.nvim
    {
        "S1M0N38/love2d.nvim",
        event = "VeryLazy",
        opts = { },
        keys = {
            { "<leader>v", ft = "lua", desc = "LÖVE" },
            { "<leader>vv", "<cmd>LoveRun<cr>", ft = "lua", desc = "Run LÖVE" },
            { "<leader>vs", "<cmd>LoveStop<cr>", ft = "lua", desc = "Stop LÖVE" },
        },
    }
}
