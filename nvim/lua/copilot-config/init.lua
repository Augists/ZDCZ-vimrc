vim.cmd([[imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")]])
-- vim.g.copilot_no_tab_map = "v:true"
-- let g:copilot_no_tab_map = v:true
-- vim.api.nvim_command(
-- [[
-- imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
-- ]]
-- )
vim.cmd('let g:copilot_no_tab_map = v:true')
-- vim.cmd([[autocmd BufEnter * if v:copilot_no_tab_map | copilot#Accept("\<CR>")]])
