return {
  {
   'Xuyuanp/nerdtree-git-plugin'
  },
  {
    'scrooloose/nerdtree',
    config = function()
      vim.g.NERDTreeShowLineNumbers=1
      vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>')
    end
  },
}
