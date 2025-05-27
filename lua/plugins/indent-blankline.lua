return {
  'lukas-reineke/indent-blankline.nvim',
  version = '*',
  lazy = false,

  main = 'ibl',
  ---@module 'ibl'
  ---@type ibl.config
  --require('ibl').setup(),
  --config = function()
  --  require('ibl').setup() {}
  --end,

  opts = {
    enabled = true,
    indent = {
      char = '▏',
      highlight = 'Whitespace',
      --smart_indent_cap = false,
      --priority = 1,
    },
    scope = {
      enabled = true,
      char = '▏',
      show_start = true,
      show_end = true,
      show_exact_scope = true,
      highlight = 'Whitespace', -- lying fucks on the documentation i thought it was hl-IblWhitespace or IbleWhitespace but NOOOOOO it's just completely fucking different in the actual config with no explanation unless you search for the default config file
    },
    whitespace = {
      --highlight = 'hl-IblWhitespace',
    },
    exclude = {
      filetypes = {
        'help',
        'startify',
        'dashboard',
        'packer',
        'neogitstatus',
        'NvimTree',
        'Trouble',
      },
    },
  },
  ----@type ibl.highlights
  --highlights = {
  --  hlIblScope = 'hl-Whitespace',
  --},
}
