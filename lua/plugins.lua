vim.cmd [[packadd packer.nvim]]
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}
return require('packer').startup(function()
--#1 General Plugins--------------------------------------------------------------------------------
use 'wbthomason/packer.nvim'
use 'mbbill/undotree'
use 'tpope/vim-fugitive'
use 'jiangmiao/auto-pairs'
use 'tpope/vim-surround' --https://github.com/tpope/vim-surround"
use 'alvan/vim-closetag' --auto closing tags - web development
use 'numToStr/Comment.nvim'
use 'kyazdani42/nvim-web-devicons'
use 'mhinz/vim-startify'
use 'airblade/vim-gitgutter'
use 'junegunn/vim-easy-align'
----------------------------------------------------------------------------------------------------
--2 Auto Completion Plugins-------------------------------------------------------------------------
use 'neovim/nvim-lspconfig'
use 'github/copilot.vim'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/cmp-nvim-lua'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-vsnip'
--use 'SirVer/ultisnips'
--use 'honza/vim-snippets'
use 'hrsh7th/vim-vsnip'
use 'hrsh7th/vim-vsnip-integ'
--use 'golang/vscode-go'
use 'rafamadriz/friendly-snippets'
use 'onsails/lspkind-nvim' --icons for lsp
-- use 'sbdchd/neoformat'
-- post install (yarn install | npm install) then load plugin only for editing supported files
-- use 'prettier/vim-prettier', { 'do': 'yarn install' }
---------------------------------------------------------------------------------
--#3 color settings and look😛---------------------------------------------------
use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}  -- We recommend updating the parsers on update
--use 'lifepillar/vim-gruvbox8'
use 'lifepillar/vim-solarized8'
-- Pslug 'arcticicestudio/nord-vim'
--use 'dracula/vim', { 'as': 'dracula' }
--"use 'morhetz/gruvbox'
--"indentation guidelines
--"minimap
use 'psliwka/vim-smoothie'
--"use 'vim-airline/vim-airline'
use 'hoob3rt/lualine.nvim'
use {'rrethy/vim-hexokinase', run='make hexokinase' } --Color Display"
use 'KabbAmine/vCoolor.vim' --color picker for vim
--Fuzzy Finders and Navigation------------------------------------------------------------------
use 'nvim-lua/popup.nvim'
use 'nvim-lua/plenary.nvim'
use 'nvim-telescope/telescope.nvim'
use {'nvim-telescope/telescope-fzf-native.nvim', run= 'make' }
--"fuzzy finedr using fzf
--use 'junegunn/fzf', { 'do': { -> fzf#install() } }
--use 'junegunn/fzf.vim'
-- ---------------------------------------------------------------------------------
--use 'lervag/vimtex',{'do':'latex'}
end)
