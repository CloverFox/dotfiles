local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Package manager

    use 'williamboman/mason.nvim'    
    use 'williamboman/mason-lspconfig.nvim'

    use 'neovim/nvim-lspconfig' 
    use 'simrat39/rust-tools.nvim'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

    use 'folke/lsp-colors.nvim'

    --    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    --
    --    use 'williamboman/nvim-lsp-installer'
    --    use 'hrsh7th/cmp-nvim-lsp'
    --    use 'hrsh7th/cmp-buffer'
    --    use 'hrsh7th/cmp-path'
    --    use 'hrsh7th/cmp-cmdline'
    --    use 'hrsh7th/nvim-cmp'
    --
    --    use 'L3MON4D3/LuaSnip'
    --    use 'saadparwaiz1/cmp_luasnip'
    --
    --    use {
    --        'nvim-treesitter/nvim-treesitter',
    --        run = ':TSUpdate'
    --    }
    --    use 'jlcrochet/vim-razor'
    --
    --    use {
    --        'kyazdani42/nvim-tree.lua',
    --        requires = {
    --            'kyazdani42/nvim-web-devicons', -- optional, for file icon
    --        },
    --        config = function() require'nvim-tree'.setup {} end
    --    }
    --
    --    use {
    --        'nvim-telescope/telescope.nvim',
    --        requires = { {'nvim-lua/plenary.nvim'} }
    --    }
    --
    --    use {
    --        'lewis6991/gitsigns.nvim',
    --        requires = {
    --            'nvim-lua/plenary.nvim'
    --        },
    --        -- tag = 'release' -- To use the latest release
    --    }
    --
    use 'gruvbox-community/gruvbox'
    --
    --    use 'norcalli/nvim-colorizer.lua'
    --
    --    use 'terrortylor/nvim-comment'
    --
    --    -- Automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
        require('packer').sync()
    end
end)
