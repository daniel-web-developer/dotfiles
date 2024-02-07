-- Generated with ChatGPT
-- Load lspconfig
local lspconfig = require('lspconfig')

-- Configure clangd
lspconfig.clangd.setup{
  cmd = { "clangd", "--background-index" }, -- Adjust the command as needed
  filetypes = { "c", "cpp" }, -- Use clangd for C and C++ files
  on_attach = function(client, bufnr)
    -- Your custom on_attach function goes here, or you can remove this line if not needed
  end
}

