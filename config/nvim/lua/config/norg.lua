require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.gtd.base"] = {},
        ["core.gtd.ui"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    workspace = "~/Workspace/agenda/"
                }
            }
        },
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp"
            }
        },
        ["core.norg.concealer"] = {},
        ["core.keybinds"] = {
            config = {
                default_keybinds = true,
            }
        },
    },
}
