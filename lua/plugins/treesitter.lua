require("nvim-treesitter.configs").setup({
	ensure_installed = {},
	sync_install = false,
	auto_install = true,
	autopairs = {
		enable = true,
	},
	ignore_install = { "docker, sql" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
		disable = { "yaml" },
	},
})

-- require("tree-sitter-just").setup({})
-- "bash",
-- "commonlisp",
-- "fish",
-- "javascript",
-- "json",
-- "make",
-- "lua",
-- "rust",
-- "toml",
-- "typescript",
-- "typst",
-- "vim",
-- "xml",

-- "xml"
-- "toml"
-- "json"
-- "just"
-- "fish"
-- "bash"
-- "toml"
-- "rust"
-- "typst"
-- "typescript"
-- "commonlisp"
-- "javascript"
