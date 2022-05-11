local py_utils = require("utils.python")
local host_python = "/opt/anaconda/bin/python"

if py_utils.has_venv() then
    host_python = py_utils.venv_python_path
end

require("py_lsp").setup(
    {
        host_python = host_python
    }
)
