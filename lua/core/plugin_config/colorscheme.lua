
-- require('vscode').setup({
--   transparent = true,
-- });
-- vim.o.background = "dark"
-- vim.cmd[[colorscheme vscode]]

-- One Dark Pro
-- require("onedarkpro").setup({
--   options = {
--     transparency = true,
--   }
-- })
--
-- vim.opt.termguicolors = true
-- vim.cmd[[colorscheme onedark]]


-- Rose Pine
-- require("rose-pine").setup({
--     variant = "main", -- auto, main, moon, or dawn
--     dark_variant = "main", -- main, moon, or dawn
--     dim_inactive_windows = false,
--     extend_background_behind_borders = true,
--
--     enable = {
--         terminal = true,
--         legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
--         migrations = true, -- Handle deprecated options automatically
--     },
--
--     styles = {
--         bold = true,
--         italic = true,
--         transparency = true,
--     },
-- })

-- Tokyo Night
require('tokyonight').setup({
  style = "storm",
  terminal_colors = false,
  transparent_background = true,
  transparent = true,
  styles = {
    sidebar = "transparent",
    floats = "transparent"
  }
})

vim.opt.termguicolors = true
vim.cmd[[colorscheme tokyonight]]
--
-- Gruvbox
-- require("gruvbox").setup({
--   terminal_colors = false,
--   transparent_mode = false,
-- });
-- vim.cmd("colorscheme gruvbox")
