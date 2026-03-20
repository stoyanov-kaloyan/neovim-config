return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()

        vim.api.nvim_set_keymap('n', '<C-_>', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>',
            { noremap = true, silent = true })
        vim.api.nvim_set_keymap('v', '<C-_>',
            '<esc><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
            { noremap = true, silent = true })
    end
}
