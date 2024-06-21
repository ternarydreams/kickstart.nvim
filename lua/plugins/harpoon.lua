return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = 'VeryLazy',
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()
      -- REQUIRED
      --
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = '[A]dd file to Harpoon' })
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Harpoon quick menu' })
      -- vim.keymap.set('n', '<leader>e', function()
      --   harpoon.ui:toggle_quick_menu(harpoon:list())
      -- end, { desc = 'Harpoon quick menu' })

      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end)
      vim.keymap.set('n', '<leader>5', function()
        harpoon:list():select(5)
      end)
      vim.keymap.set('n', '<leader>6', function()
        harpoon:list():select(6)
      end)
      vim.keymap.set('n', '<leader>7', function()
        harpoon:list():select(7)
      end)
      vim.keymap.set('n', '<leader>8', function()
        harpoon:list():select(8)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<M-p>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<M-n>', function()
        harpoon:list():next()
      end)
    end,
  },
}
