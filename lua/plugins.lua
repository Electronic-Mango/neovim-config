vim.pack.add({
    {
        src = "https://github.com/catppuccin/nvim",
        name = "catppuccin",
    },
    {
        src = "https://github.com/ibhagwan/fzf-lua",
        name = "fzf-lua",
    },
    {
        src = "https://github.com/tpope/vim-fugitive",
        name = "fugitive",
    },
})

require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
})
vim.cmd.colorscheme("catppuccin-nvim")

local fzflua = require("fzf-lua")
fzflua.setup({})
vim.keymap.set("n", "<leader>pf", fzflua.files, {})
vim.keymap.set("n", "<leader>ps", fzflua.live_grep, {})
vim.keymap.set("n", "<C-p>", fzflua.git_files, {})
vim.keymap.set("n", "<leader>u", fzflua.undotree, {})
