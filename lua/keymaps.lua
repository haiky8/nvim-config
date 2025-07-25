-- Generar/actualizar TOC
vim.keymap.set("n", "<leader>mt", ":GenTocMarkdown<CR>", { desc = "Markdown: Generar TOC" })

-- Alternar listas con bullets.vim
vim.keymap.set("n", "<leader>mb", ":ToggleCheckbox<CR>", { desc = "Markdown: Toggle checkbox" })

-- Snippets (ej: escribir "table" + Tab para una tabla)
require("luasnip").config.setup({
  history = true,
  updateevents = "TextChanged,TextChangedI",
})
