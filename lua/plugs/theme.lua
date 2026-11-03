vim.pack.add({
  "https://github.com/ellisonleao/gruvbox.nvim.git",
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/nvim-lualine/lualine.nvim"
})

require('lualine').setup({
    options = {
        theme = 'auto',
    },
})

vim.cmd("colorscheme gruvbox")
