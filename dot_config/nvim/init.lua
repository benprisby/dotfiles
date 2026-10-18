require('config.options')
require('config.filetypes')
require('config.autocmds')  -- before lazy.nvim enables filetype detection, which restore-cursor depends on
require('config.lazy')
require('config.keymaps')
