-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Saving keymaps
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save the file. [W]rite data to disk', silent = true })

-- Movement remaps:
vim.keymap.set('n', 'L', '$', { desc = 'Go to the end of the line' })
vim.keymap.set('n', 'H', '_', { desc = 'Go to the begining of the line' })

-- Comment remaps:
vim.keymap.set('n', '<C-/>', 'gcc', { desc = 'Toggle comment of line' })
vim.keymap.set('v', '<C-/>', 'gc', { desc = 'Toggle comment of selection' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>vv', '<C-w><C-v>', { desc = 'Open new [V]iew [V]ertically' })
vim.keymap.set('n', '<leader>vk', '<C-w><C-q>', { desc = 'Close [V]iew by [K]illing it' })
