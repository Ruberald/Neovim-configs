vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
              pcall(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
      {'simrat39/rust-tools.nvim'},
      {'jlcrochet/vim-crystal'},

      {'nvim-lualine/lualine.nvim'},
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }

  }
}

-- require("packer").startup(function(use)
--     use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
-- end)

    use ("windwp/nvim-autopairs")
    use ("windwp/nvim-ts-autotag")
    use ("theprimeagen/harpoon")
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
    use {'ianding1/leetcode.vim'}
end)
