-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Open NeoTree on nvim startup
vim.api.nvim_create_autocmd('VimEnter', {
    desc = 'Open NeoTree on startup',
    callback = function()
        -- Get the type of the current buffer
        local filetype = vim.api.nvim_buf_get_option(0, 'filetype')
        local neotree = require 'neo-tree.command'

        -- nvim opened without a file specified
        if filetype == nil or filetype == '' then
            neotree.execute { action = 'focus', source = 'filesystem' }
            return
        end

        -- nvim opened with a given dir
        if filetype == 'directory' then
            neotree.execute { action = 'focus', source = 'filesystem' }
            return
        end

        -- current buffer is a file
        neotree.execute { action = 'show' }
    end,
})
