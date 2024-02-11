return {
    'goolord/alpha-nvim',
    config = function ()
        local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {

    [[          ▀████▀▄▄              ▄█ ]],
    [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
    [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
    [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
    [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
    [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
    [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
    [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
    [[   █   █  █      ▄▄           ▄▀   ]],
    [[               NexVim              ]],

}

 dashboard.section.buttons.val = {
   dashboard.button("f", "  Cari berkas", ":Telescope find_files <CR>"),
   dashboard.button("e", "  Berkas baru", ":ene <BAR> startinsert <CR>"),
   dashboard.button("r", "  Berkas terakhir dilihat", ":Telescope oldfiles <CR>"),
   dashboard.button("t", "  cari tulisan", ":Telescope live_grep <CR>"),
   dashboard.button("c", "  Konfigurasi", ":e ~/.config/nvim/init.lua<CR>"),
   dashboard.button("q", "  Keluar Neovim", ":qa<CR>"),
}

local function footer()
 return "author by:dimasyoga | github:dimasyogaa8"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
    end
}
