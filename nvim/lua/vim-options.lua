vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- language config
vim.opt.langmenu = 'en_US.UTF-8'
vim.opt.langmap = 'en'

-- statusline customs
vim.opt.statusline = "%F %h%m%r"
vim.opt.showmode = true


-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Config Neo-tree filesystem window 
vim.keymap.set('n', '<leader><', ':vertical resize -5<CR>', { silent = true })
vim.keymap.set('n', '<leader>-', ':resize -5<CR>', { silent = true })

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

vim.opt.mouse = 'a'
