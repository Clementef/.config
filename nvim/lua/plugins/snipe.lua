return {
  "leath-dub/snipe.nvim",
  event = "VeryLazy",
  keys = {
    {"<leader>s", function () require("snipe").open_buffer_menu() end, desc = "Open Snipe buffer menu"},
    {"gb", function () require("snipe").open_buffer_menu() end, desc = "Open Snipe buffer menu"}
  },
  opts = {
	  ui = {
		  position = "center",
	  }
  }
}
