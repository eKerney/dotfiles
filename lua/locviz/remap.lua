local nnoremap = require("locviz.keymap").nnoremap
local inoremap = require("locviz.keymap").inoremap
local xnoremap = require("locviz.keymap").xnoremap
local vnoremap = require("locviz.keymap").vnoremap

vim.g.mapleader = " "

nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<leader>;", ":")

-- open ToggleTerm
nnoremap("<leader>td", "<cmd>ToggleTerm size=40 dir=~/Desktop direction=horizontal<cr>")

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

-- send current JSON buffer to jq for formatting
nnoremap("<leader>jq", ":%!jq<CR>")
-- vim.keymap.set('n', '<leader>fs', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })

-- toggleterm keybindings
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)

end
-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- treesitter remaps
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
	winblend = 10,
	previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer' })
