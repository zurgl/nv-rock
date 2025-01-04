local rocks_config = {
	rocks_path = vim.env.HOME .. "/.local/share/nvim/rocks",
}

vim.g.rocks_nvim = rocks_config

local luarocks_path = {
	vim.fs.joinpath(rocks_config.rocks_path, "share", "lua", "5.1", "?.lua"),
	vim.fs.joinpath(rocks_config.rocks_path, "share", "lua", "5.1", "?", "init.lua"),
}

package.path = package.path .. ";" .. table.concat(luarocks_path, ";")

local luarocks_cpath = {
	vim.fs.joinpath(rocks_config.rocks_path, "lib", "lua", "5.1", "?.so"),
	vim.fs.joinpath(rocks_config.rocks_path, "lib64", "lua", "5.1", "?.so"),
}

package.cpath = package.cpath .. ";" .. table.concat(luarocks_cpath, ";")

vim.opt.runtimepath:append(vim.fs.joinpath(rocks_config.rocks_path, "lib", "luarocks", "rocks-5.1", "*", "*"))

vim.g.rocks_nvim = {
	treesitter = {
		ensure_installed = { "lua", "rust", "javascript", "typescript", "vim", "bash", "just", "json" },
		sync_install = false,
		auto_install = true,
		autopairs = {
			enable = true,
		},
		ignore_install = { "docker, sql" },
		highlight = {
			enable = true,
			disable = { "" },
			additional_vim_regex_highlighting = true,
		},
		indent = {
			enable = true,
			disable = { "yaml" },
		},
	},
}

-- Specific to nvim
vim.g.netrw_keepdir = 0
vim.g.autochdir = true

-- Provider
vim.g.python3_host_prog = "/home/zu/.venv/bin/python"
vim.g.loaded_python3_provider = 1
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

-- setup for deno-lsp
vim.g.markdown_fenced_languages = {
	"ts=typescript",
}

require("conf")
require("keys")
