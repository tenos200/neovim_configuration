-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x", requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
    use {'folke/tokyonight.nvim', as = "tokyo"}
    use { "ellisonleao/gruvbox.nvim", as="gruvbox"}
    use {'navarasu/onedark.nvim', as="onedark"}
    use { "rose-pine/neovim", name = "rose-pine" }
    use {'Mofiqul/vscode.nvim', as="vscode"}
    use {"folke/tokyonight.nvim", as="tokyonight"}
    use {"loctvl842/monokai-pro.nvim", as="monokai-pro"}
    use {'navarasu/onedark.nvim', as="onedark"}

end)

