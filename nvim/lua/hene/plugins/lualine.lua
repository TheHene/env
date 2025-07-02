return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = {
	  "kyazdani42/nvim-web-devicons"
    },
    opts = {
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {{'filename', file_status = false, path = 1 }},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'},
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {{'filename', file_status = false, path = 1},},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
    }
  }
}
