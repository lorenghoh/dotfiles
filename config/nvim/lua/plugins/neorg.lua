return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              agenda = "$HOME/Workspace/agenda/",
            },
          },
        },
      },
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
}
