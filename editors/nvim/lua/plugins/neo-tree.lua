return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Esto hace que los archivos ocultos sean visibles
        hide_dotfiles = false, -- Esto evita que se oculten los archivos que empiezan con punto
        hide_gitignored = false, -- Opcional: Muestra también archivos ignorados por git
      },
    },
  },
}
