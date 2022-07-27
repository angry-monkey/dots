local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status
then
	vim.notify("treesitter not found")
	return
end

treesitter.setup {
	ensure_installed = {
		"bash",
		"c",
		"css",
		"dockerfile",
		"go",
		"hcl",
		"html",
		"javascript",
		"json",
		"lua",
		"make",
		"markdown",
		"python",
		"sql",
		"toml",
		"typescript",
		"yaml"
	},
	sync_install = false,
	auto_install = false,
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = false
	}
}
