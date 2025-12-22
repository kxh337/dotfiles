require("config.lazy")

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>c', '<cmd>noh<cr>')
vim.keymap.set('n', '<leader>f', 'za')

vim.o.termguicolors = true
vim.opt.background = 'dark'
vim.opt.encoding = "UTF-8"

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.breakindent = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabbing
vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.expandtab = true

vim.opt.colorcolumn = '121'
vim.opt.textwidth = 120


-- Smart spacing
vim.opt.wrap = true
vim.opt.ai = true
vim.opt.si = true

-- Cmd line
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2

-- Reload file when there are changes
vim.opt.autoread = true

-- Wild menu
vim.opt.wildmenu = true
vim.opt.wildignore = '*.o, *.pyc'
vim.opt.lazyredraw = true
vim.opt.vb = nil

-- Search
vim.opt.showmatch = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.magic = true
vim.opt.mat = 2

-- Fold
vim.opt.foldenable = true
vim.opt.foldlevelstart = 1
vim.opt.foldnestmax = 10

-- Ruler
vim.opt.ruler = true
vim.opt.so = 999

-- Sessions
local session_dir = '~/.config/nvim/sessions'
vim.keymap.set('n', '<leader>ss', ':mks! ' .. session_dir .. '/*.vim<C-D><BS><BS><BS><BS><BS>')
vim.keymap.set('n', '<leader>sr', ':so ' .. session_dir .. '/*.vim<C-D><BS><BS><BS><BS><BS>')

-- laptop remap 
vim.keymap.set('i', 'JK', '<esc>')
vim.keymap.set('i', 'jk', '<esc>')

-- Spelling
vim.opt.spell = true
vim.opt.spelllang = 'en_us'
vim.opt.spellfile = '~/.vim/spell/en.utf-8.add'

-- Spelling highlight
vim.api.nvim_set_hl(0, 'SpellBad', {underline=true, undercurl=true})
vim.api.nvim_set_hl(0, 'SpellRare', {underline=true, undercurl=true})
vim.api.nvim_set_hl(0, 'SpellCap', {underline=true, undercurl=true})
vim.api.nvim_set_hl(0, 'SpellLocal', {underline=true, undercurl=true})

-- Window management
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')

-- Window shortcuts
vim.keymap.set('n', '<leader>c', '<cmd>noh<cr>')

vim.opt.foldmethod = 'expr'

vim.api.nvim_set_hl(0, 'ColorColumn', {bg='RED'})

-- Enable LSPs
vim.lsp.enable('lua_ls')
vim.lsp.enable('gopls')
