return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", "Mofiqul/dracula.nvim", "necrogoru/shades-of-purple.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "shades-of-purple",
    },
  },
}
