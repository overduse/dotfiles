return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    -- Mason setup
    require("mason").setup({
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- Mason-lspconfig: auto-install servers that are configured with lspconfig
    require("mason-lspconfig").setup({
      ensure_installed = {
        "pyright",
        "clangd",
        "stylua", -- Lua formatter
      },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      },
    })

    -- pyright 配置
    vim.lsp.config("pyright", {
      settings = {
        python = {
          analysis = {
            autoSearchPaths = true,
            diagnosticMode = "openFilesOnly",
            useLibraryCodeForTypes = true,
            typeCheckingMode = "basic",
          },
        },
      },
    })

    -- 告诉 lua_ls 使用 Neovim 的 vim 全局变量
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
            special = {
              reload = "require",
            },
          },
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME .. "/lua",
              vim.fn.stdpath "config" .. "/lua",
            },
          },
          completion = {
            workspaceWord = true,
            callSnippet = "Both",
          },
          hint = {
            enable = true,
            setType = false,
            paramType = true,
            paramName = "Disable",
            semicolon = "Disable",
            arrayIndex = "Disable",
          },
          doc = {
            privateName = { "^_" },
          },
          type = {
            castNumberToInteger = true,
          },
          diagnostics = {
            displayContext = 1,
            disable = { "incomplete-signature-doc", "trailing-space" },
            groupSeverity = {
              strong = "Warning",
              strict = "Warning",
            },
            groupFileStatus = {
              ["ambiguity"] = "Opened",
              ["await"] = "Opened",
              ["codestyle"] = "None",
              ["duplicate"] = "Opened",
              ["global"] = "Opened",
              ["luadoc"] = "Opened",
              ["redefined"] = "Opened",
              ["strict"] = "Opened",
              ["strong"] = "Opened",
              ["type-check"] = "Opened",
              ["unbalanced"] = "Opened",
              ["unused"] = "Opened",
            },
            unusedLocalExclude = { "_*" },
            globals = { "vim" },
          },
          format = {
            enable = false,
            defaultConfig = {
              indent_style = "space",
              indent_size = "2",
              continuation_indent_size = "2",
            },
          },
        },
      },
    })

    -- clangd: C++ 和 CUDA（.cu, .cuh）天然支持
    -- Triton 文件是 .py，pyright 处理
    vim.lsp.config("clangd", {
      cmd = { "clangd" },
      settings = {
        clangd = {
          -- CUDA 相关
          compilationDatabaseChanges = true,
        },
      },
    })

    -- 启用语言服务器
    vim.lsp.enable("pyright")
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("clangd")

    -- Diagnostic 跳转
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })

  end,
}
