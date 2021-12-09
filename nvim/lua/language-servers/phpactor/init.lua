local phpactor = Augists.language_servers.phpactor or {}

if phpactor == {} or phpactor.enabled ~= true then return end

local bin = phpactor.binary or '/usr/local/bin/phpactor'
local wk = phpactor.which_key_leader or 'l'

Augists.utils.plugins.which_key(wk, {
  p = {
    name = "Phpactor",
    c = {
      name = "Cache", 
      r = {":!" .. bin .." cache:clear<cr>:!" .. bin .. " index:build " .. vim.fn.expand('%:h') .. "<cr>", "Refresh"}
    }
  }
})
