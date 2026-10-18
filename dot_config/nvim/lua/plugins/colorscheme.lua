return {
  {
    'Mofiqul/vscode.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('vscode').setup({
        italic_comments = false,
        italic_inlayhints = false,
        transparent = vim.uv.os_uname().sysname == 'Darwin'
          or string.find(vim.uv.os_uname().sysname, 'Windows') ~= nil
          or string.find(vim.uv.os_uname().release, 'WSL') ~= nil,
      })
      vim.cmd('colorscheme vscode')
    end,
  },
}
