return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.g.vimtex_view_method = "general"
        vim.g.vimtex_view_general_viewer = "/mnt/c/Users/kaloy/AppData/Local/SumatraPDF/SumatraPDF.exe"
        vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

        vim.g.vimtex_compiler_latexmk = {
            executable = "latexmk",
            options = {
                "-pdf",
                "-interaction=nonstopmode",
                "-synctex=1",
            },
            out_dir = "build",
        }
    end,
}
