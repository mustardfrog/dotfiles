--[[
if vim.o.background == "light" and vim.cmd.colorscheme == "quiet" then
  vim.api.nvim_set_hl(0, "Comment", { italic = true, fg = "#808080" })
  vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
  vim.api.nvim_set_hl(0, "Special", { fg = "None" })
  vim.api.nvim_set_hl(0, "StatusLine", { bg = "#eeeeee", fg = "#000000" })
  vim.api.nvim_set_hl(0, "Visual", { bg = "#000000", fg = "#eeeeee" })
  vim.api.nvim_set_hl(0, "Pmenu", { bg = "#eeeeee", fg = "#000000" })
  vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#000000", fg = "#eeeeee" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#f5f5f5" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
  vim.api.nvim_set_hl(0, "LineNr", { bg = "None" })
elseif vim.cmd.colorscheme == "quiet" then
  ]]--
  -- vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "#ffffff", border = "rounded" })
  -- vim.api.nvim_set_hl(0, "StatusLine", { bg = "None" })
  -- vim.api.nvim_set_hl(0, "Special", { fg = "None" })
  -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
  -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" })
  -- vim.api.nvim_set_hl(0, "LineNr", { bg = "None" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None", fg = "#ffffff", border = "rounded" })
  -- vim.api.nvim_set_hl(0, "Pmenu", { bg = "#dcd7da", fg = "DarkGreen" })
--end
-- vim.api.nvim_set_hl(0, "PmenuSel", { bg = "Orange", fg = "#000000" })
