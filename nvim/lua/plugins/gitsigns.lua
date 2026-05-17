return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            signs = {
                add = { text = '+' }, ---@diagnostic disable-line: missing-fields
                change = { text = '~' }, ---@diagnostic disable-line: missing-fields
                delete = { text = '_' }, ---@diagnostic disable-line: missing-fields
                topdelete = { text = '‾' }, ---@diagnostic disable-line: missing-fields
                changedelete = { text = '~' }, ---@diagnostic disable-line: missing-fields
            }
        })
    end
}

