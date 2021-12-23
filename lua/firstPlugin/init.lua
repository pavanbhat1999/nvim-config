local function openConfig()
    local file = "$HOME/.config/nvim/init.lua"
    vim.api.nvim_command('edit' .. file)
end

local function openTerminal() vim.api.nvim_command(':terminal') end

local function openWindow()
    local bufh = vim.api.nvim_create_buf(true, false)
    local winh = vim.api.nvim_open_win(bufh, true, {
        relative = 'editor',
        width = 100,
        height = 35,
        row = 10,
        col = 50,
        border = 'single'
    })
end

return {

    openConfig = openConfig,

    openTerminal = openTerminal,

    openWindow = openWindow

}
