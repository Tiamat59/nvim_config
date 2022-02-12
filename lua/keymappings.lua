-- Standard keymapping
vim.g.floaterm_keymapi_new = '<F7>'
vim.g.floaterm_keymap_prev = '<F8>'
vim.g.floaterm_keymap_next = '<F9>'
vim.g.floaterm_keymap_toggle = '<F12>'

-- which-key mapping
local wk = require('whichkey_setup')

local keymap = {
    f = {
        name = '+find',
        f = {'<Cmd>Telescope find_files<CR>', 'find'},
        g = {'<Cmd>Telescope live_grep<CR>', 'grep'},
        b = {'<Cmd>Telescope buffers<CR>', 'buffers'},
        h = {'<Cmd>Telescope help_tags<CR>', 'help tags'},
    },
    t = {
        name = '+terminal',
        n = {'<Cmd>FloatermNew --wintype=popup --height=6<CR>', 'terminal'},
        f = {'<Cmd>FloatermNew fzf<CR>', 'fzf'},
        g = {'<Cmd>FloatermNew lazygit<CR>', 'git'},
        d = {'<Cmd>FloatermNew lazydocker<CR>', 'docker'},
        p = {'<Cmd>FloatermNew python<CR>', 'python'},
        t = {'<Cmd>FloatermToggle<CR>', 'toogle'},
    },
    -- Corriger les pattern windows
    w = { 
        name = '+windows' ,
        w = {'<Cmd><C-W>w<CR>', 'other-window'},
        d = {'<Cmd><C-W>c<CR>', 'delete-window'},
        ['-'] = {'<Cmd><C-W>s<CR>', 'split-window-below'},
        ['|'] = {'<Cmd>v<CR>', 'split-window-right'} ,
        ['2'] = {'<Cmd><C-W>v<CR>', 'layout-double-columns'},
        h = {'<Cmd><C-W>h<CR>', 'window-left'},
        j = {'<Cmd><C-W>j<CR>', 'window-below'},
        l = {'<Cmd><C-W>l<CR>', 'window-right'},
        k = {'<Cmd><C-W>k<CR>', 'window-up'},
        H = {'<Cmd><C-W>5<<CR>', 'expand-window-left'},
        J = {'<Cmd>:resize +5<CR>', 'expand-window-below'},
        L = {'<Cmd><C-W>5><CR>', 'expand-window-right'},
        K = {'<Cmd>:resize -5<CR>', 'expand-window-up'},
        ['='] = {'<Cmd><C-W>=<CR>', 'balance-window'},
        s = {'<Cmd>s<CR>', 'split-window-below'},
        v = {'<Cmd><C-W>v<CR>', 'split-window-below'},
        ['?'] = {'<Cmd>Windows<CR>', 'fzf-window'},
    },
    -- NERDTree
    q = {'<Cmd>:NERDTreeToggle<CR>', 'NERDTree'},
}
wk.register_keymap('leader',keymap)
