-- LSP keybindings
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local opts = { buffer = event.buf, silent = true }

    -- Enable built-in LSP completion
    vim.lsp.completion.enable(
      true,
      event.data.client_id,
      event.buf,
      { autotrigger = true }
    )

    vim.opt.completeopt = {
      "menu",
      "menuone",
      "noselect",
      "popup"
    }

    -- Navigation
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

    -- Documentation
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

    -- Refactoring and actions
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

    -- Formatting
    vim.keymap.set('n', '<leader>f', function()
      vim.lsp.buf.format({ async = true })
    end, opts)

    -- Diagnostics
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
  end,
})
