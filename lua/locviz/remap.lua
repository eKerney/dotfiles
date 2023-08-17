local nnoremap = require("locviz.keymap").nnoremap
local inoremap = require("locviz.keymap").inoremap
local xnoremap = require("locviz.keymap").xnoremap
local vnoremap = require("locviz.keymap").vnoremap

vim.g.mapleader = " "

nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<leader>;", ":")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

nnoremap("<leader>1", "0")
nnoremap("<leader>0", "$")
nnoremap("<leader>5", "gM")
nnoremap("<leader>6", "gM")
-- nnoremap("<silent> <Leader>c :clear<bar>silent exec "!cp '%:p' '%:p:h/%:t:r-copy.%:e'"<bar>redraw<bar>echo "Copied
-- nnoremap("<silent> <Leader>c", ":silent exec "!cp '%:p' '%:p:h/%:t:r-copy.%:e'"<cr>")
-- Normal --
-- Better window navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

inoremap("jk", "<Esc>")
inoremap("kj", "<Esc>")
inoremap("lk", "<Esc>")
inoremap("kl", "<Esc>")

-- greatest remap ever @thePrimeagen
vim.keymap.set("x", "<leader>p", [["_dP]])

-- vim.keymap.set('n', '<leader>fs', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })
