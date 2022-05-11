local M = {}

M.file_exists = function(path)
    local file = io.open(path, "rb")
    if file then
        file:close()
    end
    return file ~= nil
end

key = ""
M.print_r = function(table, level)
    level = level or 1
    local indent = ""
    for i = 1, level do
        indent = indent .. "  "
    end

    if key ~= "" then
        print(indent .. key .. " " .. "=" .. " " .. "{")
    else
        print(indent .. "{")
    end

    key = ""
    for k, v in pairs(table) do
        if type(v) == "table" then
            key = k
            M.print_r(v, level + 1)
        else
            local content = string.format("%s%s = %s", indent .. "  ", tostring(k), tostring(v))
            print(content)
        end
    end
    print(indent .. "}")
end

return M
