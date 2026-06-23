return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },

  dependencies = {
    -- Dependencies for UI/Capabilities
    { 'j-hui/fidget.nvim', opts = {} },
    'saghen/blink.cmp',
    'SmiteshP/nvim-navic',
  },
}
