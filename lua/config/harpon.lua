-- set harpon commands
local harponUi = require('harpoon.ui')
vim.keymap.set('n', '<leader>hm', harponUi.toggle_quick_menu)
vim.keymap.set('n', '<leader>h1', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>')
vim.keymap.set('n', '<leader>h2', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>')
vim.keymap.set('n', '<leader>h3', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>')
vim.keymap.set('n', '<leader>h4', '<cmd>lua require("harpoon.ui").nav_file(4)<cr>')

local harponMark = require('harpoon.mark')
vim.keymap.set('n', '<leader>ha', harponMark.add_file)



