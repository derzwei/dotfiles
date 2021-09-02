local execute = vim.api.nvim_command

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
end

vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]], false)

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim'                                                          -- Package manager
  use 'neovim/nvim-lspconfig'                                                           -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-compe'                                                              -- Autocompletion plugin
  use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}} -- Statusline written in pure lua.
  use {'npxbr/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}                           -- Lua port of the most famous vim colorscheme
end)
