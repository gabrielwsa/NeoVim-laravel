return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- Desabilitar netrw logo no início
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Habilitar cores de 24 bits
    vim.opt.termguicolors = true

    -- Mapeamento de teclas para abrir/fechar o nvim-tree
    vim.keymap.set('n', '<C-SPACE>', ":NvimTreeToggle<CR>")
    -- Configuração do nvim-tree com largura ajustada
    require("nvim-tree").setup({
      view = {
        width = 25, -- Define a largura como 25
      },
    })
  end
}

