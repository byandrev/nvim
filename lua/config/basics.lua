vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.syntax = "enable"
vim.opt.matchpairs = { "(:)", "{:}", "[:]", "<:>" }

vim.opt.wrap = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.cmdheight = 0
vim.opt.colorcolumn = "80"
vim.opt.clipboard = "unnamedplus"
vim.opt.errorbells = false
vim.o.splitbelow = true -- automagically h split going down
vim.o.splitright = true -- automagically v split going right
vim.opt.backspace = { "eol", "start", "indent" }

-- search
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.smartcase = true -- smart case
vim.opt.wildignore = vim.opt.wildignore + { "*/node_modules/*", "*/.git/*", "*/vendor/*" }
vim.opt.wildmenu = true -- make tab completion for files/buffers act like bash

-- Backups
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false
