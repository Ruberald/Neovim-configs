local colors = {
    black        = '#181A1F',
    white        = '#d6d6d6',
    red          = '#E86671',
    green        = '#98C379',
    blue         = '#61AFEF',
    yellow       = '#E5C07B',
    gray         = '#ABB2BF',
    darkgray     = '#5C6370',
    lightgray    = '#1E1E2E',
    inactivegray = '#5C6370',
    background   = '#1E1E2E',
}

local catpuccin = {
    normal = {
        a = { bg = colors.gray, fg = colors.black, gui = 'bold' },
        b = { bg = colors.lightgray, fg = colors.white },
        c = { bg = colors.darkgray, fg = colors.gray },
    },
    insert = {
        a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
        b = { bg = colors.lightgray, fg = colors.white },
        c = { bg = colors.lightgray, fg = colors.white },
    },
    visual = {
        a = { bg = colors.green, fg = colors.black, gui = 'bold' },
        b = { bg = colors.lightgray, fg = colors.white },
        c = { bg = colors.inactivegray, fg = colors.black },
    },
    replace = {
        a = { bg = colors.red, fg = colors.black, gui = 'bold' },
        b = { bg = colors.lightgray, fg = colors.white },
        c = { bg = colors.black, fg = colors.white },
    },
    command = {
        a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
        b = { bg = colors.lightgray, fg = colors.white },
        c = { bg = colors.inactivegray, fg = colors.black },
    },
    inactive = {
        a = { bg = colors.darkgray, fg = colors.gray, gui = 'bold' },
        b = { bg = colors.darkgray, fg = colors.gray },
        c = { bg = colors.darkgray, fg = colors.gray },
    }
}


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = gruvbox_dark,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

