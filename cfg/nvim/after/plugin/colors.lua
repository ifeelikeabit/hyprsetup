function SetTheme(color,blur)
	color = color or "gruvbox-material"
	blur = blur or "0"
        vim.cmd.colorscheme(color)
	if blur == "1"
		then
			vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
			vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
		end
end

SetTheme();
