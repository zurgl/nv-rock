-- Folds key
-- zR: Open All Fold
-- zM: Close All Fold
-- za: toggles the fold at the cursor
-- zk: Move to next fold
-- zj: Move to prev fold

-- creates a backup file
vim.opt.backup = false
-- allows neovim to access the system clipboard
vim.opt.clipboard = "unnamedplus"
-- more space in the neovim command line for displaying messages
vim.opt.cmdheight = 2
-- mostly just for cmp
vim.opt.completeopt = { "menuone", "noselect" }
-- so that `` is visible in markdown files
vim.opt.conceallevel = 0
-- the encoding written to a file
vim.opt.fileencoding = "utf-8"
-- highlight all matches on previous search pattern
vim.opt.hlsearch = true
-- ignore case in search patterns
vim.opt.ignorecase = true
-- allow the mouse to be used in neovim
vim.opt.mouse = "a"
-- pop up menu height
vim.opt.pumheight = 10
-- we don't need to see things like -- INSERT -- anymore
vim.opt.showmode = false
-- always show tabs
vim.opt.showtabline = 2
-- smart case
vim.opt.smartcase = true
-- make indenting smarter again
vim.opt.smartindent = true
-- force all horizontal splits to go below current window
vim.opt.splitbelow = true
-- force all vertical splits to go to the right of current window
vim.opt.splitright = true
-- creates a swapfile
vim.opt.swapfile = false
-- set term gui colo--#rs (most terminals support this)
vim.opt.termguicolors = true
-- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.timeoutlen = 1000
-- enable persistent undo
vim.opt.undofile = true
-- faster completion (4000ms default)
vim.opt.updatetime = 600
vim.opt.writebackup = false
-- convert tabs to spaces
vim.opt.expandtab = true
-- the number of spaces inserted for each indentation
vim.opt.shiftwidth = 2
-- insert 2 spaces for a tab
vim.opt.tabstop = 2
-- highlight the current line
vim.opt.cursorline = true
-- set numbered lines
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"
-- is one of my fav
vim.opt.scrolloff = 8
-- scrol stuff
vim.opt.sidescrolloff = 8
vim.opt.shortmess:append("c")
