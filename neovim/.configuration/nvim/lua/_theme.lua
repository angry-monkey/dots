local theme = "solarized"

local status, _ = pcall(vim.cmd, "colorscheme " .. theme)
if status
then
	vim.opt.background = "light"
else
	vim.notify(theme .. " not found")
end
