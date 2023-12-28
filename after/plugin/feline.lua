local line_ok, feline = pcall(require, "feline")
if not line_ok then
	return
end 
local one_monokai = {
	fg = "#e0def4",
	bg = "#00ffffff",
    green =  "#5fd068",
    yellow = "#f6c177",
	purple = "#c4a7e7",
	orange = "#d19a66",
	peanut = "#f6d5a4",
	red = "#eb6f92",
    aqua = "#a4b9ef",
	darkblue = "#26233a",
	dark_red = "#b4637a",
}

local vi_mode_colors = {
	NORMAL = "green",
	OP = "green",
	INSERT = "yellow",
	VISUAL = "purple",
	LINES = "orange",
	BLOCK = "dark_red",
	REPLACE = "red",
	COMMAND = "aqua",
}

local c = {
	vim_mode = {
		provider = {
			name = "vi_mode",
			opts = {
				show_mode_name = true,
				-- padding = "center", -- Uncomment for extra padding.
			},
		},
		hl = function()
			return {
				fg = require("feline.providers.vi_mode").get_mode_color(),
				bg = "darkblue",
				style = "NONE",
				name = "NeovimModeHLColor",
			}
		end,
		left_sep = " ",
		right_sep = "right_rounded",
	},
	gitBranch = {
		provider = "git_branch",
		hl = {
			fg = "peanut",
			bg = "darkblue",
			style = "None",
		},
		left_sep = "block",
		right_sep = "block",
	},
	gitDiffAdded = {
		provider = "git_diff_added",
		hl = {
			fg = "green",
			bg = "darkblue",
		},
		left_sep = "block",
		right_sep = "block",
	},
	gitDiffRemoved = {
		provider = "git_diff_removed",
		hl = {
			fg = "red",
			bg = "darkblue",
		},
		left_sep = "block",
		right_sep = "block",
	},
	gitDiffChanged = {
		provider = "git_diff_changed",
		hl = {
			fg = "fg",

		},
		left_sep = "block",
		right_sep = "right_filled",
	},
	separator = {
		provider = "",
	},
	fileinfo = {
		provider = {
			name = "file_info",
			opts = {
				type = "relative-short",
			},
		},
		hl = {
			style = "NONE",
		},
		left_sep = " ",
		right_sep = " ",
	},
	diagnostic_errors = {
		provider = "diagnostic_errors",
		hl = {
			fg = "red",
		},
	},
	diagnostic_warnings = {
		provider = "diagnostic_warnings",
		hl = {
			fg = "yellow",
		},
	},
	diagnostic_hints = {
		provider = "diagnostic_hints",
		hl = {
			fg = "aqua",
		},
	},
	diagnostic_info = {
		provider = "diagnostic_info",
	},
	lsp_client_names = {
		provider = "lsp_client_names",
		hl = {
			fg = "aqua",
			bg = "darkblue",
			style = "NONE",
		},
		left_sep = " ",
		right_sep = "right_rounded",
	},
	file_type = {
		provider = {
			name = "file_type",
			opts = {
				filetype_icon = true,
				case = "titlecase",
			},
		},
		hl = {
			fg = "aqua",
			bg = "darkblue",
			style = "NONE",
		},
		left_sep = " ",
		right_sep = "right_rounded",
	},
	file_encoding = {
		provider = "file_encoding",
		hl = {
			fg = "orange",
			bg = "darkblue",
			style = "italic",
		},
		left_sep = "block",
		right_sep = "block",
	},
	position = {
		provider = "position",
		hl = {
			fg = "green",
			bg = "darkblue",
			style = "NONE",
		},
		left_sep = "block",
		right_sep = "block",
	},
	line_percentage = {
		provider = "line_percentage",
		hl = {
			fg = "aqua",
			bg = "darkblue",
			style = "NONE",
		},
		left_sep = " ",
		right_sep = "right_rounded",
	},
	scroll_bar = {
		provider = "scroll_bar",
		hl = {
			fg = "darkblue",
			style = "NONE",
		},
        left_sep = " "
	},
}

local left = {
	c.vim_mode,
	c.fileinfo,
	c.gitBranch,
	c.gitDiffAdded,
  c.gitDiffRemoved,
	c.gitDiffChanged,
	c.separator,
}

local middle = {
	-- c.diagnostic_errors,
	-- c.diagnostic_warnings,
	-- c.diagnostic_info,
	-- c.diagnostic_hints,
}

local right = {
	-- c.lsp_client_names,
	-- c.file_type,
    --	c.file_encoding,
    -- c.position,
	c.line_percentage,
	c.scroll_bar,
}

local components = {
	active = {
		left,
		middle,
		right,
	},
	inactive = {
		left,
		middle,
		right,
	},
}

feline.setup({
	components = components,
	theme = one_monokai,
	vi_mode_colors = vi_mode_colors,
})
