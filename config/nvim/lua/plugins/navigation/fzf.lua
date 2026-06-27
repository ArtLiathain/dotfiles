return {
  'ibhagwan/fzf-lua',
  event = 'VeryLazy',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('fzf-lua').setup {
      'fzf-native',
      files = {
        fd_opts = '--hidden --exclude=.git',
      },
      winopts = {
        border = 'rounded',
      },
    }
    require('fzf-lua').register_ui_select()

    local fzf = require 'fzf-lua'
    vim.keymap.set('n', '<leader>sh', fzf.help_tags, { desc = '[S]earch [H]elp' })
    vim.keymap.set('n', '<leader>sk', fzf.keymaps, { desc = '[S]earch [K]eymaps' })
    vim.keymap.set('n', '<leader>sf', fzf.files, { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>sw', fzf.grep_cword, { desc = '[S]earch current [W]ord' })
    vim.keymap.set('n', '<leader>sg', fzf.live_grep, { desc = '[S]earch by [G]rep' })
    vim.keymap.set('n', '<leader>sd', fzf.diagnostics_workspace, { desc = '[S]earch [D]iagnostics' })
    vim.keymap.set('n', '<leader>sr', fzf.resume, { desc = '[S]earch [R]esume' })
    vim.keymap.set('n', '<leader>s.', fzf.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
    vim.keymap.set('n', '<leader><leader>', fzf.buffers, { desc = '[ ] Find existing buffers' })

    vim.keymap.set('n', '<leader>/', function()
      fzf.blines {
        winopts = {
          height = 0.55,
          width = 0.80,
          row = 0.35,
          col = 0.50,
          border = 'rounded',
          winblend = 10,
          preview = {
            hidden = true,
          },
        },
      }
    end, { desc = '[/] Fuzzily search in current buffer' })

    vim.keymap.set('n', '<leader>sn', function()
      fzf.files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[S]earch [N]eovim files' })
  end,
}
