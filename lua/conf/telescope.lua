local status, actions = pcall(require, "telescope.actions")
if (not status) then
  return
end

--local actions = require('telescope.actions')
-- Global remapping
------------------------------
require("telescope").setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
        ["l"] = actions.file_edit
      }
    },
    file_ignore_patterns = {"./node_modules"}
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case" -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    }
  }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:

-- telescope 文件搜索快捷键配置、
vim.keybinds.gmap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", vim.keybinds.opts)


