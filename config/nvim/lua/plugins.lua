require("packer").startup(function()
    use "wbthomason/packer.nvim"

    use {
        "vhyrro/neorg",
        ft = "norg",
        branch = "main",
        config = {
            function()
                require("config.norg")
            end
        },
        after = "nvim-treesitter",
        requires = "nvim-lua/plenary.nvim",
    }

    use {
        "itchyny/calendar.vim"
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        config = {
            function()
                require("config.treesitter")
            end
        },
        requires = {
            "nvim-treesitter/playground",
            opt = true
        },
        run = ":TSUpdate"
    }

    use {
        "neovim/nvim-lspconfig",
        config = { 
            function() 
                require("config.lsp")
            end
        }
    }

    use {
        "hrsh7th/nvim-cmp",
        config = {
            function()
                require("config.cmp")
            end
        },
        requires = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        }
    }

    use {
        "L3MON4D3/LuaSnip",
        requires = {
            "rafamadriz/friendly-snippets",
        },
        config = {
            function()
                require("luasnip/loaders/from_vscode").lazy_load()
            end
        }
    }

    use {
        "nvim-telescope/telescope.nvim",
        config = { 
            function() 
                require("config.telescope")
            end
        },
        requires = {
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
        },
    }

    use {
        "alvarosevilla95/luatab.nvim",
        config = {
            function()
                require("luatab").setup({})
            end
        },
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true,
        },
    }

    use {
        "hoob3rt/lualine.nvim",
        after = "github-nvim-theme",
        config = {
            function()
                require("lualine").setup({
                    options = {
                        icons_enabled = true,
                        theme = "auto",
                        component_separators = {"", ""},
                        section_separators = {"", ""},
                        disabled_filetypes = {}
                    }
                })
            end
        }
    }

    use {
        "projekt0n/github-nvim-theme",
        config = {
            function()
                require("github-theme").setup({
                    theme_style = "dimmed",
                })
            end
        }
    }
end)
