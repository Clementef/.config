return {
  'ggandor/leap.nvim', 
  requires = { 'tpope/vim-repeat' },
  lazy = false,
  config = function()
    require('leap').create_default_mappings(true)
  end
}
