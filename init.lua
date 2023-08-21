--- nvim/init.lua

require('options')
require('plugins')
require('keymaps')

vim.cmd.colorscheme('slate')
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none', fg = 'white' })
vim.cmd('highlight clear SignColumn')
