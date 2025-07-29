-- Configuración de Mason (gestor de LSPs)
require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true,
})

-- Asegurar que Neovim use los bins de Mason
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

-- Configuración base para LSP
local lspconfig = require("lspconfig")
lspconfig.util.default_config = {
  cmd_env = {
    NIX_PATH = nil, -- Evita que busque en Nix
  },
}

-- Lista de servidores LSP para Python que queremos desactivar
local disabled_servers = {
  "jedi_language_server",
  "pylsp",
  "pylyzer",
  "basedpyright",
}

-- Configurar Ruff
lspconfig.ruff_lsp.setup({
  cmd = { "ruff" },
  filetypes = { "python" },
})

-- Configurar Pyright (recomendado)
lspconfig.pyright.setup({
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
      },
    },
  },
})

-- Desactivar otros LSPs no deseados
for _, server in ipairs(disabled_servers) do
  lspconfig[server].setup({
    on_attach = function() end,
    flags = {
      debounce_text_changes = 150,
    },
    autostart = false, -- Impide que se inicien automáticamente
  })
end
