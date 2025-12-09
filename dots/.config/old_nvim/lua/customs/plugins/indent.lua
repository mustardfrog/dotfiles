return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function() 
require('ibl').setup {
  indent = { char = "~" },
  whitespace = {
    -- highlight = { "Whitespace", "CursorColumn", },
    remove_blankline_trail = false,
  },
  scope = { enabled = true, char = "┃", highlight = { "Function" } },
}
    end
  }
}
