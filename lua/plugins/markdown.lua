return {
  -- Markdown básico
  {
    "preservim/vim-markdown",  -- Mejor sintaxis y folding
    ft = "markdown",
  },

  -- Generador de TOC
  {
    "mzlogin/vim-markdown-toc",
    ft = "markdown",
    config = function()
      vim.g.vmt_auto_update_on_save = 1  -- Actualiza el TOC al guardar
    end,
  },

  -- Listas automáticas
  {
    "dkarter/bullets.vim",
    ft = "markdown",
    config = function()
      vim.g.bullets_enabled_file_types = { "markdown", "text" }
    end,
  },

  -- Snippets
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()  -- Carga snippets predefinidos
    end,
  },
}
