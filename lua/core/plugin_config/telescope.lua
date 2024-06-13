local builtin = require('telescope.builtin')

require("telescope").setup({
  defaults = {
    dynamic_preview_title = true,
    layout_strategy = "horizontal",
    layout_config = {horizontal = {width = 0.9, height = 0.9, preview_height = 0.6, preview_cutoff = 0}},
    path_display = {"smart", shorten = {len = 3}},
    wrap_results = true,
  },
  pickers = {
    find_files = {
      find_command = {
        "rg",
        "--no-ignore",
        "--hidden",
        "--files",
        "-g",
        "!**/node_modules/*",
        "-g",
        "!**/.git/*",
      },
    },
  },
  extensions = {
    file_browser = {
      hidden = { file_browser = true, folder_browser = true },
      prompt_path = true,
    },
  },
})

vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<c-f>', builtin.live_grep, {})
