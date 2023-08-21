--- nvim/lua/options.lua

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local options = {
  guicursor = '',
  termguicolors = true,
  tabstop = 8,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = false,
  hlsearch = false,
  incsearch = true,
  ignorecase = true,
  smartcase = true,
  number = true,
  relativenumber = true,
  splitbelow = true,
  splitright = true,
  scrolloff = 8,
  signcolumn = 'number',
}

for key,value in pairs(options) do
  vim.o[key] = value
end
