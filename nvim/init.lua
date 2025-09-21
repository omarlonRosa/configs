vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



-- Comando para iniciar o live-server
vim.api.nvim_create_user_command('LiveServer', function()
    vim.fn.system('live-server &')
end, { desc = 'Inicia o live-server em segundo plano' })

-- Comando para parar o live-server
vim.api.nvim_create_user_command('StopLive', function()
    vim.fn.system('pkill live-server')
end, { desc = 'Para o live-server' })

vim.lsp.set_log_level("debug")


require("lazy").setup("plugins")
require("vim-options")
