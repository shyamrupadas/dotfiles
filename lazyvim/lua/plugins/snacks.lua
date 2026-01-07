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

    keys["o"] = function(picker)
      vim.notify(
        "Explorer: key 'o' is remapped to open files inside Neovim (non-default behavior)",
        vim.log.levels.WARN,
        { title = "Snacks Explorer" }
      )

      picker:action("confirm") -- Snacks Explorer uses 'confirm' as an action
    end

    keys["l"] = "confirm" -- оставим l тоже открывать
    keys["O"] = "explorer_open" -- external open
  end,
}
