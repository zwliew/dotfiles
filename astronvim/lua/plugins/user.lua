-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      fallback = "light",
    },
    init = function() require("auto-dark-mode").init() end,
  },
  {
    "stevearc/conform.nvim",
    opts = {},
  },
  {
    "whonore/Coqtail",
  },
  {
    "tomtomjhj/coq-lsp.nvim",
    opts = {
      mappings = true,
    },
  },
}
