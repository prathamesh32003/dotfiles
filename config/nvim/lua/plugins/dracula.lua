return {
    "Mofiqul/dracula.nvim",
    priority = 1000,
    opts = {
        italic_comment = true,
    },
    config = function()
        vim.cmd.colorscheme "dracula"
    end
}
