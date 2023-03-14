local dap = require("dap")

vim.fn.sign_define('DapBreakpoint', { text = '', texthl = 'error', linehl = '', numhl = '' })
-- ADAPTERS
dap.adapters.node2 = {
  type = 'executable',
  command = 'node-debug2-adapter',
  -- args = {os.getenv('HOME') .. '/.zinit/plugins/microsoft---vscode-node-debug2.git/out/src/nodeDebug.js'},
  -- args =  { vim.fn.stdpath('data') .. '/mason/packages/node-debug2-adapter/out/src/nodeDebug.js' },
  args = {},
}
dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    restart = true,
    -- port = 9229
    processId = require 'dap.utils'.pick_process,
  },
}
dap.adapters.ruby = {
  type = 'executable';
  command = 'bundle';
  args = { 'exec', 'readapt', 'stdio' };
}

dap.configurations.ruby = {
  {
    type = 'ruby';
    request = 'launch';
    name = 'Rails';
    program = 'bundle';
    programArgs = { 'exec', 'rails', 's' };
    useBundler = true;
  },
}

--[[ local dap = require('dap') ]]
--[[ dap.adapters.lldb = { ]]
--[[   type = 'executable', ]]
--[[   command = 'lldb-vscode', -- adjust as needed, must be absolute path ]]
--[[   name = 'lldb' ]]
--[[ } ]]
--[[]]
--[[ local dap = require('dap') ]]
--[[ dap.configurations.cpp = { ]]
--[[   { ]]
--[[     name = 'Launch', ]]
--[[     type = 'lldb', ]]
--[[     request = 'launch', ]]
--[[     program = function() ]]
--[[       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') ]]
--[[     end, ]]
--[[     cwd = '${workspaceFolder}', ]]
--[[     stopOnEntry = false, ]]
--[[     args = {}, ]]
--[[]]
--[[     -- 💀 ]]
--[[     -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting: ]]
--[[     -- ]]
--[[     --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope ]]
--[[     -- ]]
--[[     -- Otherwise you might get the following error: ]]
--[[     -- ]]
--[[     --    Error on launch: Failed to attach to the target process ]]
--[[     -- ]]
--[[     -- But you should be aware of the implications: ]]
--[[     -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html ]]
--[[     -- runInTerminal = false, ]]
--[[   }, ]]
--[[ } ]]

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  --[[ command = 'C:\\absolute\\path\\to\\cpptools\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe', ]]
  --[[ command = 'D:\\ftarroux\\AppData\\Local\\nvim-data\\mason\\bin\\OpenDebugAD7.cmd', ]]
  command = 'D:\\ftarroux\\AppData\\Local\\nvim-data\\mason\\bin\\OpenDebugAD7.cmd',

  options = {
    detached = false
  }
}
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = 'D:\\ftarroux\\AppData\\Local\\nvim-data\\mason\\bin\\codelldb.cmd',
    args = { "--port", "${port}" },
    -- On windows you may have to uncomment this:
    detached = false,
  }
}
dap.configurations.cpp = {
  --[[ { ]]
  --[[ name = "Launch file", ]]
  --[[ type = "cppdbg", ]]
  --[[ request = "launch", ]]
  --[[ program = function() ]]
  --[[   return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') ]]
  --[[ end, ]]
  --[[ cwd = '${workspaceFolder}', ]]
  --[[ stopAtEntry = true, ]]
  --[[   name= "Windows Launch", ]]
  --[[ 	type= "cppdbg", ]]
  --[[ 	request= "launch", ]]
  --[[ 	program= "${workspaceFolder}\\build\\bin\\Debug\\MATISSE.exe", ]]
  --[[ 	stopAtEntry= true, ]]
  --[[ 	cwd= "${workspaceFolder}\\build", ]]
  --[[     args = {"D:\\ftarroux\\Documents\\FRED\\BaseGit\\matisse_fred\\BaseDeTest\\nua_6_9\\T350-NR-NA-6-9_1.scm","D:\\ftarroux\\Documents\\FRED\\BaseGit\\matisse_fred\\build\\matisse.cfg"} ]]
  --[[ }, ]]
  --[[ { ]]
  --[[   name = 'Attach to gdbserver :1234', ]]
  --[[   type = 'cppdbg', ]]
  --[[   request = 'launch', ]]
  --[[   MIMode = 'gdb', ]]
  --[[   miDebuggerServerAddress = 'localhost:1234', ]]
  --[[   miDebuggerPath = '/usr/bin/gdb', ]]
  --[[   cwd = '${workspaceFolder}', ]]
  --[[   program = function() ]]
  --[[     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') ]]
  --[[   end, ]]
  --[[ }, ]]
  {
    name = "Launch matisse",
    type = "codelldb",
    request = "launch",

    program = "${workspaceFolder}\\build\\bin\\Debug\\MATISSE.exe",
    cwd = "${workspaceFolder}\\build",
    args = { function()
      return vim.fn.input('argument: ', vim.fn.getcwd() .. '\\', 'file')
    end, "${workspaceFolder}\\build\\matisse.cfg" },
    stopOnEntry = false,
  },
  {
    name = "Launch other",
    type = "codelldb",
    request = "launch",
    cwd = "${workspaceFolder}\\build",
    args = { function()
      return vim.fn.input('argument: ', vim.fn.getcwd() .. '\\', 'file')
    end, "${workspaceFolder}\\build\\matisse.cfg" },
    stopOnEntry = false,
    program = function()
      return vim.fn.input('executable: ', vim.fn.getcwd() .. '\\', 'file')
    end,
  }
}


dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
