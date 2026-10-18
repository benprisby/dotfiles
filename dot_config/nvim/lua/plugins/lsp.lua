return {
  {
    'neovim/nvim-lspconfig',
    lazy = false,
    config = function()
      -- Neovim's LuaJIT runtime, per lspconfig's lua_ls docs
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT', path = { 'lua/?.lua', 'lua/?/init.lua' } },
            workspace = { checkThirdParty = false, library = { vim.env.VIMRUNTIME } },
          },
        },
      })
      -- pyright's own default level unless a project configures one (basedpyright defaults to "recommended")
      vim.lsp.config('basedpyright', {
        settings = { basedpyright = { analysis = { typeCheckingMode = 'standard' } } },
      })
      -- basedpyright only speaks UTF-16 positions; match it so both Python servers agree
      vim.lsp.config('ruff', {
        capabilities = { general = { positionEncodings = { 'utf-16' } } },
      })
      vim.lsp.enable({
        'ansiblels', 'basedpyright', 'bashls', 'clangd', 'lua_ls',
        'ruff', 'terraformls', 'ts_ls', 'yamlls',
      })
      vim.diagnostic.config({ virtual_text = true })
    end,
  },
}
