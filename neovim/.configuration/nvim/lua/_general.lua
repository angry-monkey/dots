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

-- Set spell language
vim.opt.spelllang = "en_us"

-- Enable mouse support
vim.opt.mouse = "a"

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Completion
vim.opt.completeopt = { "menu", "menuone", "noselect" }
