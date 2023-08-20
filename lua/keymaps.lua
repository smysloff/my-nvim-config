--- nvim/lua/keymaps.lua

local builtin = require('telescope.builtin')
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>e',  vim.cmd.Explore)
vim.keymap.set('n', '<leader>bl', vim.cmd.buffers)
vim.keymap.set('n', '<leader>bp', vim.cmd.bprevious)
vim.keymap.set('n', '<leader>bn', vim.cmd.bnext)
vim.keymap.set('n', '<leader>bd', vim.cmd.bdelete)
vim.keymap.set('n', '<leader>wq', '<C-w>q')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>a', mark.add_file, {})
vim.keymap.set('n', '<leader>l', ui.toggle_quick_menu, {})
vim.keymap.set('n', '<leader>1', function() ui.nav_file(1) end, {})
vim.keymap.set('n', '<leader>2', function() ui.nav_file(2) end, {})
vim.keymap.set('n', '<leader>3', function() ui.nav_file(3) end, {})
vim.keymap.set('n', '<leader>4', function() ui.nav_file(4) end, {})
vim.keymap.set('n', '<leader>n', ui.nav_next, {})
vim.keymap.set('n', '<leader>p', ui.nav_prev, {})

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
