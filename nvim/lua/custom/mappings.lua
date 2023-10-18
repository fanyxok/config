---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<S-Tab>"] = {"<Cmd> BufferPrevious <CR>", "move to previous tab", opts = { noremap = true, silent = true}},
    ["<Tab>"] = {"<Cmd> BufferNext <CR>", "movenext tab", opts = { noremap = true, silent = true}},
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

-- this not work
M.barbar = {
  plugin = true,
  n = {
    ["<S-h>"] = {"<Cmd> BufferPrevious <CR>", "move to previous tab", opts = { noremap = true, silent = true}},
    ["<S-l>"] = {"<Cmd> BufferNext <CR>", "movenext tab", opts = { noremap = true, silent = true}},
    -- ["<C-,>"] = {"<Cmd>BufferPrevious<CR>", "move to previous tab", opts = { noremap = true, silent = true}},

  }
}
return M
