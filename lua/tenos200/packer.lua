-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', 
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
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
    use {"folke/tokyonight.nvim", as="tokyonight"}
    use {'Mofiqul/vscode.nvim', as="vscode"}
    use {"loctvl842/monokai-pro.nvim", as="monokai"}
    use { "catppuccin/nvim", as = "catppuccin" }
end)

