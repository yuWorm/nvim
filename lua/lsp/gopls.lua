-- go的LSP服务为：gopls

return {
  root_dir = function()
    return vim.fn.getcwd()
  end
}
