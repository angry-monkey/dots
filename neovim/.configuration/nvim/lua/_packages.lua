local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	packer_bootstrap = vim.fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
		install_path })
end

return require('packer').startup(function(use)
	use {
		"wbthomason/packer.nvim",
	}
	use {
		"altercation/vim-colors-solarized",
		as = "solarized.vim",
	}
	use {
		"nvim-treesitter/nvim-treesitter",
		as = "treesitter.nvim"
	}
	use {
		"neovim/nvim-lspconfig",
		as = "lsp.nvim"
	}
	use {
		"L3MON4D3/LuaSnip",
		as = "luasnip.nvim"
	}
	use {
		"hrsh7th/nvim-cmp",
		as = "cmp.nvim"
	}
	use {
		"hrsh7th/cmp-nvim-lsp",
		as = "cmp_lsp.nvim"
	}
	use {
		"saadparwaiz1/cmp_luasnip",
		as = "cmp_luasnip.nvim"
	}
	use {
		"hrsh7th/cmp-buffer",
		as = "cmp_buffer.nvim"
	}
	use {
		"hrsh7th/cmp-path",
		as = "cmp_path.nvim"
	}
	if packer_bootstrap then
		require('packer').sync()
	end
end)
