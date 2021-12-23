local function openConfig()
	local file = "$HOME/.config/nvim/init.lua"
	vim.api.nvim_command('edit'..file)
end
return {
     openConfig = openConfig
}
