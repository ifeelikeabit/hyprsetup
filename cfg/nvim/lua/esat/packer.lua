


-- This file can be loaded by calling `lua require('plugins')` from your init.vimpacker

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- COLOR SCHEMES
	use({ 'rose-pine/neovim', as = 'rose-pine' })	
	use({ 'folke/tokyonight.nvim', as = 'tokyo-night' })	
	use({ 'catppuccin/nvim', as = 'catppuccin'})	
	use({ 'sainnhe/gruvbox-material', as = 'gruvbox-material'})	
	-- COLOR SCHEMES END
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use ('nvim-treesitter/playground') 
	use ('nvim-lua/plenary.nvim')

	use {
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<A-i>]], -- ALT + i
				direction = "float",      -- terminal tipi: float | horizontal | vertical
				shade_terminals = true,   -- arka planı karartır
				start_in_insert = true,   -- terminal insert modda başlasın
				persist_mode = true,      -- çıkınca insert/normal modu hatırla
				float_opts = {
					border = "curved",      -- köşeleri yumuşak yapar
				},
			})
		end
	}
use {
  "neovim/nvim-lspconfig"
}

use {
  "hrsh7th/nvim-cmp",
  requires = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  }}
  end)

