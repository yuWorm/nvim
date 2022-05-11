local py_utils = require("utils.python")

local config = {
    root_dir = function()
        return vim.fn.getcwd()
    end,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    }
}

-- if py_utils.has_venv() then
--     config["settings"]["python"]["venvPath"] = py_utils.venv_path
--     config["settings"]["python"]["pythonPath"] = py_utils.venv_python_path
-- end
--
return config
