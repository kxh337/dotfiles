local builtin = require('telescope.builtin')
-- Basic searches
vim.keymap.set('n', '<leader>P', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>p', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>G', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>g', builtin.grep_string, { desc = 'Telescope live grep cword' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Telescope help tags' })

-- LSP searches
vim.keymap.set('n', '<leader>gr', builtin.lsp_references, 
               { 
								 desc = 'Telescope LSP refrerences',
								 include_declaration = true,
								 include_current_line = true,
							 }
)
vim.keymap.set('n', '<leader>gr', builtin.diagnostics, { desc = 'Telescope iagnostic lists'})
