return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { "stylua", },
            python = { "ruff", },
        },
    },
    config = function()
        vim.keymap.set("n", "F", vim.lsp.buf.format, {})
    end
}
