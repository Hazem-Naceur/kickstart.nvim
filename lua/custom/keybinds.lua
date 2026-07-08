local builtin = require 'telescope.builtin'

-- Set "jk" and "fj" to exit insert mode
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'fj', '<Esc>')
vim.keymap.set('c', 'jk', '<Esc>')
vim.keymap.set('c', 'fj', '<Esc>')

-- Move Highlighted text up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Set half-page jumps to keep curson in mid-screen
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Yank And Paste from registers
vim.keymap.set('n', '<leader>p', '"0p', { noremap = true })
vim.keymap.set('n', '<leader>P', '"+p', { noremap = true })
vim.keymap.set('n', '<leader>y', '"+y', { noremap = true })
vim.keymap.set('v', '<leader>y', '"+y', { noremap = true })

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

