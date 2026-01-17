return {
    {
        "folke/todo-comments.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        opts = {
            highlight = {
                comments_only = false
            },
            keywords = {
                TODO = { icon = "󰄗", color = "warning", alt = { "ASK", "CHECK", "LATER" } },
                DONE = { icon = "󰄵", color = "info" },
            },
            signs = true,
        }
    },
}
