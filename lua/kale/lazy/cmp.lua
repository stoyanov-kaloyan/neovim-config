return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- LSP source
        "hrsh7th/cmp-buffer",   -- buffer words
        "hrsh7th/cmp-path",     -- file paths
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<CR>"]      = cmp.mapping.confirm({ select = true }),
                -- ["<C-l>"]     = cmp.mapping.select_next_item(),
                -- ["<S-l>"]     = cmp.mapping.select_prev_item(),
            }),
            sources = {
                { name = "nvim_lsp" },
                { name = "buffer" },
                { name = "path" },
            },
        })
    end,
}
