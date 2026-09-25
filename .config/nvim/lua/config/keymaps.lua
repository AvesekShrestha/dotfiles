local map = vim.keymap.set

-- Buffers
map("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Close buffer" })
map("n", "<leader>n", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>p", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save buffer" })

-- Exit insert mode
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Windows
map("n", "<leader>h", "<C-w>h", { desc = "Left window" })
map("n", "<leader>l", "<C-w>l", { desc = "Right window" })
map("n", "<leader>j", "<C-w>j", { desc = "Down window" })
map("n", "<leader>k", "<C-w>k", { desc = "Up window" })
map("n", "<leader>v", "<cmd>vsplit<cr>", { desc = "Vertical split" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "Toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

-- Redo
map("n", "<leader>r", "<C-r>", { desc = "Redo" })

-- Close all buffers
map("n", "<leader>xa", "<cmd>bufdo bd<cr>", { desc = "Close all buffers" })
