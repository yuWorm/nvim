--插件名kommentary
--项目主页https://github.com/b3nj5m1n/kommentary
require("kommentary.config").configure_language(
  "typescriptreact",
  {
    single_line_comment_string = "auto",
    multi_line_comment_strings = "auto",
  }
)


-- kommentary 注释插件配置
vim.keybinds.gmap("n", "<leader>cc", "<Plug>kommentary_line_default", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>c", "<Plug>kommentary_motion_default", vim.keybinds.opts)
vim.keybinds.gmap("x", "<leader>c", "<Plug>kommentary_visual_default", vim.keybinds.opts)


