-- options.lua
-- Author: Shavak Sinanan <shavak@gmail.com>

-- Ported from .vimrc.
vim.o.expandtab = false
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.wrap = true
vim.o.linebreak = true
vim.o.list = false
vim.o.number = true
vim.o.cursorline = true
vim.o.title = true
vim.o.foldmethod = "indent"
vim.opt.clipboard:append { "unnamed", "unnamedplus" }
vim.cmd("set mouse=")
