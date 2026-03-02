return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors — warm cream
                bg = "#FFFCF0",
                bg_dark = "#F0EDE0",
                bg_highlight = "#CECDC3",

                -- Foreground colors — near-black text
                fg = "#100F0F",
                fg_dark = "#6F6E69",
                comment = "#6F6E69",

                -- Accent colors — Phoenix palette
                red = "#6094BA",
                orange = "#EC482A",
                yellow = "#FDC95F",
                green = "#771E29",
                cyan = "#FF9549",
                blue = "#771E29",
                purple = "#EC482A",
                magenta = "#FF9549",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
