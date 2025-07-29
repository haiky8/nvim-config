return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" }, -- Se activa antes de guardar
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        markdown = { "prettier" },
        xml = { "xmllint" },
        cpp = { "clang-format" },
        python = { "black" },
      },
      format_on_save = {
        timeout_ms = 1000, -- Tiempo máximo de espera
        lsp_fallback = true, -- Usa LSP si no hay formateador configurado
      },
    })
  end,
}
