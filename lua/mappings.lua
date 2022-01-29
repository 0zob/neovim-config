function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

nmap("<leader>f", ":Telescope find_files<cr>")
nmap("<C-s>", ":w<cr>")
nmap("<C-n>", ":NvimTreeToggle<cr>")
nmap("<leader>n", ":NvimTreeFindFile<cr>")
nmap("<F2>", ":BufferLineCycleNext<cr>")
nmap("<F1>", ":BufferLineCyclePrev<cr>")
imap("<C-h>", "<left>")
imap("<C-l>", "<right>")
imap("<C-j>", "<down>")
imap("<C-k>", "<up>")
nmap("<F3>", ":bdelete<cr>")
nmap("<cr>", "o<esc>")
nmap("<F4>", ":nohlsearch<cr>")
nmap("<A-i>", ':w<cr> <CMD>lua require("FTerm").toggle()<CR>')
tmap("<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')


-- mapping for move.nvim

vim.api.nvim_set_keymap('v', '<A-j>', "<Cmd>lua require('move').MoveBlock(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', "<Cmd>lua require('move').MoveBlock(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-l>', "<Cmd>lua require('move').MoveHBlock(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-h>', "<Cmd>lua require('move').MoveHBlock(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-j>', "<Cmd>lua require('move').MoveLine(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', "<Cmd>lua require('move').MoveLine(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', "<Cmd>lua require('move').MoveHChar(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-h>', "<Cmd>lua require('move').MoveHChar(-1)<CR>", { noremap = true, silent = true })
