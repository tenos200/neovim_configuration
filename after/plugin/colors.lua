--[[function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd("let g:gruvbox_transparent_bg = 1")
    vim.cmd("autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE")
	vim.cmd.colorscheme(color)
end
ColorMyPencils()
-- Lua
require('onedark').setup  {
    -- Main options --
    style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = true,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {
        Visual = { fg = "#000000", bg = "#add8e6" }, -- Set foreground and background colors for visual mode selection
        VisualNOS = { fg = "#000000", bg = "#add8e6" }, -- Set foreground and background colors for visual mode selection in non-Object
    },

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },

}
vim.cmd("colorscheme onedark")
]]
-- Lua
require("monokai-pro").setup({
  transparent_background = true,
  terminal_colors = false,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  styles = {
    comment = {},
    keyword = { bold = true }, -- any other keyword
    type = {}, -- (preferred) int, long, char, etc
    storageclass = {}, -- static, register, volatile, etc
    structure = {}, -- struct, union, enum, etc
    parameter = {}, -- parameter pass in function
    annotation = {},
    tag_attribute = {}, -- attribute of tag in reactjs
  },
  filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
  -- Enable this will disable filter option
  day_night = {
    enable = false, -- turn off by default
    day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background", -- underline | background
  background_clear = {
    -- "float_win",
    "toggleterm",
    "telescope",
    -- "which-key",
    "renamer",
    "notify",
    -- "nvim-tree",
     "neo-tree",
    -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
  },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
    },
    indent_blankline = {
      context_highlight = "pro", -- default | pro
      context_start_underline = true,
    },
  },
    override = function(c)
        return {
            Visual = { bg = "#8a8787" }, -- Set background color for visual mode selection
            VisualNOS = { bg = "#8a8787" }, -- Set background color for visual mode selection in non-Object
            -- ... (other highlight groups you want to override)
        }
    end,
})
vim.cmd("colorscheme monokai-pro")
--changes the color of the bottom bar
vim.cmd('highlight StatusLine guifg=white guibg=transparent')
