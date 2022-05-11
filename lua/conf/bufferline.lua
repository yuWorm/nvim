vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}

vim.keybinds.gmap("n", "<C-h>", ":BufferLineCyclePrev<CR>", vim.keybinds.opts) -- ctrl H 左移tab
vim.keybinds.gmap("n", "<C-l>", ":BufferLineCycleNext<CR>", vim.keybinds.opts) -- ctrl L 右移tab

