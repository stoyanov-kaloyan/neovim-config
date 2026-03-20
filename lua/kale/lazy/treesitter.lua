return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
        config = function()
            local ts = require("nvim-treesitter")

            ts.install({
                "vimdoc", "javascript", "typescript",
                "c", "lua", "rust", "jsdoc", "bash", "go",
                "html", "css", "scss", "json", "yaml", "markdown",
                "solidity"
            }, { prefer_prebuilt = true })

            vim.api.nvim_create_autocmd("FileType", {
                callback = function(ev)
                    local lang = ev.match
                    if lang == "html" then return end
                    pcall(vim.treesitter.start, ev.buf, lang)
                end,
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("treesitter-context").setup({
                enable = true,
                multiwindow = false,
                max_lines = 0,
                min_window_height = 0,
                line_numbers = true,
                multiline_threshold = 20,
                trim_scope = "outer",
                mode = "cursor",
                separator = nil,
                zindex = 20,
                on_attach = nil,
            })
        end,
    },
}
