return {
	-- Lazy.nvim can manage itself
	{ 'folke/lazy.nvim', lazy = false },

	{ 'wbthomason/packer.nvim', lazy = false },

	{
		'nvim-telescope/telescope.nvim',
		-- tag = '0.1.2',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},

	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate'
	},

	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },             -- Required
			{ 'williamboman/mason.nvim', build = ":MasonUpdate" },  -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },     -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'L3MON4D3/LuaSnip' },     -- Required
			{ 'simrat39/rust-tools.nvim' },
			{ 'jlcrochet/vim-crystal' },

			{
				'nvim-lualine/lualine.nvim',
				dependencies = { 'nvim-tree/nvim-web-devicons' }
			}
		}
	},

	-- Add TabNine
	-- {
		--   'codota/tabnine-nvim',
		--   build = "./dl_binaries.sh"
		-- },

		{ 'windwp/nvim-autopairs' },
		{ 'windwp/nvim-ts-autotag' },
		{ 'theprimeagen/harpoon' }
		-- { 'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async' },
		-- { 'ianding1/leetcode.vim' }
	}
