local telescopeConfig = require("telescope.config")

local vimgrep_arguments = { table.unpack(telescopeConfig.values.vimgrep_arguments) }

for i,v in ipairs(vimgrep_arguments) do
  print(i, v)
end

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

for i,v in ipairs(vimgrep_arguments) do
  print(i, v)
end

return {
  defaults = {
    vimgrep_arguments = vimgrep_arguments
  },
  pickers = {
		find_files = {
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
		},
	},
  extensions = {
    ['ui-select'] = {
      require 'telescope.themes'.get_dropdown {}
    }
  }
}
