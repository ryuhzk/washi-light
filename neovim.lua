return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "dawn",
				dark_variant = "moon",
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true,
					migrations = true,
				},

				styles = {
					bold = true,
					italic = true,
					transparency = false,
				},

				palette = {
					dawn = {
						base = "#9bdbb2",
						surface = "#eedbb2",
						overlay = "#ebdbb2",
						muted = "#928374",
						subtle = "#a89984",
						text = "#3c3836",

						love = "#cc241d",
						gold = "#d79921",
						rose = "#fe8019",
						pine = "#98971a",
						foam = "#689d6a",
						iris = "#458588",
						highlight_low = "#f2e5bc",
						highlight_med = "#ebdbb2",
						highlight_high = "#d8c8a3",
					},
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "foam",
					info = "iris",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "love",
					h2 = "iris",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				highlight_groups = {
					Normal = { bg = "base", fg = "text" },
					CursorLine = { bg = "none" },
					LineNr = { fg = "muted" },
					CursorLineNr = { fg = "love" },
					Comment = { fg = "muted", italic = true },
					String = { fg = "pine" },
					Keyword = { fg = "love", bold = true },
					Function = { fg = "iris" },
					Type = { fg = "foam" },
					Constant = { fg = "gold" },
					Operator = { fg = "rose" },
					Pmenu = { bg = "surface", fg = "text" },
					PmenuSel = { bg = "love", fg = "base" },
					StatusLine = { bg = "surface", fg = "text" },
					TabLine = { bg = "surface", fg = "subtle" },
					TabLineSel = { bg = "base", fg = "text", bold = true },
					Visual = { bg = "highlight_med" },
					Search = { bg = "gold", fg = "base" },
					IncSearch = { bg = "love", fg = "base" },
					DiffAdd = { bg = "#e8f5e8", fg = "pine" },
					DiffChange = { bg = "#fff4e6", fg = "gold" },
					DiffDelete = { bg = "#ffeaea", fg = "love" },
					DiffText = { bg = "#ffe4b5", fg = "rose", bold = true },
				},

				before_highlight = function(group, highlight, palette)
					if group == "Normal" or group == "SignColumn" or group == "FoldColumn" then
						highlight.bg = palette.base
					end

					if highlight.fg == palette.subtle then
						highlight.fg = palette.muted
					end
				end,
			})
			vim.cmd("colorscheme rose-pine-dawn")
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "rose-pine-dawn",
		},
	},
}
