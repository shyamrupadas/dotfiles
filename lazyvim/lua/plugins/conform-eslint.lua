return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      opts.formatters_by_ft.typescriptreact = { "eslint_d", "prettier" }
      opts.formatters_by_ft.typescript = { "eslint_d", "prettier" }
      opts.formatters_by_ft.javascriptreact = { "eslint_d", "prettier" }
      opts.formatters_by_ft.javascript = { "eslint_d", "prettier" }

      opts.default_format_opts = opts.default_format_opts or {}
      opts.default_format_opts.timeout_ms = 8000

      return opts
    end,
  },
}
