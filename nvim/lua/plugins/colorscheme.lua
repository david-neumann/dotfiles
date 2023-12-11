return {
  name = "catppuccin",
  "catppuccin/nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
    })
    vim.o.termguicolors = true
    vim.cmd.colorscheme("catppuccin")
  end,
}
-- return {
--   -- Rose Pine Theme
--   -- https://github.com/rose-pine/neovim
--   "rose-pine/neovim",
--   name = "rose-pine",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("rose-pine").setup({
--       variant = "moon",
--       dark_variant = "moon",
--       disable_background = true,
--     })
--     vim.cmd.colorscheme("rose-pine")
--   end,
-- }
