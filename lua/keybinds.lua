--Salvando arquivo com Control-S
vim.keymap.set({'n', 'i'}, '<C-s>', function ()
  vim.cmd(":w")
end)

--Abrindo janela a esquerda
vim.keymap.set('n', '<C-w><C-l>', function ()
  vim.cmd(':vsplit')
end)

--Abrindo janela a direita
vim.keymap.set('n', '<C-w><C-j>', function ()
  vim.cmd(':split')
end)

--Navegar entre as janelas horizontalmente
vim.keymap.set('n', '<C-k>', '<C-w>k', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})

--Navegar entre as janelas verticalmente
vim.keymap.set('n', '<C-l>', '<C-w>l', {})
vim.keymap.set('n', '<C-h>', '<C-w>h', {})
--Para quebrar a linha e escrever(MODO INSERT)
vim.keymap.set('i', '<S-TAB>', '<ESC>o')

vim.keymap.set({'i', 'n'}, '<C-c>', function ()
  if vim.api.nvim_get_mode().mode == 'i' then
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<ESC>", true, false, true), 'n', true)
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("a", true, false, true), 'n', true)
end
end, { noremap = true, silent = true })

