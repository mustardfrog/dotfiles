local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

telescope = require('telescope')
builtin = require('telescope.builtin')
actions = require('telescope.actions')

require('telescope').setup{
defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  },
  file_ignore_patterns = { 
      "./node_modules" 
  },
  pickers = {
      --find_files = {
          --theme = "ivy",
      --},
      --live_grep = {
          --theme = "ivy",
      --},
    -- Default configuration for builtin pickers goes here:
  },
  extensions = {
  },
}

local M = {}

M.search_wallpapers = function() 
    builtin.find_files({
        prompt_title = "< Wallpapers >",
        cwd = "~/Pictures/wallpapers/",
        find_command = {"rg", "--files" },
        previewer = false,
        follow = false,
        attach_mappings = function(bufnr, _)
			actions.select_default:replace(function()
				actions.close(bufnr)

				local selection = require("telescope.actions.state").get_selected_entry(bufnr)

                local cmd = "swaymsg output \'*\' bg " .. selection.cwd .. "/" .. selection.value .. " fill"
                print(cmd)

				if selection then
					vim.fn.system(cmd)
				end
			end)
			return true
		end,
    })
end
return M
