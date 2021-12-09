-- __     __                           _   _       _
-- \ \   / /_ _ _ __   ___  _   _ _ __| \ | |_   _(_)_ __ ___
--  \ \ / / _` | '_ \ / _ \| | | | '__|  \| \ \ / / | '_ ` _ \
--   \ V / (_| | |_) | (_) | |_| | |  | |\  |\ V /| | | | | | |
--    \_/ \__,_| .__/ \___/ \__,_|_|  |_| \_| \_/ |_|_| |_| |_|
--             |_|
-- Author: https://github.com/hackorum
-- Github: https://github.com/hackorum/VapourNvim
--
-- Sane defaults and global helpers
-- Load all Vapour packages first
require('Augists')

local user_config = CONFIG_PATH .. '/lua/Augists/user-config/init.lua'

if not Augists.utils.file.exists(user_config) then Augists.utils.file.create(user_config) end

-- User config that overrides the above
vim.cmd('luafile ' .. user_config)

-- General
require('Augists.options')
require('Augists.plugins')
require('Augists.keybindings')

-- Syntax and Visual
-- If a custom theme is wanted, require() that in user-config.init
-- Otherwise if the default theme is not wanted change Augists.settings.colorscheme
-- This will return nil if it's not found
if Augists.settings.colorscheme ~= "custom" then Augists.utils.plugins.require('colorscheme.' .. Augists.settings.colorscheme) end

-- LSP and Autocomplete
require('language-servers')

-- Git
require('gitsigns-config')

-- Other
require('which-key-config')
if Augists.settings.transparent_bg then vim.cmd('hi Normal guibg=NONE ctermbg=NONE') end

require('copilot-config')
