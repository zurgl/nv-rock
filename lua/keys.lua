local opts = {
	noremap = true,
	silent = true,
}

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-s>", ":update<CR>", opts)
keymap("n", "zx", ":x!<CR>", opts)
keymap("n", "xz", ":q!<CR>", opts)
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

keymap("n", "<leader>k", ":cd %:h<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-c>", ":bdelete<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--vim.api.keymap("n", "<leader>pp", ":Telescope<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<c-p>",
	"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
	{
		noremap = true,
		silent = true,
	}
)

vim.api.nvim_set_keymap(
	"n",
	"<c-g>",
	"<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
	{
		noremap = true,
		silent = true,
	}
)

-- Copy to clipboard
keymap("v", "<leader>y", "+y", opts)

-- it is not allowed to be edited
--local builtin = require("telescope.builtin")
--vim.keymap.set("n", "<leader>p", builtin.find_files, { desc = "Telescope find files" })

--keys = [ { lhs = "<leader>p", rhs = "<CMD>Telescope<CR>" } ]
-- Comment
-- keymap("n", "<leader>/", "<cmd>lua require('comment').toggle()<CR>", opts)
-- keymap("v", "<leader>/", ':lua require("comment.api").gc(vim.fn.visualmode())<cr>', opts)

-- keymap(
--   "n",
--   "<leader>f",
--   ":Format<cr>",
--   opts
-- )

---- Modes
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",

---- Window Naviation
-- C-y up 1 line
-- C-e dw 1 line
-- C-u up 1/2 page
-- C-d dw 1/2 page
-- C-y up 1 line
-- C-e dw 1 line
