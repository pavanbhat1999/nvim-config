require('telescope').load_extension('media_files')
require'telescope'.setup {
  extensions = {
    media_files = {
      filetypes = {"png", "webp", "jpg", "jpeg"},
    }
  },
}
