local options = {
  ensure_installed = { "lua", 
    -- for python 
    "ninja", "python", "rst", "toml",
    -- for c 
    "c", "cpp"},

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

return options
