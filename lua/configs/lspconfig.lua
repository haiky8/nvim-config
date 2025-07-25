require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)
local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
  cmd = { "clangd" }, -- si quieres puedes añadir flags aquí
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  -- Puedes añadir más opciones aquí
})

-- read :h vim.lsp.config for changing options of lsp servers 
