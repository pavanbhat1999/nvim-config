local function openConfig()
    local file = "$HOME/.config/nvim/init.lua"
    vim.api.nvim_command('edit' .. file)
end
local function openTerminal()
    vim.api.nvim_command(':terminal')
end

return {openConfig = openConfig, openTerminal = openTerminal}
