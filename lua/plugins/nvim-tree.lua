return{
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true
    vim.keymap.set('n', '<C-SPACE>', ":NvimTreeToggle<CR>")
    
    -- Configuração do nvim-tree com largura ajustada
    require("nvim-tree").setup({
      view = {
        width = 25, -- Define a largura como 25
      },
    })
  end
}
