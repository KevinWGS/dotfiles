-- lua/config/keymaps.lua

-- NOTE: This file is loaded by LazyVim automatically.

local map = vim.keymap.set

-- 1. jk to escape insert mode
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- 2. Better window navigation (works with splits)
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- 3. Move lines up/down (normal, insert, visual) - VS Code style
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- 4. Keep search results centered
map("n", "n", "nzzzv", { desc = "Next search result (centered)" })
map("n", "N", "Nzzzv", { desc = "Prev search result (centered)" })

-- 5. Keep cursor centered when joining lines
map("n", "J", "mzJ`z", { desc = "Join lines (cursor stays put)" })

-- 6. Paste over selection without losing default register
map("x", "<leader>p", '"_dP', { desc = "Paste without yanking replaced text" })

-- 7. System clipboard yanks
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })

-- 8. Delete without yanking (black hole register)
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- 9. Quick replace word under cursor
map("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Replace word under cursor" })

-- 10. Quick save & quit (LazyVim uses <leader>fS etc, this is extra)
map("n", "<leader>w", ":w<CR>", { desc = "Save file", silent = true })
map("n", "<leader>q", ":q<CR>", { desc = "Quit window", silent = true })
