return {
  {
    'tpope/vim-fugitive'
  },
  {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "Tsuzat/NeoSolarized.nvim",
      lazy = false, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
        vim.cmd [[ colorscheme NeoSolarized ]]
      end
  },
  {
    "neovim/nvim-lspconfig",
  }
}
