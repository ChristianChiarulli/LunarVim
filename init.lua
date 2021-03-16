vim.cmd('set rtp+=~/.config/nvcode')
if vim.g.vscode then
  vim.cmd('source ~/.config/nvim/vimscript/nv-vscode/init.vim')
  require('settings')
else
  -- General mappings
  require('plugins')
  require('keymappings')
  require('settings')
  require('colorscheme')
  require('nv-utils')

  -- Plugins
  require('nv-compe')
  require('nv-colorizer')
  require('nv-nvimtree')
  require('nv-treesitter')
  require('nv-barbar')
  require('nv-quickscope')
  require('nv-gitsigns')
  require('nv-nvim-autopairs')
  require('nv-illuminate')
  require('nv-neogit')
  require('nv-comment')
  require('nv-rnvimr')
  require('nv-startify')
  require('nv-telescope')
  require('nv-floaterm')
  require('nv-vim-rooter')
  require('nv-closetag')
  require('nv-matchup')
  require('nv-lspkind')
  require('nv-hop')
  require('nv-gitblame')
  require('nv-galaxyline')

  -- Which Key (Hope to replace with Lua plugin someday)
  vim.cmd('source ~/.config/nvcode/vimscript/nv-whichkey/init.vim')
  vim.cmd('source ~/.config/nvcode/vimscript/functions.vim')

  -- LSP
  require('lsp')
  require('lsp.efm-general-ls')
  require('lsp.lua-ls')
  require('lsp.bash-ls')
  require('lsp.js-ts-ls')
  require('lsp.python-ls')
  require('lsp.json-ls')
  require('lsp.yaml-ls')
end

