-- Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file without auto-formatting
vim.keymap.set("n", "<leader>sw", "<cmd>noautocmd w <CR>", opts)

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Save all files and quit
vim.keymap.set("n", "<leader>wq", "<cmd>wqa! <CR>", opts)

-- Switch to tab number
vim.keymap.set("n", "<leader>1", "<cmd>tabn 1<CR>", opts)
vim.keymap.set("n", "<leader>2", "<cmd>tabn 2<CR>", opts)
vim.keymap.set("n", "<leader>3", "<cmd>tabn 3<CR>", opts)
vim.keymap.set("n", "<leader>4", "<cmd>tabn 4<CR>", opts)
