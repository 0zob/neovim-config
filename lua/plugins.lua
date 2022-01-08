vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

use 'wbthomason/packer.nvim'

use 'neovim/nvim-lspconfig'

use {'hrsh7th/nvim-cmp',
requires = {
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/cmp-vsnip'},
    {'hrsh7th/vim-vsnip'}
    }
}

use 'edersonferreira/dalton-vim'

use 'folke/lsp-colors.nvim'

use 'tpope/vim-surround'

use 'tpope/vim-fugitive'

use 'mattn/emmet-vim'

use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

use 'andweeb/presence.nvim'

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}

use {
    'akinsho/bufferline.nvim', 
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require("bufferline").setup{} end
}

use {
    "lukas-reineke/indent-blankline.nvim",
    config = function() require("indent_blankline").setup{
        space_char_blankline = " ",
        show_first_indent_level = false,
        filetype_exclude = {
         "help",
         "terminal",
         "dashboard",
         "packer",
         "lspinfo",
         "TelescopePrompt",
         "TelescopeResults",
         "nvchad_cheatsheet",
      },
      buftype_exclude = { "terminal" },

    } end
    
}

use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
}) 
    end
}

use {
    "akinsho/toggleterm.nvim",
    config = function() require("toggleterm").setup{
        size = 10,
        open_mapping = [[<C-\>]],
        direction = 'horizontal',
    } end 
}

use {
    "ray-x/lsp_signature.nvim",
    config = function() require "lsp_signature".setup{
        hint_prefix = "👾 ",
  } end
}

use {'folke/tokyonight.nvim'}

use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require "lualine".setup{
        options = {
            theme = 'tokyonight'
        }
    } end 
}

use 'glepnir/dashboard-nvim'

use 'sainnhe/gruvbox-material'

use 'fedepujol/move.nvim'

use "rebelot/kanagawa.nvim"

use "sheerun/vim-polyglot"

end)

