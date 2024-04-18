return {
    'lukas-reineke/virt-column.nvim',
    enabled = false,
    -- opts = {},
    event = "VeryLazy",
    config = function()
        require("virt-column").setup()
    end
}
