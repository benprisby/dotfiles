return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').install({
        'bash', 'bitbake', 'cpp', 'hcl', 'javascript', 'json', 'python',
        'terraform', 'toml', 'tsx', 'typescript', 'yaml',
      })
    end,
  },
}
