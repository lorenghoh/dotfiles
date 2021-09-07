require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    my_workspace = "~/workspace"
                }
            }
        },
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-compe"
            }
        },
        ["core.norg.concealer"] = {},
        ["core.keybinds"] = {
            config = {
                default_keybinds = true,
                neorg_leader = "<Leader>o",
            }
        },
    },
}
