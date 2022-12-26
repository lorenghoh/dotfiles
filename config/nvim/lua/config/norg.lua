require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    main = "~/Workspace/agenda/"
                },
                autodetect = true,
            }
        },
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp"
            }
        },
        ["core.norg.concealer"] = {
            config = {
                markup_preset = "safe",
            }
        },
        ["core.keybinds"] = {
            config = {
                default_keybinds = true,
            }
        },
    },
}
