return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim" },
  { "shaunsingh/nord.nvim" },
  { "navarasu/onedark.nvim" },
  { "edeneast/nightfox.nvim" },
  { "dracula/vim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "rose-pine/neovim" },
  { "sainnhe/sonokai" },
  { "projekt0n/github-nvim-theme" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_default",
    },
  },
}
