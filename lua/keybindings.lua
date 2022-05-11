-- 设置leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keybinds = {
    gmap = vim.api.nvim_set_keymap,
    bmap = vim.api.nvim_buf_set_keymap,
    dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    opts = {noremap = true, silent = true}
}

-- 将快捷键设置函数映射到本地变量，方便使用
local map = vim.keybinds.gmap
local opt = vim.keybinds.opts
map("i", "jk", "<ESC>", opt)

-- 设置反撤销
map("n", "z", "<C-r>", opt)

-- 设置快速浏览快捷键，ctrl/j/k 跳转5行
map("n", "<C-j>", "5j", opt)
map("n", "<C-k>", "5k", opt)

-- 编辑模式快速跳到行首和行尾部
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

-- 设置visual下的快捷缩进
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- 分屏操作
map("n", "<leader>sv", ":vsp<CR>", opt)
map("n", "<leader>sh", ":sp<CR>", opt)
map("n", "<leader>sc", "<C-w>c", opt)
map("n", "<leader>so", "<C-w>o", opt) -- close others

-- 比例控制（不常用，因为支持鼠标拖拽）
map("n", "s.", ":vertical resize +20<CR>", opt)
map("n", "s,", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>",opt)
map("n", "sk", ":resize -10<CR>",opt)

-- 窗口跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)


-- 插入模式下的光标移动
map("i", "<A-k>", "<up>", vim.keybinds.opts)
map("i", "<A-j>", "<down>", vim.keybinds.opts)
map("i", "<A-h>", "<left>", vim.keybinds.opts)
map("i", "<A-l>", "<right>", vim.keybinds.opts)

-- floatterm 快捷键配置
map("n", "<leader>t", ":FloatermToggle<cr>", opt)
map("n", "<leader>tn", ":FloatermNew<cr>", opt)
map("t", "<leader>tj", ":FloatermPrev<cr>", opt)
map("t", "<leader>tk", ":FloatermNext<cr>", opt)
map("t", "<leader>tf", ":FloatermFirst<cr>", opt)
map("t", "<leader>tl", ":FloatermLast<cr>", opt)
map("t", "<leader>ts", ":FloatermShow<cr>", opt)
map("t", "<leader>th", ":FloatermHide<cr>", opt)
map("t", "<leader>td", ":FloatermKill<cr>", opt)



