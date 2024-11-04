-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- EXAMPLE
local servers = { "html", "cssls", "omnisharp", "rust_analyzer", "clangd", "pylsp" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

-- c_sharp specific configs
local pid = vim.fn.getpid()
lspconfig.omnisharp.setup({

  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
    -- We rerouting the definition check through the extension, if the item is from an external source, it will decompile the source and take you there.
    handlers = {
        ["textDocument/definition"] = require('omnisharp_extended').handler,
    },
    cmd = { "C:\\Users\\mouss\\AppData\\Local\\omnisharp-vim\\omnisharp-roslyn\\omnisharp.exe", "--languageserver", "--hostPID", tostring(pid) }
})
