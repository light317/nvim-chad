require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>f", vim.lsp.buf.format)

map("n", "<leader>hm", ":resize +10<CR>") --This will paste the command: ":resize +10" into the command prompt and press enter(<CR>)
map("n", "<leader>hl", ":resize -10<CR>")
--map("n", "<leader>hh",":resize 1000<CR>")

map("n", "<leader>vm", ":vertical resize +10<CR>")
map("n", "<leader>vl", ":vertical resize -10<CR>")
--map("n", "<leader>vv",":vertical resize 1000<CR>")


map("v", "J", ":m '>+1<CR>gv=gv") -- these 2 allow us to move lines in visual mode.
map("v", "K", ":m '<-2<CR>gv=gv")

map("x", "<leader>p", "\"_dP") -- this persists whatever you yanked last

map("n", "<leader>y", "\"+y")  -- these 3 will allow us to copy things into the system clipboard. whatever we yank like this can be pasted using CTRL + V
map("n", "<leader>Y", "\"+Y")
map("v", "<leader>y", "\"+y")

map("n", "<leader>yy", "Vyp") -- Duplicate the line

map("n", "<leader>vv", "ggVG") -- Selects the whole file in visual mode

map("n", "<leader>rw", "viw\"_dP") -- Replaces the word under the cursor with whatever that was yanked

-- map("i", "<ESC>", "<ESC>:w<CR>")

