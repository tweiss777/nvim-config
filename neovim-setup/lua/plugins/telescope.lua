return{

    {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")
            -- keymap to find files
            vim.keymap.set('n','<C-p>', builtin.find_files, {})
            -- keymap to use grep to find text in files
            vim.keymap.set('n', '<leader>fg', builtin.live_grep,{})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {
                    }
                }
              }
            })
            require("telescope").load_extension("ui-select")
            end
    }
}
