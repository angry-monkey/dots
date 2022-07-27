local status, packer = pcall(require, "packer")
if not status
then
	vim.notify("packer not found")
	return
end

packer.startup(function(use)
	use {
		"wbthomason/packer.nvim",
	}
	use {
		"ishan9299/nvim-solarized-lua",
		as = "solarized.nvim",
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
end)
