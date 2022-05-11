local plugins = {
    {"wbthomason/packer.nvim"},
    -- 设置主题
    {"navarasu/onedark.nvim"},
    -- nvim-tree
    {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("conf.nvim-tree")
        end
    },
    -- bufferline
    {
        "akinsho/bufferline.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("conf.bufferline")
        end
    },
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("conf.nvim-treesitter")
        end
    },
    -- telescope 文件搜索
    {
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons"
        },
        config = function()
            require("conf.telescope")
        end
    },
    -- 加速telescope文件搜索
    {"nvim-telescope/telescope-fzf-native.nvim", run = "make"},
    -- 代码注释
    {
        "numToStr/Comment.nvim",
        requires = {
            "JoosepAlviste/nvim-ts-context-commentstring"
        },
        config = function()
            require("conf.Comment")
        end
    },
    --[[ --注释插件
  {
    "b3nj5m1n/kommentary",
    config=function()
      require("conf.kommentary")
    end
  }, ]]
    {
        "sbdchd/neoformat",
        config = function()
            require("conf.neoformat")
        end
    },
    -- 悬浮terminal窗口插件
    {
        "voldikss/vim-floaterm",
        config = function()
            --require("")
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        requires = {"kyazdani42/nvim-web-devicons"},
        config = function()
            require("conf.lualine")
        end
    },
    {"arkav/lualine-lsp-progress"},
    -- dashboard-nvim (新增)
    {
        "glepnir/dashboard-nvim",
        config = function()
            require("conf.dashboard")
        end
    },
    --------------------- LSP --------------------
    {
        "williamboman/nvim-lsp-installer",
        requires = {
            "neovim/nvim-lspconfig"
        },
        config = function()
            require("conf.nvim-lsp-installer")
        end
    },
    -- Lspconfig
    -- {
    --     "neovim/nvim-lspconfig",
    --     requires = {
    --         "williamboman/nvim-lsp-installer"
    --     },
    --     config = function()
    --         require("conf.nvim-lsp-installer")
    --     end
    -- },
    -- 设置python lsp扩展，优化虚拟环境导入问题
    {
        "HallerPatrick/py_lsp.nvim",
        config = function()
            require("conf.py_lsp")
        end
    },
    -- 美化LSP相关UI
    {
        "tami5/lspsaga.nvim",
        config = function()
            require("conf.lspsaga")
        end
    },
    -- LSP 进度提示
    {
        "j-hui/fidget.nvim",
        config = function()
            require("conf.fidget")
        end
    },
    -- 扩展 LSP 诊断
    {
        "mfussenegger/nvim-lint",
        config = function()
            require("conf.nvim-lint")
        end
    },
    {
        "hrsh7th/nvim-cmp", -- 代码补全核心插件，下面都是增强补全的体验插件
        requires = {
            {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
            {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
            {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
            {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
            {"hrsh7th/cmp-path"}, -- 路径补全
            {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
            {"hrsh7th/cmp-cmdline"}, -- 命令补全
            {"f3fora/cmp-spell"}, -- 拼写建议
            {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
            {"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
            {"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
        },
        config = function()
            require("conf.nvim-cmp")
        end
    },
    -- 代码提示美化
    {"onsails/lspkind-nvim"},
    -- indent-blankline
    {"lukas-reineke/indent-blankline.nvim"},
    -- AutoSave
    {"Pocco81/AutoSave.nvim"},
    -- 自动恢复光标
    {
        "ethanholz/nvim-lastplace",
        config = function()
            require("conf.lastplace")
        end
    },
    -- 多光标操作
    {
        "terryma/vim-multiple-cursors",
        config = function()
            require("conf.vim-multiple-cursors")
        end
    },
    -- 显示滚动条
    {
        "petertriho/nvim-scrollbar",
        config = function()
            require("conf.scrollbar")
        end
    },
    -- 显示网页颜色
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("conf.colorizer")
        end
    },
    -- 撤销树
    {
        "mbbill/undotree",
        config = function()
            require("conf.undotree")
        end
    },
    -- 键位辅助
    {
        "folke/which-key.nvim",
        config = function()
            require("conf.which-key")
        end
    },
    -- 美化消息通知
    {
        "rcarriga/nvim-notify",
        config = function()
            require("conf.nvim-notify")
        end
    },
    -- 自动补全括号
    {
        "windwp/nvim-autopairs",
        config = function()
            require("conf.nvim-autopairs")
        end
    },
    -- 添加参数提醒
    {
        "ray-x/lsp_signature.nvim",
        config = function()
            require("conf.lsp_signature")
        end
    },
    -- 灯泡提示代码行为
    {
        "kosayoda/nvim-lightbulb",
        config = function()
            require("conf.nvim-lightbulb")
        end
    },
    -- view tree
    {
        "liuchengxu/vista.vim",
        config = function()
            require("conf.vista")
        end
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            require("conf.nvim-dap")
        end
    },
    -- 为代码调试提供内联文本
    {
        "theHamsta/nvim-dap-virtual-text",
        requires = {
            "mfussenegger/nvim-dap"
        },
        config = function()
            require("conf.nvim-dap-virtual-text")
        end
    },
    -- 为代码调试提供 UI 界面
    {
        "rcarriga/nvim-dap-ui",
        requires = {
            "mfussenegger/nvim-dap"
        },
        config = function()
            require("conf.nvim-dap-ui")
        end
    }
}

local configs = {}
require("packer").startup(
    {
        function(use)
            -- Packer can manage itself
            for _, plugin in pairs(plugins) do
                use(plugin)
                if plugin["config"] ~= nil then
                    table.insert(configs, {run = plugin.config})
                -- plugin.config()
                end
            end
        end,
        config = {
            max_jobs = 12,
            display = {
                open_fn = function()
                    return require("packer.util").float({border = "single"})
                end
            }
        }
    }
)


