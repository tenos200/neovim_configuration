return {
    "loctvl842/monokai-pro.nvim",
    config = function()
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
    end
}
