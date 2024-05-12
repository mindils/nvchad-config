require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>o", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

map("n", "L", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "H", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

-- map({ "n", "t" }, "<C-\\>", function()
--   require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
-- end, { desc = "terminal toggle floating term" }) 

map({ "n", "t" }, "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp", id = "horizontalTerm" }
end, { desc = "terminal toggle horizontal term" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
