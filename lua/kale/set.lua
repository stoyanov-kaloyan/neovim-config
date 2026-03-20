vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- copy paste provider
vim.g.clipboard = {
    name = "win32yank",
    copy = {
        ["+"] = "win32yank.exe -i --crlf",
        ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
        ["+"] = "win32yank.exe -o --lf",
        ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
}

vim.opt.clipboard = "unnamedplus"

-- auto reload files changed outside
vim.opt.autoread = true
vim.opt.autowrite = true

-- check external modifications on common focus events
vim.api.nvim_create_autocmd(
    { "BufEnter", "CursorHold", "FocusGained", "WinEnter" },
    { command = "checktime" }
)

vim.cmd.highlight('DiagnosticUnderlineError gui=undercurl')
vim.cmd.highlight('DiagnosticUnderlineWarn gui=undercurl')

vim.opt.termguicolors = true
