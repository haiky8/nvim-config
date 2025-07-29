local keymap = vim.keymap
local uv = vim.uv

keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<cr>", {desc = "[T]ree"})

keymap.set("x", "<", "<gv")
keymap.set("x", ">", ">gv")

keymap.set("n", "<leader>so", "<cmd>Telescope vim_options<cr>", {desc = "[S]earch [o]ptions"})
keymap.set("n", "<leader>ss", "<cmd>Telescope symbols<cr>", {desc = "[S]earch [s]ymbols"})
keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<cr>", {desc = "[S]earch [f]iles"})
keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", {desc = "[S]earch [g]rep"})

keymap.set("n", "<leader>sr", "<cmd>Spectre<cr>", {desc = "[S]earch & [r]eplace"})

keymap.set("n", "<leader>r", "<cmd>RunFile<cr>", {desc = "Code [R]un"})
require("which-key").add({
	{"<leader>s", group="Search"},
})
