require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use {
        'vhyrro/neorg',
        requires = 'nvim-lua/plenary.nvim',
        ft = 'norg',
        config = {
            function()
                require('config.norg')
            end
        }
    }

    use {
        'itchyny/calendar.vim'
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        config = {
            function()
                require('config.treesitter')
            end
        },
        requires = {
            'nvim-treesitter/playground',
            opt = true
        },
        run = ':TSUpdate'
    }

    use {
        'neovim/nvim-lspconfig',
        config = { 
            function() 
                require('config.lsp')
            end
        }
    }

    use {
        'hrsh7th/nvim-compe',
        config = {
            function()
                require('config.compe')
            end
        },
        requires = {

        }
    }

    use {
        'L3MON4D3/LuaSnip',
        requires = {
            'rafamadriz/friendly-snippets',
        },
        config = {
            function()
                require("luasnip/loaders/from_vscode").lazy_load()
            end
        }
    }

    use {
        'nvim-telescope/telescope.nvim',
        config = { 
            function() 
                require('config.telescope')
            end
        },
        requires = {
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim',
        },
    }

    use {
        'alvarosevilla95/luatab.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true,
        },
    }

    use {
        'hoob3rt/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true,
        },
    }

    use {
        'shaunsingh/seoul256.nvim',
        config = {
            function()
                require('seoul256').set()
            end
        }
    }
end)

-- lualine
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'seoul256',
        component_separators = {'', ''},
        section_separators = {'', ''},
        disabled_filetypes = {}
    },
}

