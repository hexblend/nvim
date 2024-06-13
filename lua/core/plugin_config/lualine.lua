require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'vscode',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {{'filename', path = 1}},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  extensions = {'nvim-tree', 'gitsigns'},
}

