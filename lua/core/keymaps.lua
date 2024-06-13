vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 2
vim.opt.swapfile = false
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.wo.relativenumber = true
vim.wo.number = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Center Editor
vim.keymap.set('n', '<leader>=', "<cmd>:NoNeckPain<CR><cmd><CR>")

-- Copy to clipboard
vim.opt.clipboard = "unnamedplus"

-- Remove found pattern highlighting
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- better scrolling
vim.keymap.set('n', '<C-d>', '10j')
vim.keymap.set('n', '<C-u>', '10k')

-- resize windows
vim.keymap.set('n', '<C-.>', ':vertical resize +10<CR>')
vim.keymap.set('n', '<C-,>', ':vertical resize -10<CR>')
vim.keymap.set('n', '<C-=>', '<C-w>=')

-- trigger `autoread` when files changes on disk
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})

-- exit terminal mode 
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

