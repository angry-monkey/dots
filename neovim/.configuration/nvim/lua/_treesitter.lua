local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = {
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
    auto_install = true,
    ignore_install = { "" },
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = false
    }
}

