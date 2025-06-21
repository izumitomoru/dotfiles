return {
  'xiyaowong/transparent.nvim',
  lazy = false,
  config = function()
    require('transparent').setup {
      -- table: default groups
      groups = {
        'Normal',
        'NormalNC',
        'Comment',
        'Constant',
        'Special',
        'Identifier',
        'Statement',
        'PreProc',
        'Type',
        'Underlined',
        'Todo',
        'String',
        'Function',
        'Conditional',
        'Repeat',
        'Operator',
        'Structure',
        'LineNr',
        'NonText',
        'SignColumn',
        'CursorLine',
        'CursorLineNr',
        'StatusLine',
        'StatusLineNC',
        'EndOfBuffer',
      },
      -- table: additional groups that should be cleared
      extra_groups = {
        'WhichKey',
        'WhichKeyNormal',
        'WhichKeyBorder',
        'WhichKeyTitle',

        'NormalFloat',
        'NvimTreeNormal',

        'TelescopeMatching',
        'TelescopeSelection',

        'TelescopePromptTitle',
        'TelescopePromptPrefix',
        'TelescopePromptCounter',
        'TelescopePromptNormal',
        'TelescopePromptBorder',

        'TelescopeResultsTitle',
        'TelescopeResultsNormal',
        'TelescopeResultsBorder',

        'TelescopePreviewTitle',
        'TelescopePreviewNormal',
        'TelescopePreviewBorder',
      },
      -- table: groups you don't want to clear
      exclude_groups = {},
      -- function: code to be executed after highlight groups are cleared
      -- Also the user event "TransparentClear" will be triggered
      on_clear = function() end,
      require('transparent').clear_prefix 'BufferLine',
      require('transparent').clear_prefix 'NvimTree',
      require('transparent').clear_prefix 'lualine',
    }
  end,
}
