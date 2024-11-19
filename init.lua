--
--
--  ███████████ █████  █████ █████  █████ █████ █████ █████   █████████
-- ░█░░░███░░░█░░███  ░░███ ░░███  ░░███ ░░███ ░░███ ░░███   ███░░░░░███
-- ░   ░███  ░  ░███   ░███  ░███   ░███  ░░███ ███   ░███  ███     ░░░   █████
--     ░███     ░███   ░███  ░███   ░███   ░░█████    ░███ ░███          ███░░
--     ░███     ░███   ░███  ░███   ░███    ███░███   ░███ ░███         ░░█████
--     ░███     ░███   ░███  ░███   ░███   ███ ░░███  ░███ ░░███     ███ ░░░░███
--     █████    ░░████████   ░░████████   █████ █████ █████ ░░█████████  ██████
--    ░░░░░      ░░░░░░░░     ░░░░░░░░   ░░░░░ ░░░░░ ░░░░░   ░░░░░░░░░  ░░░░░░
--
--
--
--  ██████   █████ █████   █████ █████ ██████   ██████
-- ░░██████ ░░███ ░░███   ░░███ ░░███ ░░██████ ██████
--  ░███░███ ░███  ░███    ░███  ░███  ░███░█████░███
--  ░███░░███░███  ░███    ░███  ░███  ░███░░███ ░███
--  ░███ ░░██████  ░░███   ███   ░███  ░███ ░░░  ░███
--  ░███  ░░█████   ░░░█████░    ░███  ░███      ░███
--  █████  ░░█████    ░░███      █████ █████     █████
-- ░░░░░    ░░░░░      ░░░      ░░░░░ ░░░░░     ░░░░░
--
--
--
--    █████████     ███████    ██████   █████ ███████████ █████   █████████
--   ███░░░░░███  ███░░░░░███ ░░██████ ░░███ ░░███░░░░░░█░░███   ███░░░░░███
--  ███     ░░░  ███     ░░███ ░███░███ ░███  ░███   █ ░  ░███  ███     ░░░
-- ░███         ░███      ░███ ░███░░███░███  ░███████    ░███ ░███
-- ░███         ░███      ░███ ░███ ░░██████  ░███░░░█    ░███ ░███    █████
-- ░░███     ███░░███     ███  ░███  ░░█████  ░███  ░     ░███ ░░███  ░░███
--  ░░█████████  ░░░███████░   █████  ░░█████ █████       █████ ░░█████████
--   ░░░░░░░░░     ░░░░░░░    ░░░░░    ░░░░░ ░░░░░       ░░░░░   ░░░░░░░░░
--
--

-- Load globals (vim.g settings)
require 'settings.globals'

-- Load options
require 'settings.options'

-- Load basic keymaps
require 'settings.keymaps'

-- Load basic autocmds
require 'settings.autocmds'

-- Setup the lazy.nvim plugin manager
require('plugins.lazy').setup()

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
    require 'plugins.sleuth',
    require 'plugins.comment',
    require 'plugins.whichkey',
    require 'plugins.telescope',
    require 'plugins.lspconfig',
    require 'plugins.conform',
    require 'plugins.cmp',
    require 'plugins.colorscheme',
    require 'plugins.lualine',
    require 'plugins.todocomments',
    require 'plugins.mini',
    require 'plugins.treesitter',
    require 'plugins.debug',
    require 'plugins.indentline',
    require 'plugins.lint',
    require 'plugins.autopairs',
    require 'plugins.neotree',
    require 'plugins.barbar',
    require 'plugins.gitsigns', -- adds gitsigns recommend keymaps
}, {
    ui = {
        -- If you are using a Nerd Font: set icons to an empty table which will use the
        -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
        icons = vim.g.have_nerd_font and {} or {
            cmd = '⌘',
            config = '🛠',
            event = '📅',
            ft = '📂',
            init = '⚙',
            keys = '🗝',
            plugin = '🔌',
            runtime = '💻',
            require = '🌙',
            source = '📄',
            start = '🚀',
            task = '📌',
            lazy = '💤 ',
        },
    },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
