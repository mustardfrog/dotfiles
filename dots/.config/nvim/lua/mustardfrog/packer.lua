-- This file can be loaded by calling `lua require('useins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    --use 'simrat39/rust-tools.nvim'

    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'

    use 'lukas-reineke/indent-blankline.nvim'
    use 'ap/vim-css-color'
    use 'preservim/nerdcommenter'
    use 'mattn/emmet-vim'
    use 'sbdchd/neoformat'

    --use 'rakr/vim-one'
    --use 'morhetz/gruvbox'
    --use 'mfussenegger/nvim-dap'
    --use 'rcarriga/nvim-dap-ui'
    --use 'Pocco81/DAPInstall.nvim'
    --use 'bluz71/vim-nightfly-guicolors'
    --use 'whatyouhide/vim-gotham'
    --use 'tomasr/molokai'
    --use 'ayu-theme/ayu-vim'
    --use {'pineapplegiant/spaceduck',  branch = 'main' }
    --use {'dracula/vim',  as = 'dracula' }
    use {'catppuccin/nvim', as = 'catppuccin'}
    --use ('michaelb/sniprun', {['do']= 'bash install.sh'})
    --use ('tzachar/cmp-tabnine', { ['do'] = './install.sh' })
    --use 'windwp/nvim-autopairs'
end)
