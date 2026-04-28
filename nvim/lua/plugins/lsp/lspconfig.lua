return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "pyright", "lua_ls" },
    })

    -- pyright
    vim.lsp.config("pyright", {
      settings = {
        python = {
          analysis = {
            autoSearchPaths = true,
            diagnosticMode = "openFilesOnly",
            typeCheckingMode = "basic",
          },
        },
      },
    })

    -- lua_ls
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = { version = "LuaJIT" },
          workspace = {
            checkThirdParty = false,
            library = { vim.fn.stdpath("config") .. "/lua" },
          },
          completion = { callSnippet = "Both" },
          diagnostics = { globals = { "vim" } },
        },
      },
    })

    vim.lsp.enable("pyright")
    vim.lsp.enable("lua_ls")

    -- Rounded borders (0.12 API)
    vim.lsp.handlers["textDocument/hover"] = function(err, result, ctx, config)
      vim.lsp.handlers.hover(err, result, ctx, vim.tbl_extend("force", config or {}, { border = "rounded" }))
    end
    vim.lsp.handlers["textDocument/signatureHelp"] = function(err, result, ctx, config)
      vim.lsp.handlers.signature_help(err, result, ctx, vim.tbl_extend("force", config or {}, { border = "rounded" }))
    end

    -- Diagnostics
    vim.diagnostic.config({
      virtual_text = { prefix = "●", spacing = 4 },
      float = { border = "rounded", style = "minimal" },
    })

    -- Keymaps
    local map = vim.keymap.set
    map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
    map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
    map("n", "<leader>gr", vim.lsp.buf.references, { desc = "References" })
    map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
    map("n", "]d", function() vim.diagnostic.jump({ count = 1 }) end, { desc = "Next diagnostic" })
    map("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end, { desc = "Prev diagnostic" })
  end,
}
