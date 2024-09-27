local set = vim.opt
set.number = true
set.cursorline = true
set.title = true
set.title = true
set.expandtab = true
set.tabstop = 2
set.shiftwidth = 2
set.showmode = false
set.wrap = false
set.swapfile = false

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("keybinds")
