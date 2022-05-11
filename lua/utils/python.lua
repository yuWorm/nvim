-- 用来处理python相关环境
local tools = require("utils.tools")
local venv_path = vim.fn.getcwd() .. "/venv/"
local venv_python_path = vim.fn.getcwd() .. "/bin/python"
local project_config_file = vim.fn.getcwd() .. "/nvim-project.json"

local has_venv = function()
    return tools.file_exists(venv_path)
end

local has_project_file = function()
    return tools.file_exists(project_config_file)
end

return {
    venv_python_path = venv_python_path,
    has_venv = has_venv,
    has_project_file = has_project_file,
    project_config_file = project_config_file,
    venv_path = venv_path
}
