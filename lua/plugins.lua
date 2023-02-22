-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

local disableVariable = false

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute("packadd packer.nvim")
end

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})
require("packer").init({ snapshot_path = vim.fn.stdpath("config") .. "/snapshots", display = { auto_clean = false } })

return require("packer").startup(function(use)
  -- Load lua path
  local lua_path = function(name)
    return string.format("require'plugins.%s'", name)
  end

  -- Packer can manage itself as an optional plugin
  use({ "wbthomason/packer.nvim" })

  -- LSP
  use({ "williamboman/mason.nvim", config = lua_path("mason") })
  use({ "williamboman/mason-lspconfig.nvim", config = lua_path("mason-lspconfig") })
  use({ "jose-elias-alvarez/null-ls.nvim", config = lua_path("null_ls") })
  use({ "jayp0521/mason-null-ls.nvim", config = lua_path("mason_null_ls") })
  use({ "WhoIsSethDaniel/mason-tool-installer.nvim" })
  use({ "neovim/nvim-lspconfig" })
  use({ "onsails/lspkind-nvim" })
  use({ "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" })

  -- Autocomplete
  use({ "hrsh7th/nvim-cmp" })
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-nvim-lua" })
  use({ "hrsh7th/cmp-buffer" })
  --[[ use({ "hrsh7th/cmp-vsnip" }) ]]
  --[[ use({ "hrsh7th/vim-vsnip" }) ]]
  use({ "L3MON4D3/LuaSnip", tag = "*", config = lua_path("luasnip") })
  use({ "saadparwaiz1/cmp_luasnip" })
  use({ "hrsh7th/cmp-path" })
  use({ "hrsh7th/cmp-calc" })
  use({ "hrsh7th/cmp-cmdline" })
  use({ "ray-x/cmp-treesitter" })
  use({ "lukas-reineke/cmp-rg" })
  use({ "quangnguyen30192/cmp-nvim-tags" })
  use({ "rafamadriz/friendly-snippets" })
  use({ "windwp/nvim-autopairs", config = lua_path("nvim-autopairs") })
  use({ "windwp/nvim-ts-autotag", config = lua_path("nvim-ts-autotag") })
  -- use({ "andymass/vim-matchup" })

  -- Treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = lua_path("treesitter") })
  use({ "mrjones2014/nvim-ts-rainbow", config = lua_path("nvim-ts-rainbow") })
  use({ "lukas-reineke/indent-blankline.nvim", config = lua_path("indent-blankline") })
  use({"Darazaki/indent-o-matic"})
  use({ "JoosepAlviste/nvim-ts-context-commentstring" })
  use({ "lewis6991/nvim-treesitter-context" })
  -- use({ "SmiteshP/nvim-gps", config = lua_path("nvim-gps") })
  use({
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig", config = lua_path("nvim-navic")
  })
  --[[ use { 'fgheng/winbar.nvim', config = lua_path("winbar")} ]]

  -- Syntax
  --[[ use({ "chrisbra/csv.vim" }) ]]
  --[[ use({ "junegunn/vim-easy-align" }) ]]
  -- use({ "mhartington/formatter.nvim", config = lua_path("formatter") })
  --[[ use({ "zdharma-continuum/zinit-vim-syntax" }) ]]
  use({ "numToStr/Comment.nvim", config = lua_path("comment") })

  -- Icons
  use({ "kyazdani42/nvim-web-devicons" })
  --[[ use({ "ryanoasis/vim-devicons" }) ]]

  -- Status Line and Bufferline
  use({ "famiu/feline.nvim", config = lua_path("feline") })
  --
  --[[ use { ]]
  --[[   'nvim-lualine/lualine.nvim', ]]
  --[[   requires = { 'kyazdani42/nvim-web-devicons', opt = true } ]]
  --[[ , config = lua_path("lualine") } ]]
  use({ "kazhala/close-buffers.nvim" })
  --[[ use({ "noib3/nvim-cokeline", config = lua_path("nvim-cokeline") }) ]]

  -- Telescope
  --[[ use({ "nvim-lua/popup.nvim" }) ]]
  use({ "nvim-lua/plenary.nvim" })
  use({ "nvim-telescope/telescope.nvim", config = lua_path("telescope") })
  --[[ use({ "nvim-telescope/telescope-fzy-native.nvim" }) ]]
  use({
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  })
  --[[ use({ "cljoly/telescope-repo.nvim" }) ]]
  use({ "nvim-telescope/telescope-dap.nvim" })
  --[[ use({ "pwntester/octo.nvim", config = lua_path("octo") }) ]]
  -- Explorer
  use({ "kyazdani42/nvim-tree.lua", commit = "08ab346", config = lua_path("nvimtree") })

  -- Color
  --[[ use({ "crivotz/nvim-colorizer.lua", config = lua_path("colorizer") }) ]]

  -- Git
  use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" }, config = lua_path("gitsigns") })
  use({ "kdheepak/lazygit.nvim" })
  --[[ use({ "rhysd/committia.vim" }) ]]

  -- Registers & clipboard
  --[[ use({ "AckslD/nvim-neoclip.lua", config = lua_path("nvim-neoclip") }) ]]

  -- Move & Search & replace
  use({ "nacro90/numb.nvim", config = lua_path("numb") })
  --[[ use({ "dyng/ctrlsf.vim", config = lua_path("ctrlsf") }) ]]
  --[[ use({ "kevinhwang91/nvim-hlslens", config = lua_path("hlslens") }) ]]
  -- use { 'ggandor/lightspeed.nvim', config = lua_path"lightspeed" }
  -- use { 'karb94/neoscroll.nvim', config = lua_path"neoscroll" }
  --[[ use({ "dstein64/nvim-scrollview" }) ]]
  -- use({ "chaoren/vim-wordmotion" })
  --[[ use({ "fedepujol/move.nvim" }) ]]

  -- Tim Pope docet
    use({ "tpope/vim-fugitive" })

  -- Folke
  use({ "folke/trouble.nvim" })
  use({ "folke/todo-comments.nvim", config = lua_path("todo-comments") })
  use({
    "folke/which-key.nvim",
    --[[ commit = "7d260629f7a7e9de6f80b31aa347e2c930925540", ]]
    config = lua_path("which-key"),
  })

  -- Tmux
  --[[ use({ "christoomey/vim-tmux-navigator" }) ]]

  -- Colorschema
  use({ "sainnhe/gruvbox-material" })
  --[[ use({ "stevearc/dressing.nvim", config = lua_path("dressing") }) ]]

  -- Tags
  --[[ use({ "ludovicchabant/vim-gutentags", config = lua_path("vim-gutentags") }) ]]

  -- Debugger
  use({ "mfussenegger/nvim-dap", config = lua_path("nvim-dap") })
  use({ "rcarriga/nvim-dap-ui", config = lua_path("nvim-dap-ui") })
  use({ "theHamsta/nvim-dap-virtual-text", config = lua_path("nvim-dap-virtual-text") })

  -- General Plugins
  --[[ use({ "machakann/vim-sandwich", config = lua_path("sandwich") }) ]]
  use({ "rcarriga/nvim-notify", config = lua_path("nvim-notify") })
  use({ "airblade/vim-rooter", config = lua_path("vim-rooter") })
  use({ "goolord/alpha-nvim", config = lua_path("alpha-nvim") })
  --[[ use({ "jeffkreeftmeijer/vim-numbertoggle" }) ]]
  --[[ use({ "lambdalisue/suda.vim" }) ]]
  --[[ use({ "wfxr/minimap.vim", config = lua_path("minimap") }) ]]
  --[[ use({ "luukvbaal/stabilize.nvim", config = lua_path("stabilize") }) ]]
  --[[ use({ "beauwilliams/focus.nvim", config = lua_path("focus") }) ]]
  use({ "kevinhwang91/nvim-bqf",
    tag = "*"
  })

  use({
    "windwp/nvim-spectre",
    disable = disableVariable,
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  })
  use({
    "andymass/vim-matchup",
    disable = disableVariable,
    -- tag = "*",
    -- event = "CursorMoved",
    -- config = function()
    -- 	vim.g.matchup_matchparen_offscreen = { method = "popup" }
    -- end,
  })
  use({
    "sindrets/diffview.nvim",
    disable = disableVariable,
    event = "BufRead",
  })
  -- replacde by :Gitsigns toggle_current_line_blame
  -- {
  -- 	"f-person/git-blame.nvim",
  -- 	event = "BufRead",
  -- 	config = function()
  -- 		vim.cmd("highlight default link gitblame SpecialComment")
  -- 		vim.g.gitblame_enabled = 0
  -- 	end,
  -- },
  -- use({
  -- 	"tpope/vim-fugitive",
  -- 	disable = disableVariable,
  -- 	tag = "*",
  -- 		})
  use({ "ahmedkhalf/project.nvim", config = lua_path("project") })
  -- use({ ]]
  -- 	"nvim-telescope/telescope-project.nvim", ]]
  -- 	--[[ disable = disableVariable, ]] ]]
  -- 	setup = function() end, ]]
  -- }) ]]
  use({
    "folke/lsp-colors.nvim",
    disable = disableVariable,
    event = "BufRead",
  })
  --[[ use({ ]] -- replaced by lsp saga
  --[[   "rmagatti/goto-preview", ]]
  --[[   disable = disableVariable, ]]
  --[[   config = function() ]]
  --[[     require("goto-preview").setup({ ]]
  --[[       width = 120, -- Width of the floating window ]]
  --[[       height = 25, -- Height of the floating window ]]
  --[[       default_mappings = true, -- Bind default mappings ]]
  --[[       debug = false, -- Print debug information ]]
  --[[       opacity = nil, -- 0-100 opacity level of the floating window where 100 is fully transparent. ]]
  --[[       post_open_hook = nil, -- A function taking two arguments, a buffer and a window to be ran as a hook. ]]
  --[[       -- You can use "default_mappings = true" setup option ]]
  --[[       -- Or explicitly set keybindings ]]
  --[[       -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>") ]]
  --[[       -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>") ]]
  --[[       -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>") ]]
  --[[     }) ]]
  --[[   end, ]]
  --[[ }) ]]
  use({
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    module = "persistence",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      })
    end,
  })

  use({
    "ray-x/lsp_signature.nvim",
    disable = disableVariable, config =lua_path("lsp_signature")
      })
  use({
    "simrat39/symbols-outline.nvim",
    tag = "*",
    disable = disableVariable,
    cmd = "SymbolsOutline",
    config = lua_path("symbols-outline")
  })
  use({
    "npxbr/glow.nvim",
    disable = disableVariable,
    ft = { "markdown" },
    config = lua_path("glow"),
  })
  -- use({
  -- 	"lukas-reineke/indent-blankline.nvim",
  -- 	disable = disableVariable,
  -- 	tag = "*",
  -- 	event = "BufRead",
  -- 	config = function()
  -- 		vim.g.indentLine_enabled = 1
  -- 		vim.g.indent_blankline_char = "▏"
  -- 		vim.g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard" }
  -- 		vim.g.indent_blankline_buftype_exclude = { "terminal" }
  -- 		vim.g.indent_blankline_show_trailing_blankline_indent = false
  -- 		vim.g.indent_blankline_show_first_indent_level = false
  -- 		vim.g.indent_blankline_show_current_context = true
  -- 		vim.g.indent_blankline_show_current_context_start = true
  -- 	end,
  -- })
  use({
    "iamcco/markdown-preview.nvim",
    disable = disableVariable,
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  })
  --[[ use { ]]
  --[[   "davidgranstrom/nvim-markdown-preview" ]]
  --[[ } ]]
  use { 'ray-x/starry.nvim' }
  use({
    "ethanholz/nvim-lastplace",
    disable = disableVariable,
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit",
          "gitrebase",
          "svn",
          "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  })
  -- use({
  -- 	"folke/todo-comments.nvim",
  -- 	disable = disableVariable,
  -- 	event = "BufRead",
  -- 	config = function()
  -- 		require("todo-comments").setup()
  -- 	end,
  -- })
  -- {
  --   "tpope/vim-surround",
  --   keys = {"c", "d", "y"},
  -- config = function ()
  --         vim.cmd("nmap ds       <Plug>Dsurround")
  --         vim.cmd("nmap cs       <Plug>Csurround")
  --         vim.cmd("nmap cS       <Plug>CSurround")
  --         vim.cmd("nmap ys       <Plug>Ysurround")
  --         vim.cmd("nmap yS       <Plug>YSurround")
  --         vim.cmd("nmap yss      <Plug>Yssurround")
  --         vim.cmd("nmap ySs      <Plug>YSsurround")
  --         vim.cmd("nmap ySS      <Plug>YSsurround")
  --         vim.cmd("xmap gs       <Plug>VSurround")
  --         vim.cmd("xmap gS       <Plug>VgSurround")
  --       end
  -- },
  -- { "oberblastmeister/neuron.nvim" },
  -- fred plugin perso
  -- {
  --     "blackCauldron7/surround.nvim",
  --     config = function()
  --        require("surround").setup { mappings_style = "sandwich", prefix = "e" }
  --     end,
  --  },
  use({ "stevearc/aerial.nvim", disable = disableVariable,config = lua_path("aerial") })
  use({
    "voldikss/vim-translator",
    disable = disableVariable,
    config = function()
      vim.api.nvim_set_var("translator_target_lang", "fr")
      vim.api.nvim_set_var("translator_source_lang", "en")
      vim.api.nvim_set_var("translator_proxy_url", "http://proxy.onera:80")
    end,
  })
  -- {
  --       "Shatur/neovim-cmake",
  --       config = function()
  -- require('cmake').setup({
  ----parameters_file = 'neovim.json',
  --JSON file to store information about selected target,
  -- run arguments and build type.--build_dir = '{cwd}/build',
  -- --Build directory.The expressions `{
  --   cwd
  -- }
  -- `, `{ os }
  -- ` and `{ build_type }` will be expanded with the corresponding text values.
  --   -- samples_path = script_path:parent():parent():parent() / 'samples', -- Folder with samples. `samples` folder from the plugin directory is used by default.
  --   -- default_projects_path = '~/Projects', -- Default folder for creating project.
  --   -- configure_arguments = '-D CMAKE_EXPORT_COMPILE_COMMANDS=1', -- Default arguments that will be always passed at cmake configure step. By default tells cmake to generate `compile_commands.json`.
  --   -- build_arguments = '', -- Default arguments that will be always passed at cmake build step.
  --   -- asyncrun_options = { save = 2 }, -- AsyncRun options that will be passed on cmake execution. See https://github.com/skywind3000/asyncrun.vim#manual
  --   -- target_asyncrun_options = {}, -- AsyncRun options that will be passed on target execution. See https://github.com/skywind3000/asyncrun.vim#manual
  --   -- dap_configuration = { type = 'cpp', request = 'launch' }, -- DAP configuration. By default configured to work with `lldb-vscode`.
  --   -- dap_open_command = require('dap').repl.open, -- Command to run after starting DAP session. You can set it to `false` if you don't want to open anything or `require('dapui').open` if you are using https://github.com/rcarriga/nvim-dap-ui
  -- })
  --       end,
  --    },

  use({ "skywind3000/asyncrun.vim", tag = "*", disable = disableVariable })

  use({ "skywind3000/asynctasks.vim", disable = disableVariable })
  use {
    'jedrzejboczar/toggletasks.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'akinsho/toggleterm.nvim',
      --[[ 'nvim-telescope/telescope.nvim/', ]]
    },
    -- To enable YAML config support
    --[[ rocks = 'lyaml', ]]
  }
  use({ "simnalamburt/vim-mundo", disable = disableVariable })
  use({ "vim-scripts/DoxygenToolkit.vim", disable = disableVariable })
  -- use({
  --  "kosayoda/nvim-lightbulb",
  --  disable = disableVariable,
  --  config = function()
  --    vim.cmd([[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]])
  --  end,
  -- })

   --[[ use({ ]]
   --[[ 	"uga-rosa/cmp-dictionary", ]]
   --[[ 	disable = disableVariable, ]]
   --[[  config = lua_path("cmp-dictionary") ]]
   --[[ }) ]]
   --[[ use({ ]]
   --[[ 	"f3fora/cmp-spell", ]]
   --[[ 	disable = disableVariable, ]]
   --[[ }) ]]
  use({
    "rhysd/git-messenger.vim",
    disable = disableVariable,
    config = function()
      -- vim.api.nvim_command 'let g:git_messenger_include_diff="current"'
      --[[ vim.api.nvim_command("let g:git_messenger_floating_win_opts = { 'border': 'single' }") ]]
      --[[ vim.api.nvim_command("let g:git_messenger_no_default_mappings=v:true") ]]
      vim.api.nvim_command("let g:git_messenger_always_into_popup=v:true")
    end,
  })
  use({ "mg979/vim-visual-multi", disable = disableVariable, config = function() end })
  use({ "xolox/vim-misc", disable = disableVariable })
  use({ "xolox/vim-colorscheme-switcher", disable = disableVariable })
  use({
    "rhysd/devdocs.vim",
    disable = disableVariable,
    config = function()
      vim.cmd([[let g:devdocs_filetype_map = {
    \   'c': 'c'}
    ]] )
    end,
  })
  -- use({
  -- 	"nvim-neorg/neorg",
  -- 	disable = disableVariable,
  -- 	config = function()
  -- 		require("neorg").setup({
  -- 			-- Tell Neorg what modules to load
  -- 			load = {
  -- 				["core.defaults"] = {}, -- Load all the default modules
  -- 				["core.integrations.telescope"] = {},
  -- 				["core.keybinds"] = { -- Configure core.keybinds
  -- 					config = {
  -- 						default_keybinds = true, -- Generate the default keybinds
  -- 						neorg_leader = "<Leader>ze", -- This is the default if unspecified
  -- 					},
  -- 				},
  -- 				["core.norg.concealer"] = {}, -- Allows for use of icons
  -- 				["core.norg.dirman"] = { -- Manage your directories with Neorg
  -- 					config = {
  -- 						workspaces = {
  -- 							work = "~/NEORG/work",
  -- 							home = "~/NEORG/home",
  -- 						},
  -- 					},
  -- 				},
  -- 				["core.norg.completion"] = {
  -- 					config = {
  -- 						engine = "nvim-cmp", -- We current support nvim-compe and nvim-cmp only
  -- 					},
  -- 				},
  -- 			},
  -- 		})
  -- 	end,
  -- 	requires = { "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
  -- })
  -- use({ "nvim-neorg/neorg-telescope", disable = disableVariable })
  use({
    "mzlogin/vim-markdown-toc",
    disable = disableVariable,
  })
  use({ "nvim-telescope/telescope-live-grep-args.nvim", disable = disableVariable })
  use({
    "chipsenkbeil/distant.nvim",
    disable = disableVariable,
    config = function()
      require("distant").setup({
        -- Applies Chip's personal settings to every machine you connect to
        --
        -- 1. Ensures that distant servers terminate with no connections
        -- 2. Provides navigation bindings for remote directories
        -- 3. Provides keybinding to jump into a remote file's parent directory
        ["*"] = require("distant.settings").chip_default(),
      })
    end,
  })
  use({ "ckipp01/nvim-jenkinsfile-linter", disable = disableVariable, requires = { "nvim-lua/plenary.nvim" } })
  --[[ use({ "rafi/awesome-vim-colorschemes", disable = disableVariable }) ]]
  use({
    "Shatur/neovim-cmake",
    disable = disableVariable,
    config = function()
      local Path = require("plenary.path")
      require("cmake").setup({
        cmake_executable = "cmake", -- CMake executable to run.
        parameters_file = "neovim.json", -- JSON file to store information about selected target, run arguments and build type.
        -- build_dir = tostring(Path:new('{cwd}', 'build', '{os}-{build_type}')), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values.
        build_dir = tostring(Path:new("{cwd}", "build")), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values.
        -- samples_path = tostring(script_path:parent():parent():parent() / 'samples'), -- Folder with samples. `samples` folder from the plugin directory is used by default.
        default_projects_path = tostring(Path:new(vim.loop.os_homedir(), "Projects")), -- Default folder for creating project.
        configure_args = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- Default arguments that will be always passed at cmake configure step. By default tells cmake to generate `compile_commands.json`.
        build_args = {}, -- Default arguments that will be always passed at cmake build step.
        on_build_output = nil, -- Callback which will be called on every line that is printed during build process. Accepts printed line as argument.
        quickfix_height = 10, -- Height of the opened quickfix.
        -- quickfix_only_on_error = true, -- Open quickfix window only if target build failed.
        dap_configuration = { type = "cpp", request = "launch" }, -- DAP configuration. By default configured to work with `lldb-vscode`.
        dap_open_command = require("dap").repl.open, -- Command to run after starting DAP session. You can set it to `false` if you don't want to open anything or `require('dapui').open` if you are using https://github.com/rcarriga/nvim-dap-ui
      })
    end,
  })
  use({ "Pocco81/TrueZen.nvim", disable = disableVariable })
  -- not work with lvim
  use({
    "glacambre/firenvim",
    run = function()
      vim.fn["firenvim#install"](0)
    end,
  })
  use({
    "phaazon/hop.nvim",
    event = "BufRead",
    tag = "*",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "e", "<cmd>HopChar1<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "E", "<cmd>HopWord<cr>", { silent = true })
      vim.api.nvim_set_keymap("v", "e", "<cmd>HopChar1<cr>", { silent = true })
      vim.api.nvim_set_keymap("v", "E", "<cmd>HopWord<cr>", { silent = true })
    end,
  })
  use({ "kg8m/vim-simple-align" })
  use({
    "nvim-treesitter/nvim-treesitter-textobjects",
    config = function()
      require("nvim-treesitter.configs").setup({
        textobjects = {
          move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
              ["<leader>aj"] = "@function.outer",
              ["]]"] = "@class.outer",
            },
            goto_next_end = {
              ["]M"] = "@function.outer",
              ["]["] = "@class.outer",
            },
            goto_previous_start = {
              ["<leader>ak"] = "@function.outer",
              ["[["] = "@class.outer",
            },
            goto_previous_end = {
              ["[M"] = "@function.outer",
              ["[]"] = "@class.outer",
            },
          },
        },
      })
    end,
  })
  -- use({
  -- 	"gelguy/wilder.nvim",
  -- 	config = function() end,
  -- })
  -- use({
  -- 	"windwp/windline.nvim",
  -- 	config = function()
  -- 		require("wlsample.evil_line")
  -- 		require("wlfloatline").setup()
  -- 	end,
  -- })
  use({
    "vim-test/vim-test",
  })
  --[[ use({ "brymer-meneses/grammar-guard.nvim" }) ]]
  use({ "p00f/clangd_extensions.nvim" })
  use({
    "akinsho/git-conflict.nvim",
    tag = "*",
    config = function()
      require("git-conflict").setup({
        default_mappings = true, -- disable buffer local mapping created by this plugin
        disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
        highlights = { -- They must have background color, otherwise the default color will be used
          incoming = "DiffText",
          current = "DiffAdd",
        },
      })
    end,
  })
  use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim", config = lua_path("neogit") })
  use({
    "akinsho/bufferline.nvim",
    tag = "v2.*",
    requires = "kyazdani42/nvim-web-devicons",
    config = lua_path("bufferline"),
  })
  --[[ use {'HustLion/q-quit'} ]]
  --[[ use {'akinsho/bufferline.nvim', tag = "v2.*" } ]]
  --[[ use {'yamatsum/nvim-cursorline',  config = lua_path("nvim-cursorline") } -- bug other plugin ]]
  --[[ use({ ]]
  --[[   "akinsho/toggleterm.nvim", ]]
  --[[   tag = "*", ]]
  --[[   config = lua_path("toggleterm"), ]]
  --[[ }) ]]
  use({ "numtostr/FTerm.nvim", config = lua_path("fterm") })
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  })
  use({ "renerocksai/telekasten.nvim", config = lua_path("telekasten") })
  use({ "renerocksai/calendar-vim" })
  use({ "ekickx/clipboard-image.nvim", config = lua_path("clipboard-image") })
  use("LudoPinelli/comment-box.nvim")
  use({
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  })
  use('tibabit/vim-templates')

use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        require("lspsaga").setup({})
    end,
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
})
  use { "numtostr/BufOnly.nvim", cmd = "BufOnly" }
  use {
    'sudormrfbin/cheatsheet.nvim',
    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    }
  }
  use "folke/neodev.nvim"
  use { 'tamago324/nlsp-settings.nvim', config = lua_path("nlsp_setting") }
  use { 'Civitasv/cmake-tools.nvim', config = lua_path("cmaketool") }
  use({
    "dnlhc/glance.nvim",
    config = function()
      require('glance').setup({
        -- your configuration
      })
    end,
  })
  use {"rktjmp/lush.nvim"}
use {
    "mcchrish/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    requires = "rktjmp/lush.nvim"
}
use({
  "roobert/search-replace.nvim", config = lua_path("search-replace") })

use{'joechrisellis/lsp-format-modifications.nvim', config = lua_path("lsp-format-modification") }
--[[ use { ]]
--[[     'ldelossa/nvim-ide', config = lua_path("nvim-ide") ]]
--[[ } ]]
  --[[ use { ]]
  --[[   'tanvirtin/vgit.nvim', ]]
  --[[   requires = { ]]
  --[[     'nvim-lua/plenary.nvim' ]]
  --[[   }, config = lua_path("vgit") ]]
  --[[]]
  --[[ } ]]
use{"b0o/schemastore.nvim", config = lua_path("schemastore")}
use {
  "nvim-neotest/neotest",
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  }, config = lua_path("neotest")
}
use {"nvim-neotest/neotest-vim-test", config = lua_path("neotest-vim-test")}

end)
