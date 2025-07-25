local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

ls.add_snippets("markdown", {
  s("table", {
    t({
      "| Header 1 | Header 2 |",
      "|----------|----------|",
      "| Cell 1   | Cell 2   |",
    }),
  }),
})
