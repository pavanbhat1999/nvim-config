fun! FirstPlugin()
	lua for k in pairs(package.loaded) do if k:match("^firstPlugin") then package.loaded[k] = nil end end
	lua require("firstPlugin").printW()
endfun
augroup FirstPlugin
autocmd!
augroup END
