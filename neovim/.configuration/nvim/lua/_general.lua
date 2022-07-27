-- Display line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 5

-- Display always sign column
vim.opt.signcolumn = "number"

-- Split window intuitively
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Display tabulations and trailing spaces
vim.opt.list = true
vim.opt.listchars = { tab = "· ", trail = "-" }

-- Enable highlighting while searching
vim.opt.incsearch = true

-- Enables 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Completion
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Enable mouse support
vim.opt.mouse = "a"
