-- Enable relative line numbers
vim.wo.relativenumber = true

-- Enable absolute line numbers
vim.wo.number = true

-- Set the leader key to space
vim.g.mapleader = " "

-- Disable the GUI cursor
vim.opt.guicursor = ""

-- Set the width of a tab character to 4 spaces
vim.opt.tabstop = 4

-- Set the number of spaces inserted or deleted when pressing tab or backspace
vim.opt.softtabstop = 4

-- Set the number of spaces used for each step of indentation
vim.opt.shiftwidth = 4

-- Convert tab characters to spaces
vim.opt.expandtab = true

-- Enable smart indentation
vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false

-- Disable highlighting of search matches
vim.opt.hlsearch = false

-- Enable incremental search highlighting
vim.opt.incsearch = true

-- Set the column for the colorcolumn (vertical line)
vim.opt.colorcolumn = "80"

-- Always show the sign column
vim.opt.signcolumn = "yes"

-- Set the minimum number of lines to keep above and below the cursor
vim.opt.scrolloff = 8

-- Set the clipboard to use the unnamed register for copy/paste
vim.api.nvim_set_option("clipboard", "unnamed")
