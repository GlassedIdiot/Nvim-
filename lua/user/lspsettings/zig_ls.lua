return {
local lspconfig = require("lspconfig")
local on_attach = function(client, bufnr) end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.zls.setup({
    on_attach = on_attach,
    cmd = { "zls" },
    filetypes = { "zig" },
    single_file_support = true,
    capabilities = capabilities,
    enable_argument_placeholders = true;
    inlay_hints_show_parameter_name = true;
    inlay_hints_show_builtin = true;
})
}
