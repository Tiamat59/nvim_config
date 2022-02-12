return require('packer').startup(function()
    
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  use { 'joshdick/onedark.vim' }

  use {
	'hoob3rt/lualine.nvim',
  	requires = {'kyazdani42/nvim-web-devicons'}
  } 

  -- Visual Shortkey  
  use { 'AckslD/nvim-whichkey-setup.lua',
    requires = {'liuchengxu/vim-which-key'},
  }

  -- Floaterm
  use { 'voldikss/vim-floaterm' }

  -- Telescope 
  use { 
      'nvim-telescope/telescope.nvim',
      requires = {
	      {'nvim-lua/popup.nvim'}, 
	      {'nvim-lua/plenary.nvim'}
      }
  }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-lua/completion-nvim' }
  use { 'nvim-lua/lsp_extensions.nvim' }

  -- NerdTree
  use { 'preservim/nerdtree' }

  -- Lua development
  -- use { 'tjdevries/nlua.nvim' }


  -- Vim dispatch
  -- use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  -- use { 'tpope/vim-fugitive' }

end)
