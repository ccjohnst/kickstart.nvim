-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {

    'rose-pine/neovim',
    name = 'rose-pine',
  },
  { 'ellisonleao/gruvbox.nvim', priority = 1000, config = true },
  {
    'github/copilot.vim',
  },
  {
    'theprimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon'):setup()
    end,
    keys = {
      {
        '<leader>Ha',
        function()
          require('harpoon'):list():add()
        end,
        desc = '[H]arpoon [A]dd file',
      },
      {
        '<leader>Hq',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = '[H]arpoon [q]uick menu',
      },
      {
        '<leader>H1',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = '[H]arpoon to file [1]',
      },
      {
        '<leader>H2',
        function()
          require('harpoon'):list():select(2)
        end,
        desc = '[H]arpoon to file [2]',
      },
      {
        '<leader>H3',
        function()
          require('harpoon'):list():select(3)
        end,
        desc = '[H]arpoon to file [3]',
      },
      {
        '<leader>H4',
        function()
          require('harpoon'):list():select(4)
        end,
        desc = '[H]arpoon to file [4]',
      },
      {
        '<leader>H5',
        function()
          require('harpoon'):list():select(5)
        end,
        desc = '[H]arpoon to file [5]',
      },
    },
  },
  {
    'windwp/nvim-ts-autotag',
  },
}
