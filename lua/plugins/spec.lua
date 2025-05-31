return {
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
    },

    -- {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
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
    { 'theprimeagen/harpoon' }
}
