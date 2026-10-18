local o = vim.opt

o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4

o.number = true
o.relativenumber = true
o.colorcolumn = '120'
o.scrolloff = 16

o.ignorecase = true
o.smartcase = true

o.confirm = true
o.completeopt:append({ 'menuone', 'noselect', 'popup' })  -- per :help lsp-completion
o.clipboard = 'unnamedplus'
o.undofile = true
o.mouse = ''  -- lets herdr keep host mouse capture off so Escape isn't swallowed
