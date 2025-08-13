vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.keymap.set({ 'n', 'v', 'o' }, 'k', 'k', { noremap = true })
vim.keymap.set({ 'n', 'v', 'o' }, 'j', 'h', { noremap = true })
vim.keymap.set({ 'n', 'v', 'o' }, 'l', 'j', { noremap = true })
vim.keymap.set({ 'n', 'v', 'o' }, ';', 'l', { noremap = true })

vim.g.mapleader = " "
require("config.lazy")

require("which-key").add({
	{ "<leader>j",  function() vim.lsp.buf.format({ async = true }) end, desc = "Format Code",              prefix = "" },
	{ "<leader>l",  function() vim.diagnostic.open_float() end,          desc = "Diagnostics under cursor", prefix = "" },
	{ "<leader>r",  function() vim.lsp.buf.rename() end,                 desc = "Rename key",               prefix = "" },
	{ "<leader>e",  ":Neotree reveal<CR>",                               desc = "Focus NeoTree",            prefix = "" },
	{ "<leader>t",  ":Neotree toggle<CR>",                               desc = "Toggle NeoTree",           prefix = "" },
	{ "<leader>f",  group = "file",                                      prefix = "" },
	{ "<leader>ff", ":Telescope find_files<CR>",                         desc = "Find Files",               prefix = "" },
	{ "<leader>fr", ":Telescope oldfiles<CR>",                           desc = "Recent Files",             prefix = "" },
	{ "<leader>go", ":Telescope lsp_definitions<CR>",                    desc = "Go to defenitions",        prefix = "" },
	{ "<leader>u",  ":Telescope diagnostics<CR>",                        desc = "Diagnostics",              prefix = "" },
})

require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "c_sharp", "cpp", "c" },
	highlight = {
		enable = true,
		addtional_vim_regex_highlighting = false,
	}
})

require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"%.uid",
		}
	}
})

require("neo-tree").setup({
	filesystem = {
		filtered_items = {
			visible = false,
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_by_name = {},
			hide_by_pattern = {
				"*.uid",
				"*.import"
			}
		}
	},
	window = {
		mappings = {
			[";"] = "close_node",
			["j"] = "open",
			["k"] = "next",
			["l"] = "prev",
		}
	}
})
