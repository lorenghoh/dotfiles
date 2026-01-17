return {
    "Saghen/blink.cmp",
    dependencies = {
        "Kaiser-Yang/blink-cmp-dictionary",
    },
    opts = {
        sources = {
            default = { 'dictionary' },
            providers = {
                dictionary = {
                    module = "blink-cmp-dictionary",
                    name = "Dict",
                    -- score_offset = 20,
                    max_items = 8,
                    min_keyword_length = 3,
                    opts = {
                        get_command = 'rg',
                        dictionary_directories = { vim.fn.expand("~/.config/nvim/spell") },
                    }
                }
            },
        }
    }
}
