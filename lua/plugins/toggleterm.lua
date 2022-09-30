local shellLocal
if vim.loop.os_uname().sysname == "Windows_NT" then
	shellLocal = "pwsh -nologo" -- change the default shell
else
  shellLocal = "sh"
end

require("toggleterm").setup({
	shell = shellLocal,
	direction = "float",
})
