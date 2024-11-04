return {
  "RRethy/vim-illuminate",
  config = function()
    require("illuminate").configure({
      providers = {
        "lsp",
        "treesitter",
        "regex",
      },
      delay = 100,
      denylist = {
        'dirbuf',
        'dirvish',
        'fugitive'
      },
    })
  end,

  keys = {

  }
}
