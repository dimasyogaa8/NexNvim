--keymap
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})



--neotree
vim.keymap.set("n", "<leader>m", ":Neotree<CR>", {})


vim.cmd("set ttimeoutlen=0")
vim.cmd("set wildmenu")
vim.cmd("set number")
vim.cmd("set nolist")
vim.cmd("colorscheme melange")
--Tabs size
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")


--keymap
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.keymap.set("n", "<C-q>", ":q<CR>", {})
vim.keymap.set("n", "<C-o>", ":source%<CR>", {})

vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

-- Konfigurasi vim-indent-guides
vim.g.indent_guides_auto_colors = 0
vim.g.indent_guides_guide_size = 1
vim.g.indent_guides_start_level = 2
vim.g.indent_guides_color_change_percent = 0
vim.g.indent_guides_default_mapping = false

vim.cmd('highlight IndentGuidesOdd guifg=#FFFFFF')
vim.cmd('highlight IndentGuidesEven guifg=#FFFFFF')
vim.g.indent_guides_enable_on_vim_startup = 1
