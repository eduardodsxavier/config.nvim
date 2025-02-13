require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'lua_ls',
        'eslint',
        'pyright',
        'ts_ls',
        'jdtls',
        'clangd',
        'rust_analyzer',
    }
})


local lsp_attach = function(client, bufnr)
    local opts = {buffer = bufnr}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup({
    lsp_attach = lsp_attach,
    capabilities = capabilities,
})

require('lspconfig').eslint.setup({
    lsp_attach = lsp_attach,
    capabilities = capabilities,
})

require('lspconfig').ts_ls.setup({
    lsp_attach = lsp_attach,
    capabilities = capabilities,
})

require('lspconfig').pyright.setup({
    lsp_attach = lsp_attach,
    capabilities = capabilities,
})

require('lspconfig').jdtls.setup({
    lsp_attach = lsp_attach,
    capabilities = capabilities,
})

require('lspconfig').clangd.setup({
    lsp_attach = lsp_attach,
    capabilities = capabilities,
})

require('lspconfig').rust_analyzer.setup({
    lsp_attach = lsp_attach,
    capabilities = capabilities,
})
