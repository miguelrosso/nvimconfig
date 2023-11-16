function SetColor(color)
	color = color or "rose-pine"
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_create_autocmd('ColorScheme', { command = [[highlight CursorLine guibg=#000040 cterm=underline]] })
    vim.cmd("colorscheme "..color)
end
SetColor("monochrome")
