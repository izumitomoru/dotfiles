return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'vadimcn/codelldb',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'
  end,
}
