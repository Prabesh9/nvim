vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use {'tomasiser/vim-code-dark'}
  use {'kyazdani42/nvim-web-devicons'}
  use {'kyazdani42/nvim-tree.lua'}
  use {
	  'glepnir/galaxyline.nvim',
	  branch = 'main',
	  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
end)
