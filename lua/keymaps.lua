-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)
vim.keymap.set('n', '<C-c>', ':close<CR>', opts)
vim.keymap.set('n', '<A-v>', '<C-w>v', opts)
vim.keymap.set('n', '<A-h>', '<C-w>n', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Terminal
vim.keymap.set('n', '<A-t>', ':terminal<CR>', opts)
vim.keymap.set('t', '<A-t>', '<C-\\><C-n>', opts)

-- Tabs
vim.keymap.set('n', '<A-n>', ':tabnew<CR>', opts)
vim.keymap.set('n', '<Tab>', ':tabnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':-tabnext<CR>', opts)
vim.keymap.set('n', '<A-c>', ':tabclose<CR>', opts)
vim.keymap.set('n', '<A-S-c>', ':tabonly<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Telescope stuff
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
require('telescope').setup{
	defaults = {
		path_display={"smart"} 
	}
}
