local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local builtin = require("telescope.builtin")

local function cd_picker()
  pickers.new({}, {
    prompt_title = "Directories",
    finder = finders.new_oneshot_job({
      "fd", "--type", "d"
    }),
    sorter = conf.generic_sorter({}),
    attach_mappings = function(_, map)
      actions.select_default:replace(function(prompt_bufnr)
        actions.close(prompt_bufnr)

        local entry = action_state.get_selected_entry()
        vim.cmd.cd(entry[1])

        print("cwd: " .. vim.fn.getcwd())
      end)

      return true
    end,
  }):find()
end

local function find_config()
  builtin.find_files({
    find_command = {
      "fd",
      "--type", "f",
      ".",
      "-H",
      "-E", "*mozilla*",
      "-E", "*zen*",
      "-E", "*git*",
      vim.fn.expand("~/.config"),
      vim.fn.expand("~/dotfiles"),
    },
  })
end

vim.keymap.set("n", "<leader>cd", cd_picker)
vim.keymap.set("n", "<leader>cc", find_config)
