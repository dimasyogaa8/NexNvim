require("Lazy")
vim.g.mapleader = " "
require("vim")
vim.opt.termguicolors = true
require("bufferline").setup{}
vim.api.nvim_exec([[
  autocmd BufWritePre * :Neoformat
]], false)
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
require('dressing').setup({
    enabled = true,
    padding = 2,
    line_wrap_cursor_movement = true,
})

require("mason").setup()
require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
   require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
require('nvim-nonicons').setup {}
local icons = require("nvim-nonicons")
local nonicons_extention = require("nvim-nonicons.extentions.lualine")

require("lualine").setup({
  sections = {
    lualine_a = { nonicons_extention.mode },
    lualine_z = {
      {
        "branch",
        icon = icons.get("git-branch"),
      },
    },
  }
})
local icons = require("nvim-nonicons")
require("telescope").setup({
  defaults = {
    prompt_prefix = "  " .. icons.get("telescope") .. "  ",
    selection_caret = " ❯ ",
    entry_prefix = "   ",
  },
})
local icons = require "nvim-nonicons"
icons.get("file")

local nonicons_extention = require("nvim-nonicons.extentions.nvim-notify")

require("notify").setup({
  icons = nonicons_extention.icons,
})
local icons = require("nvim-nonicons")

require("telescope").setup({
  defaults = {
    prompt_prefix = "  " .. icons.get("telescope") .. "  ",
    selection_caret = " ❯ ",
    entry_prefix = "   ",
  },
})
