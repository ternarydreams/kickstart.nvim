--[[
    - https://learnxinyminutes.com/docs/lua/
    After understanding a bit more about Lua, you can use `:help lua-guide` as a
    reference for how Neovim integrates Lua.
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html

--]]

-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


require 'options'

require 'keymaps'

require 'autocmds'

require 'lazy-bootstrap'

require 'lazy-plugins'

require 'init'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
