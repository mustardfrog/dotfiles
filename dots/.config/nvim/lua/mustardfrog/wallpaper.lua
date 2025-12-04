local M = {}

M.search_wallpapers = function()
  require("telescope.builtin").find_files({
    find_commands = { "rg", "--files" },
    prompt_title = "< Wallpapers >",
    cwd = "~/Pictures/wallpapers/",
    find_command = { "rg", "--files" },
    previewer = false,
    follow = false,

    attach_mappings = function(bufnr, _)
      require("telescope.actions").select_default:replace(function()
        require("telescope.actions").close(bufnr)

        -- local output = vim.fn.system("killall bash")
        local selection = require("telescope.actions.state").get_selected_entry()

        -- local cmd = "swaymsg output \'*\' bg " .. selection.cwd .. selection.value .. " fill"
        -- local cmd = "swaybg -i " .. selection.cwd ..  selection.value .. " -m fill -o \'*\'"
        -- local cmd = "feh " .. selection.cwd .. "/" .. selection.value .. " --bg-fill"
        local kill_swaybg = "killall swaybg"
        local cmd = "swaybg -i " .. selection.cwd .. "/" .. selection.value .. " -m fill &"
        print(cmd)

        if selection then
          vim.fn.system(kill_swaybg)
          vim.fn.system(cmd)
        end
      end)
      return true
    end,
  })
end

return M
