-- <F1> help
-- <F2> vim-codepainter
-- <F3> vim-codepainter navigate
-- vim.g.mapleader = "<space>"
-- vim.keymap.set("n", "<F4>", ":set number! relativenumber!<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<F5>", ":set list! list?<CR>", { noremap = false, silent = false })
--[[ vim.keymap.set("n", "ç", '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true }) ]]
--[[ vim.keymap.set("t", "ç", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true }) ]]

--[[ vim.keymap.set("n", "ç", '<CMD>ToggleTerm<CR>', { noremap = true, silent = true }) ]]
--[[ vim.keymap.set("t", "ç", '<C-\\><C-n><CMD>ToggleTerm<CR>', { noremap = true, silent = true }) ]]
vim.cmd([[
nnoremap <silent>ç <Cmd>exe v:count1 . "ToggleTerm"<CR>
tnoremap <silent>ç <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
]])

vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { noremap = false, silent = true })
vim.keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { noremap = false, silent = true })
vim.keymap.set("n", "s", ":w<CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<F8>", ":MinimapToggle<CR>", { noremap = false, silent = true })
-- vim.keymap.set("n", "<leader>nm", ":Dispatch npm start<CR>", { noremap = false, silent = false })
-- -- Buffers
--[[ vim.keymap.set("n", "<leader>bd", ":BDelete this<CR>", { noremap = false, silent = false }) ]]
-- vim.keymap.set("n", "<leader>bda", ":BDelete! all<CR>", { noremap = false, silent = false })
-- vim.keymap.set("n", "<leader>bdh", ":BDelete! hidden<CR>", { noremap = false, silent = false })
-- vim.keymap.set("n", "<leader>bn", "<Plug>(cokeline-focus-next)", { noremap = false, silent = false })
-- vim.keymap.set("n", "<leader>bp", "<Plug>(cokeline-focus-prev)", { noremap = false, silent = false })
-- -- Git
-- vim.keymap.set("n", "<leader>gf", ":20G<CR>", { noremap = false, silent = false })
-- vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { noremap = false, silent = false })
-- -- Ctrlsf
vim.keymap.set("n", "<C-F>f", "<Plug>CtrlSFPrompt", { noremap = false, silent = false })
vim.keymap.set("v", "<C-F>f", "<Plug>CtrlSFVwordExec", { noremap = false, silent = false })
vim.keymap.set("n", "<C-F>n", "<Plug>CtrlSFCwordExec", { noremap = false, silent = false })
vim.keymap.set("n", "<C-F>t", ":CtrlSFToggle<CR>", { noremap = true, silent = false })
-- -- Easy-align
-- vim.keymap.set("x", "ga", "<Plug>(EasyAlign)", { noremap = false, silent = false })
-- vim.keymap.set("n", "ga", "<Plug>(EasyAlign)", { noremap = false, silent = false })
-- -- Lightspeed
-- vim.keymap.set("n", "f", "<Plug>Lightspeed_f", { noremap = false, silent = false })
-- vim.keymap.set("n", "F", "<Plug>Lightspeed_F", { noremap = false, silent = false })
-- vim.keymap.set("n", "t", "<Plug>Lightspeed_t", { noremap = false, silent = false })
-- vim.keymap.set("n", "T", "<Plug>Lightspeed_T", { noremap = false, silent = false })
-- -- LSP
-- vim.keymap.set("n", "<space>,", ":lua vim.lsp.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<space>;", ":lua vim.lsp.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
--[[ vim.keymap.set("n", "ga", ":lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true }) ]]
vim.keymap.set("n", "ga", ":CodeActionMenu<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gf", ":lua vim.lsp.buf.formatting()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gh", ":lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<space>m", ":lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gs", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gk", ":lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
-- -- Telescope
-- vim.keymap.set("n", "<leader>r", ":lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>#",
-- 	":lua require('telescope.builtin').grep_string()<CR>",
-- 	{ noremap = true, silent = true }
-- )
-- vim.keymap.set("n", "<leader>bb", ":lua require('telescope.builtin').buffers()<CR>", { noremap = true, silent = true })
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>t",
-- 	":lua require('telescope.builtin').treesitter()<CR>",
-- 	{ noremap = true, silent = true }
-- )
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>l",
-- 	":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>",
-- 	{ noremap = true, silent = true }
-- )
vim.keymap.set(
	"n",
	"<leader>f",
	"<cmd>Telescope git_files<cr>",
	{ noremap = true, silent = true }
)
vim.keymap.set("n", "<leader>p", "<cmd>Telescope projects<CR>", { noremap = true, silent = true })
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>c",
-- 	":lua require('plugins.telescope').my_git_commits()<CR>",
-- 	{ noremap = true, silent = true }
-- )
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>g",
-- 	":lua require('plugins.telescope').my_git_status()<CR>",
-- 	{ noremap = true, silent = true }
-- )
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>b",
-- 	":lua require('plugins.telescope').my_git_bcommits()<CR>",
-- 	{ noremap = true, silent = true }
-- )
 --[[ vim.keymap.set("n", "<leader>ns", ":lua require('plugins.telescope').my_note()<CR>", { noremap = true, silent = true }) ]]
 --[[ vim.keymap.set("n", "<leader>nn", ":lua NewNote()<CR>", { noremap = true, silent = false }) ]]
 vim.keymap.set("n", "<leader>nn", "<cmd>Telekasten find_notes<CR>", { noremap = true, silent = false })
 vim.keymap.set("n", "<leader>nb", "<cmd>Telekasten new_note<CR>", { noremap = true, silent = false })
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>n",
-- 	":lua require('plugins.scratches').open_scratch_file_floating()<CR>",
-- 	{ noremap = true, silent = true }
-- )
-- vim.keymap.set("n", "<leader>gc", ":Octo issue create<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>i", ":Octo issue list<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>y", ":Telescope neoclip<CR>", { noremap = true, silent = false })
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>ll",
-- 	":lua require('telescope.builtin').grep_string({ search = vim.fn.input('GREP -> ') })<CR>",
-- 	{ noremap = true, silent = true }
-- )
-- -- HlsLens
-- vim.keymap.set(
-- 	"n",
-- 	"n",
-- 	"<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>",
-- 	{ noremap = true, silent = true }
-- )
-- vim.keymap.set(
-- 	"n",
-- 	"N",
-- 	"<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>",
-- 	{ noremap = true, silent = true }
-- )
-- vim.keymap.set("n", "*", "*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
-- vim.keymap.set("n", "#", "#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
-- vim.keymap.set("n", "g*", "g*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
-- vim.keymap.set("n", "g#", "g#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
-- -- Todo-comments
-- vim.keymap.set("n", "<leader>to", ":TodoTelescope<CR>", { noremap = true, silent = false })
-- -- Copilot
-- vim.keymap.set("i", "<C-J>", "copilot#Accept()", { noremap = true, silent = true, expr = true })
-- -- Move.nvim
-- vim.keymap.set("n", "<A-j>", ":MoveLine(1)<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>", { noremap = true, silent = true })
-- vim.keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>", { noremap = true, silent = true })
-- vim.keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<A-l>", ":MoveHChar(1)<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<A-h>", ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
-- vim.keymap.set("v", "<A-l>", ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
-- vim.keymap.set("v", "<A-h>", ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
-- -- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>Trouble lsp_references<cr>", { silent = true, noremap = true })
-- -- Nvim-dap
vim.keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>ds", "<cmd>lua require'dap'.step_over()<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>dsi", "<cmd>lua require'dap'.step_into()<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>dso", "<cmd>lua require'dap'.step_out()<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>dui", ":lua require('dapui').toggle()<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>dro", "<cmd>lua require'dap'.repl.open()<CR>", { silent = true, noremap = true })
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>dcc",
-- 	"<cmd>lua require'telescope'.extensions.dap.commands{}<CR>",
-- 	{ silent = true, noremap = true }
-- )
vim.keymap.set(
	"n",
	"<leader>dlb",
	"<cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>",
	{ silent = true, noremap = true }
)
vim.keymap.set(
	"n",
	"<leader>dv",
	"<cmd>lua require'telescope'.extensions.dap.variables{}<CR>",
	{ silent = true, noremap = true }
)
vim.keymap.set(
	"n",
	"<leader>df",
	"<cmd>lua require'telescope'.extensions.dap.frames{}<CR>",
	{ silent = true, noremap = true }
)

local opt = {}
vim.keymap.set("n", "<F7>", ":CMake build_all -j4<cr>", opt)
vim.keymap.set("n", "<F6>", ":CMake build_all --config Release -j4<cr>", opt)
vim.keymap.set("n", "<F5>", ':AsyncRun pwsh -Command "frintelcompile"<cr>', opt)
vim.keymap.set("v", "*", [[y/\V<C-r>=escape(@",'/\')<CR><CR>]], {})
-- vim.keymap.set("n", "<C-!>", ":%s/", opt)
-- vim.keymap.set("v", "<C-!>", ":s/", opt)
vim.keymap.set("n", "<C-a>", "GVgg", opt)
-- vim.keymap.set("n","<S-Insert>","<C-R>+",opt)
vim.keymap.set("n", "<leader>gvf", ":DiffviewFileHistory<cr>", opt)
vim.keymap.set("n", "<leader>gvo", ":DiffviewOpen<cr>", opt)
vim.keymap.set("n", "<leader>zd", ":DevDocsUnderCursor<cr>", opt)
-- vim.keymap.set("n", "<leader>zd",":DevDocsUnderCursor<cr>",opt)
-- vim.keymap.set("n", "<leader>zn",":edit ~/NEORG/index.norg<cr>",opt)

vim.keymap.set("n", "<leader>zx", ":only<cr>", opt)
vim.keymap.set("n", "<leader>za", ":tabnew<cr>", opt)
vim.keymap.set("n", "²", ":CloseAll<cr>", opt)
vim.keymap.set("i", "²", "<C-o>:CloseAll<cr>", opt)
vim.keymap.set("t", "²", "<C-\\><C-n>CloseAll<cr>", opt)
vim.keymap.set("t", "<C-a>", "<C-\\><C-n>", opt)
vim.keymap.set("t", "<C-j>", [[<DOWN>]], opt)
vim.keymap.set("t", "<C-k>", [[<UP>]], opt)
vim.keymap.set("n", "<leader>zq", "<cmd>copen<CR>", opt)
-- vim.keymap.set("n", "<F7>","<cmd>CMake build_all<CR>",opt)

vim.keymap.set("v", "*", [[y/\V<C-r>=escape(@",'/\')<CR><CR>]], opt)
vim.keymap.set("n", "<leader>zh", [[:%s/<c-r><c-w>/<c-r><c-w>/g]], opt)
vim.keymap.set("n", "<leader>zc", ":Telescope grep_string<cr>", opt)
vim.keymap.set("n", "<leader>sa", ":Telescope find_files hidden=true no_ignore=true<cr>", opt)
vim.keymap.set("n", "<leader>zm", "<cmd>Glow<cr>", opt)
vim.keymap.set("n", "<leader>zp", "<cmd>MarkdownPreview<cr>", opt)
vim.keymap.set("n", "<leader>td", ":TranslateW<cr>", opt)
vim.keymap.set("v", "<leader>td", ":TranslateW<cr>", opt)
vim.keymap.set("n", "<leader>tr", ":TranslateR<cr>", opt)
vim.keymap.set("v", "<leader>tr", ":TranslateR<cr>", opt)
vim.keymap.set("n", "<leader>ta", ":TranslateW!<cr>", opt)
vim.keymap.set("v", "<leader>ta", ":TranslateW!<cr>", opt)
vim.keymap.set("n", "<leader>tz", ":TranslateR!<cr>", opt)
vim.keymap.set("v", "<leader>tz", ":TranslateR!<cr>", opt)
vim.keymap.set("n", "<leader>zS", ":lua require('spectre').open()<CR>", opt)
-- search current word
vim.keymap.set("n", "<leader>zsw", ":lua require('spectre').open_visual({select_word=true})<CR>", opt)
vim.keymap.set("v", "<leader>zss", ":lua require('spectre').open_visual()<CR>", opt)
-- search in current file
vim.keymap.set("n", "<leader>zsp", ":lua require('spectre').open_file_search()<cr>", opt)
vim.keymap.set("n", "<leader>znb", ":AsyncRun cpplint % <cr>", opt)

-- vim.keymap.set("n","<leader>zz",":TZFocus<cr>",opt)
vim.keymap.set("n", "<leader>zz", ":only<cr>", opt)
vim.keymap.set("n", "<leader>lm", ":SymbolsOutline<cr>", opt)
vim.keymap.set("n", "<C-:>", ":Telescope commands<cr>", opt)
vim.keymap.set("n", "<C-;>", ":Telescope keymaps<cr>", opt)
vim.keymap.set("n", "<C-!>", "<cmd>Telescope command_history<cr>", opt)

-- Moving the cursor through long soft-wrapped lines
vim.keymap.set("n", "j", "gj", opt)
vim.keymap.set("n", "k", "gk", opt)

local which_key = require("which-key")
-- which_key.mappings["S"] = {
-- 	name = "Session",
-- 	c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
-- 	l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
-- 	Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
-- }
-- local vmappings = {
-- 	["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle linewise (visual)" },
-- }
local mappings = {
	[";"] = { "<cmd>Alpha<CR>", "Dashboard" },
	["w"] = { "<cmd>w!<CR>", "Save" },
	["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" },
	-- ["f"] = { require("lvim.core.telescope.custom-finders").find_project_files, "Find File" },
	-- ["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
	b = {
		name = "Buffers",
		j = { "<cmd>BufferLinePick<cr>", "Jump" },
		f = { "<cmd>Telescope buffers<cr>", "Find" },
		b = { "<cmd>BDelete this<CR>", "Close Buffer" },
		h = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
		l = { "<cmd>BufferLineCycleNext<cr>", "Next" },
		e = {
			"<cmd>BufferLinePickClose<cr>",
			"Pick which buffer to close",
		},
		g = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
		m = {
			"<cmd>BufferLineCloseRight<cr>",
			"Close all to the right",
		},
		D = {
			"<cmd>BufferLineSortByDirectory<cr>",
			"Sort by directory",
		},
		L = {
			"<cmd>BufferLineSortByExtension<cr>",
			"Sort by language",
		},
	},
	-- p = {
	-- 	name = "Packer",
	-- 	c = { "<cmd>PackerCompile<cr>", "Compile" },
	-- 	i = { "<cmd>PackerInstall<cr>", "Install" },
	-- 	s = { "<cmd>PackerSync<cr>", "Sync" },
	-- 	S = { "<cmd>PackerStatus<cr>", "Status" },
	-- 	u = { "<cmd>PackerUpdate<cr>", "Update" },
	-- },

	-- " Available Debug Adapters:
	-- "   https://microsoft.github.io/debug-adapter-protocol/implementors/adapters/
	-- " Adapter configuration and installation instructions:
	-- "   https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
	-- " Debug Adapter protocol:
	-- "   https://microsoft.github.io/debug-adapter-protocol/
	-- " Debugging
	g = {
		name = "Git",
		j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
		k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
		l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
		p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
		r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
		R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
		s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
		u = {
			"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
			"Undo Stage Hunk",
		},
		o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
		C = {
			"<cmd>Telescope git_bcommits<cr>",
			"Checkout commit(for current file)",
		},
		d = {
			"<cmd>Gitsigns diffthis HEAD<cr>",
			"Git Diff",
		},
		g = { "<cmd>LazyGit<cr>", "LazyGit" },
		m = { "<cmd>Neogit<cr>", "Neogit" },
	},
	l = {
		name = "LSP",
		-- a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		--[[ a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "CodeLens Action" }, ]]
		a = { "<cmd>CodeActionMenu<CR>", "CodeLens Action" },
		h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "symbole help" },
		d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
		w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
		i = { "<cmd>LspInfo<cr>", "Info" },
		I = { "<cmd>Mason<cr>", "Mason Info" },
		j = {
			vim.diagnostic.goto_next,
			"Next Diagnostic",
		},
		k = {
			vim.diagnostic.goto_prev,
			"Prev Diagnostic",
		},
		f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format" },
		l = { "<cmd>GitMessenger<cr>", "Blame" },
		-- p = {
		--   name = "Peek",
		--   d = { "<cmd>lua require('lvim.lsp.peek').Peek('definition')<cr>", "Definition" },
		--   t = { "<cmd>lua require('lvim.lsp.peek').Peek('typeDefinition')<cr>", "Type Definition" },
		--   i = { "<cmd>lua require('lvim.lsp.peek').Peek('implementation')<cr>", "Implementation" },
		-- },
		q = { vim.diagnostic.setloclist, "Quickfix" },
		r = { vim.lsp.buf.rename, "Rename" },
		S = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
		s = {
			"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
			"Workspace Symbols",
		},
		e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
	},
	s = {
		name = "Search",
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
		H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
		M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		R = { "<cmd>Telescope registers<cr>", "Registers" },
		t = { "<cmd>Telescope live_grep<cr>", "Text" },
		s = { "<cmd>Telescope grep_string<cr>", "Current word" },
		k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
		C = { "<cmd>Telescope commands<cr>", "Commands" },
		p = {
			"<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
			"Colorscheme with Preview",
		},
	},
	T = {
		name = "Treesitter",
		i = { ":TSConfigInfo<cr>", "Info" },
	},
	S = {
		name = "Session",
		c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
		l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
		Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
	},
}

which_key.register(mappings, { prefix = "<leader>" })

-- which_key.mappings["g"] = {
-- 	name = "Git",
-- 	j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
-- 	k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
-- 	-- l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
-- 	l = { "<cmd>GitMessenger<cr>", "Blame" },
-- 	p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
-- 	r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
-- 	R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
-- 	s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
-- 	u = {
-- 		"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
-- 		"Undo Stage Hunk",
-- 	},
-- 	o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
-- 	b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
-- 	c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
-- 	C = {
-- 		"<cmd>Telescope git_bcommits<cr>",
-- 		"Checkout commit(for current file)",
-- 	},
-- 	d = {
-- 		"<cmd>Gitsigns diffthis HEAD<cr>",
-- 		"Git Diff",
-- 	},
-- 	g = { "<cmd>LazyGit<cr>", "LazyGit" },
-- 	M = {
-- 		":!git branch --merged | Select-String -Pattern '^(?!.*(master|.*-stable)).*$' | ForEach-Object { git branch -d $_.ToString().Trim() } <cr>",
-- 		"clean merged branch",
-- 	},
-- }
--
--
--
-- 'jk' for quitting insert mode
--[[ vim.keymap.set("i", "jk", "<ESC>", opt) ]]
-- 'kj' for quitting insert mode
--[[ vim.keymap.set("i", "kj", "<ESC>", opt) ]]
-- 'jj' for quitting insert mode
--[[ vim.keymap.set("i", "jj", "<ESC>", opt) ]]
-- Move current line / block with Alt-j/k ala vscode.
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opt)
-- Move current line / block with Alt-j/k ala vscode.
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opt)
-- navigation
vim.keymap.set("i", "<A-Up>", "<C-\\><C-N><C-w>k", opt)
vim.keymap.set("i", "<A-Down>", "<C-\\><C-N><C-w>j", opt)
vim.keymap.set("i", "<A-Left>", "<C-\\><C-N><C-w>h", opt)
vim.keymap.set("i", "<A-Right>", "<C-\\><C-N><C-w>l", opt)

vim.keymap.set("n", "<C-h>", "<C-w>h", opt)
vim.keymap.set("n", "<C-j>", "<C-w>j", opt)
vim.keymap.set("n", "<C-k>", "<C-w>k", opt)
vim.keymap.set("n", "<C-l>", "<C-w>l", opt)

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opt)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opt)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opt)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opt)

-- Move current line / block with Alt-j/k a la vscode.
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", opt)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", opt)

-- QuickFix
vim.keymap.set("n", "]q", ":cnext<CR>", opt)
vim.keymap.set("n", "[q", ":cprev<CR>", opt)
vim.keymap.set("n", "<C-q>", ":call QuickFixToggle()<CR>", opt)

vim.keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", opt)
vim.keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", opt)
vim.keymap.set("t", "<C -k>", "<C-\\><C-N><C-w>k", opt)
vim.keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", opt)

-- Better indenting
vim.keymap.set("v", "<", "<gv", opt)
vim.keymap.set("v", ">", ">gv", opt)

-- Move selected line / block of text in visual mode
-- vim.keymap.set("gv","K",":move '<-2<CR>gv-gv",opt)
-- vim.keymap.set("gv","J",":move '>+1<CR>gv-gv",opt)

-- Move current line / block with Alt-j/k ala vscode.
-- vim.keymap.set("gv","<A-j>",":m '>+1<CR>gv-gv",opt)
-- vim.keymap.set("gv","<A-k>",":m '<-2<CR>gv-gv",opt)

-- navigate tab completion with <c-j> and <c-k>
-- runs conditionally
-- ["<C-j>"] = { 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true, noremap = true } },
-- ["<C-k>"] = { 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', { expr = true, noremap = true } },

--[[ vim.set.keymap("n","q","<cmd>lua require('utils.settings.functions').smart_quit()<CR>", opt) ]]

vim.keymap.set("n", "<leader>lz", "<Cmd>ClangdSwitchSourceHeader<CR>", opt)

vim.keymap.set("c","<S-k>","<UP>",opt)
vim.keymap.set("c","<S-j>","<DOWN>",opt)
vim.keymap.set("n","<leader>q","<cmd>lua smart_quit()<cr>",opt)


vim.keymap.set('n', '<leader>co', '<Plug>(git-conflict-ours)')
vim.keymap.set('n', '<leader>ct', '<Plug>(git-conflict-theirs)')
vim.keymap.set('n', '<leader>cb', '<Plug>(git-conflict-both)')
vim.keymap.set('n', '<leader>c0', '<Plug>(git-conflict-none)')
vim.keymap.set('n', '<leader>ck', '<Plug>(git-conflict-prev-conflict)')
vim.keymap.set('n', '<leader>cj', '<Plug>(git-conflict-next-conflict)')
vim.keymap.set('n', '<leader>vv', '<cmd>windo diffthis<cr>')
vim.keymap.set('n', '<leader>vf', '<cmd>bufdo diffoff<cr>')
vim.keymap.set("n", "<leader>sz", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set("n", "<F4>", "<cmd>MundoToggle<cr>")
