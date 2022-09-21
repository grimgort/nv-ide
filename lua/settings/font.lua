if vim.fn.has('unix') == 1 then
  local uname = vim.fn.system('uname')
  if uname == "Darwin\n" then
    vim.opt.guifont = 'JetBrains Mono:h14'
  else
    vim.opt.guifont = 'JetBrains Mono 14'
  end
end

    --[[ vim.opt.guifont = 'JetBrains Mono:h14' ]]
--[[ vim.opt.guifont = { 'JetBrains Mono','-bang'	} ]]
--[[ vim.opt.guifont = 'Cascadia Code:h14' ]]
