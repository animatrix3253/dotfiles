vim.lsp.config["cpp_ls"] = {
  cmd = { "clangd" },
  filetypes = { "cpp", "c" },
  root_markers = { ".git", "clangd", "CMakelists.txt" },
  settings = {}
}

vim.lsp.enable("cpp_ls")
