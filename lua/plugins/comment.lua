return {
    "numToStr/Comment.nvim",
    opts = {},
    keys = {
        {
            "<C-_>",
            function()
                require("Comment.api").toggle.linewise.current()
            end,
            mode = "n",
            desc = "Toggle comment",
        },
    },
}
