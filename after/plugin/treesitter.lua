require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "vimdoc", "javascript", "typescript", "c", "cpp", "bash", "lua", "rust" },

    sync_install = false,
    auto_install = true,
    autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = false,
        filetypes = {
            'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx',
            'rescript',
            'xml',
            'php',
            'markdown',
            'astro', 'glimmer', 'handlebars', 'hbs'
        }
    },
    indent = {
        enable = true,
         disable = { "c, cpp, javascript, typescript " },
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
