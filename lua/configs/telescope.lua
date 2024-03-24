local defaults = require("nvchad.configs.telescope")

local options = {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = function(...)
          require("telescope.actions").move_selection_next(...)
        end,
        ["<C-k>"] = function(...)
          require("telescope.actions").move_selection_previous(...)
        end,
      },
    },
    wrap_results = true,
    path_display = {
      truncate = 3,
    },
    file_ignore_patterns = {
      ".git/"
    },
  },
  pickers = {
    find_files = {
      preview = false,
      hidden = true,
    },
  },
}

local result = vim.tbl_deep_extend("force", defaults, options)

require("telescope").setup(result)
