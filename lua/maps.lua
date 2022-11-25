vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('n','<C-a>','gg<S-v>G')

keymap.set('n','ss',':vsplit<Return><C-w>w',{silent = true})

keymap.set('n','f','<C-w>w')
keymap.set('n','sh','<C-w>h')
keymap.set('n','sj','<C-w>j')
keymap.set('n','sk','<C-w>k')
keymap.set('n','sl','<C-w>l')

keymap.set('n','s<left>','<C-w><')
keymap.set('n','s<right>','<C-w>>')
keymap.set('n','s<up>','<C-w>+')
keymap.set('n','s<down>','<C-w>-')

keymap.set('n','H','^')
keymap.set('n','L','$')
