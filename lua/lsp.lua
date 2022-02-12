-- nvim_lsp object
local nvim_lsp = require('lspconfig')

-- function to attach completion when setting up lsp
local on_attach = function(client)
    require('completion').on_attach(client)
end

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
--[[
require('lsp_extensions').inlay_hints{
    highlight = "Comment",
    prefix = " > ",
    enabled = { "TypeHint", "ChainingHint", "ParameterHint" }
}
]]

-- Enable rust_analyzer
nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })

-- Enable Gopls
-- nvim_lsp.gopls.setup({ on_attach=on_attach })
nvim_lsp.gopls.setup{
    on_attach = on_attach, 
    cmd = {"gopls", "serve"},
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}
