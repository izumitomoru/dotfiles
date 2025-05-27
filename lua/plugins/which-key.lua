return {
  -- shows key bindings
  'folke/which-key.nvim',

  opts = {
    preset = 'modern', -- 'classic' | 'modern' | 'helix'
    notify = true,
    --win = {
    --  opts = {
    --    win = {
    --      no_overlap = true,
    --      width = 10,
    --      height = { min = 4, max = 50 },
    --      --col = 0,
    --      padding = { 50, 2 },
    --      title = true,
    --      title_pos = 'center',
    --    },
    --  },
    --},
  },

  -- can't get this too work and i'm too tired rn
  ----@type wk.Win.opts

  --win = {
  --  no_overlap = true,
  --  width = 10,
  --  height = { min = 4, max = 50 },
  --  col = 0,
  --  padding = { 50, 2 },
  --  title = true,
  --  title_pos = 'center',
  --},

  sorter = {
    sort = { 'local', 'order', 'group', 'alphanum', 'mod' },
  },
  show_help = true,
  show_keys = true,
}
