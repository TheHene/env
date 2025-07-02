return {
    {
        'nvim-telescope/telescope.nvim',tag = '0.1.4',
        cmd = "Telescope",
        keys = {
            {
                "<C-f>",
                mode = "n",
                function() require("telescope.builtin").find_files() end,
                desc = "telescope find files"
            },
            {
                "<leader>pf",
                mode = "n",
                function() require("telescope.builtin").git_files() end,
                desc = "telescope find files"
            },
            {
                "<leader>pg",
                mode = "n",
                function()
                    require("telescope.builtin").live_grep({})
                end,
                desc = "telescope grep string"
            },
            {
                "<leader>ps",
                mode = "n",
                function()
                    require("telescope.builtin").grep_string({
                        search = vim.fn.input("Grep > ")
                    })
                end,
                desc = "telescope grep string"
            },
            {
                "<leader>pw",
                mode = "n",
                function()
                    require("telescope.builtin").grep_string({
                        search = vim.fn.expand("<cword>")
                    })
                end,
                desc = "telescope grep string"
            },
            {
                "<leader>pb",
                mode = "n",
                function() require("telescope.builtin").buffers() end,
                desc = "telescope buffers"
            },
        },
        config = function()
            local opts = {
                extensions = {
                    file_browser = {
                        respect_gitignore = false,
                        hijack_netrw = true,
                        hidden = true,
                    }
                }
            }
            require('telescope').setup(opts)
        end

    }
}
