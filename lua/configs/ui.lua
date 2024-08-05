-- Colorscheme
require("onedarkpro").setup({
	styles = {
		types = "bold,italic",
		methods = "bold,italic",
		numbers = "NONE",
		strings = "NONE",
		comments = "italic",
		keywords = "bold,italic",
		constants = "bold,italic",
		functions = "italic",
		operators = "NONE",
		variables = "bold,italic",
		parameters = "NONE",
		conditionals = "italic",
		virtual_text = "NONE",
	},
})

vim.cmd.colorscheme("onedark_vivid")

-- Status line and buffer line
require("staline").setup({
	sections = {
		left = { "  ", "mode", " ", "branch", " ", "lsp" },
		mid = {},
		right = { "file_name", "line_column" },
	},
	mode_colors = {
		i = "#d4be98",
		n = "#84a598",
		c = "#8fbf7f",
		v = "#fc802d",
	},
	defaults = {
		true_colors = true,
		line_column = " [%l/%L] :%c  ",
		branch_symbol = " ",
	},
	special_table = {
		neotree = { "File tree", " " },
	},
})
require("mini.tabline").setup()

-- Noice
require("noice").setup({
	lsp = {
		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
		},
	},
	-- you can enable a preset for easier configuration
	presets = {
		bottom_search = true, -- use a classic bottom cmdline for search
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = false, -- add a border to hover docs and signature help
	},
})

-- ToggleTerm
require("toggleterm").setup()

-- Startup screen
require("startup").setup({ theme = "evil" })

-- Transparency
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none", fg = "#d4be98" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
