local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
keymap('n','<f2>',':term<CR>',opts)
keymap('n','<f3>',':UndotreeToggle<CR>',opts)
keymap('n','<f4>',':Vex<CR>',opts)
keymap('n','<leader><Right>',':vertical resize +5<cr>',opts)
keymap('n','<leader><Left>',':vertical resize -5<CR>',opts)
keymap('n','<C-s>',':w<CR>',opts)
keymap('i','<C-s>','<ESC>:w<CR>',opts)
vim.cmd('source $HOME/.config/nvim/vim-scripts/key-mappings.vim')
