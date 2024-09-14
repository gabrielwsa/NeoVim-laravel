-- Plugin Mason para gerenciar servidores LSP
return{
  { 
  "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  -- Plugin Mason para integrar com lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "quick_lint_js",
          "html",
          "intelephense",
          "unocss",
          "cssls",
          "tsserver",
          --Formaters
          --"stylua",
          --"phpcbf",
          --"prettier",
        },
      })
    end
  },
  -- Plugin nvim-lspconfig para configurar LSPs
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- Configuração do servidor LSP para Lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        root_dir = function(fname)
          return lspconfig.util.root_pattern(".git")(fname) or lspconfig.util.path.dirname(fname)
        end,
      })

      -- Configuração do servidor LSP para JavaScript
      lspconfig.quick_lint_js.setup({
        capabilities = capabilities
      })

      -- Configuração do servidor LSP para HTML
      lspconfig.html.setup({
        capabilities = capabilities,
        root_dir = function(fname)
          return lspconfig.util.root_pattern(".git")(fname) or lspconfig.util.path.dirname(fname)
        end,
      })

      -- Configuração do servidor LSP para PHP
      lspconfig.intelephense.setup({
        capabilities = capabilities,
        root_dir = function(fname)
          return lspconfig.util.root_pattern("composer.json", ".git")(fname) or lspconfig.util.path.dirname(fname)
        end,
      })

          -- Configuração do servidor LSP para UnoCSS
      lspconfig.unocss.setup({
        capabilities = capabilities,
        filetypes = {"html", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte"},
        root_dir = function(fname)
          return lspconfig.util.root_pattern("unocss.config.js", "unocss.config.ts", ".git")(fname) or lspconfig.util.path.dirname(fname)
        end,
      })

      -- Configuração do servidor LSP para CSS
      lspconfig.cssls.setup({
        capabilities = capabilities,
        root_dir = function(fname)
          return lspconfig.util.root_pattern(".git")(fname) or lspconfig.util.path.dirname(fname)
        end,
      })

      -- Configuração do servidor LSP para TypeScript e JavaScript (incluindo JSX)
      lspconfig.tsserver.setup({
        capabilities = capabilities,
        root_dir = function(fname)
          return lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git")(fname) or lspconfig.util.path.dirname(fname)
        end,
      })

      -- Mapeamento de teclas para hover
      vim.keymap.set('n', '<S-k>', vim.lsp.buf.hover, {})
    end
  },
}

