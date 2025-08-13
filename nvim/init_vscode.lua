vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.clipboard = 'unnamedplus'

vim.keymap.set({'n', 'v', 'o'}, 'k', 'k', {noremap = true})
vim.keymap.set({'n', 'v', 'o'}, 'j', 'h', {noremap = true})
vim.keymap.set({'n', 'v', 'o'}, 'l', 'j', {noremap = true})
vim.keymap.set({'n', 'v', 'o'}, ';', 'l', {noremap = true})
