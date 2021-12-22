local function printW()
  print("Hello World!")
  local width = vim.api.nvim_win_get_width(0)
  print(width)

end
return {
	    printW = printW
}
