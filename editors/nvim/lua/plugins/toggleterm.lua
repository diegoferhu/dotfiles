return {
  "akinsho/toggleterm.nvim",
  opts = function(_, opts)
    -- Extender las opciones existentes
    opts = opts or {}
    opts.env = opts.env or {}

    -- Añadir Volta al PATH
    opts.env.PATH = vim.fn.getenv("HOME") .. "/.volta/bin:" .. vim.fn.getenv("PATH")

    return opts
  end,
}
