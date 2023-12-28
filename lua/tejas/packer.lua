vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- nvim status line
    use "Hitesh-Aggarwal/feline_one_monokai.nvim"
    use 'feline-nvim/feline.nvim'
    use 'nvim-tree/nvim-web-devicons'

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use "nvim-lua/plenary.nvim"

    -- Telescope -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
    }

    -- theme
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    -- Nvim tree sitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- Undo tree
    use 'mbbill/undotree'

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- make tmux and nvim navigation better
    use 'christoomey/vim-tmux-navigator'

    -- debugger
    use "mfussenegger/nvim-dap"
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

    -- colors
    use 'norcalli/nvim-colorizer.lua'

    --     use {
    --     "williamboman/mason.nvim",
    --     -- mason-nvim-dap.nvim closes some gaps that exist between mason.nvim and nvim-dap
    --     "jay-babu/mason-nvim-dap.nvim",
    -- }
    --
    -- auto close tags
    use "windwp/nvim-ts-autotag"

    -- for commenting
    use 'numToStr/Comment.nvim'

    -- comment based on language buffer
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- cmp https://github.com/hrsh7th/nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- For luasnip users.
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- actual snippets
    use "rafamadriz/friendly-snippets"

    use 'nvim-tree/nvim-tree.lua'

    use "lukas-reineke/indent-blankline.nvim"

    -- harpoon
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'

    -- A fancy, configurable, notification manager for NeoVim
    -- use 'rcarriga/nvim-notify'

    use 'nvim-treesitter/nvim-treesitter-context'
end)
