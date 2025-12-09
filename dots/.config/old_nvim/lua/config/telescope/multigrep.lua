local M = {}

local search_multigrep = function(opts)
  opts = opts or {}
  opts.cwd = opts.cwd or vim.uv.cwd()
end


-- all the time is tat you have every weree ctrl quick fix list
--
-- do you need to make the change and its really really nice intresting stuffs vim keymap sap

--@diagnostic disable-next-line: depracated
M.setup = function()
  search_multigrep()
end

return M
