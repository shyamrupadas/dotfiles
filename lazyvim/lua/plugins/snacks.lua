return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.picker = opts.picker or {}
    opts.picker.sources = opts.picker.sources or {}
    opts.picker.sources.explorer = opts.picker.sources.explorer or {}

    local explorer = opts.picker.sources.explorer
    explorer.win = explorer.win or {}
    explorer.win.list = explorer.win.list or {}
    explorer.win.list.keys = explorer.win.list.keys or {}

    local keys = explorer.win.list.keys

    keys["o"] = "confirm" -- open inside Neovim
    keys["l"] = "confirm" -- оставим l тоже открывать
    keys["O"] = "explorer_open" -- external open
  end,
}
