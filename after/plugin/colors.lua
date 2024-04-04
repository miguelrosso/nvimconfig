function SetColor(color)
	color = color or "rose-pine"
    vim.cmd("colorscheme "..color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_create_autocmd('ColorScheme', { command = [[highlight CursorLine guibg=#000040 cterm=underline]] })
    vim.api.nvim_set_hl(0, "Whitespace", { bg = "none", fg = "#454545" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "none", fg = "#454545" })
end
SetColor("monochrome")
