local function createFloatingWindow()
  local width = vim.api.nvim_win_get_width(0)
  print(width)
  local bufh = vim.api.nvim_create_buf(false,true)
  local winId = vim.api.nvim_open_win(bufh,true,{
	  relative='editor',
	  width=width-4,
	  height=10,
	  col=2,
	  row=2,
  })

end
return {
	    createFloatingWindow = createFloatingWindow
}
