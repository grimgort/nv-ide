local shellLocal
if vim.loop.os_uname().sysname == "Windows_NT" then
	shellLocal = "pwsh -nologo" -- change the default shell
else
  shellLocal = "sh"
end

require("toggleterm").setup({
	shell = shellLocal,
	--[[ direction = "float", ]]
})


local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true,direction = "float" })

function _lazygit_toggle()
  lazygit:toggle()
end

