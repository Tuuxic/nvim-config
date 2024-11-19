-- Remap Ctrl+h to Backspace because terminals register Ctrl+h inputs as BS
vim.keymap.set('n', '<C-h>', '<BS>')
vim.keymap.set('n', '<BS>', '<CMD>BufferPrev<CR>', { silent = true, desc = 'Go to previous tab' })
vim.keymap.set('n', '<C-l>', '<CMD>BufferNext<CR>', { silent = true, desc = 'Go to next tab' })
