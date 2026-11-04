vim.lsp.config["py_ls"] = {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { ".venv", "pyproject.toml", "pyrightconfig.json" }, 
  settings = {
    pyright = {
      disableOrganizedImports = true
    },

    python = {
      analysis = {
        typeCheckingMode = "standard",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace"
      }
    }
  }
}

vim.lsp.config["ruff"] = {
  cmd = { "ruff", "server" },
  filetypes = { "python" },
  root_markers = {
    "pyproject.toml",
    "ruff.toml",
    ".ruff.toml",
    ".git",
  },

  init_options = {
    settings = {
      organizeImports = true,
      fixAll = true
    }
  }
}

vim.lsp.enable("py_ls")
vim.lsp.enable("ruff")
