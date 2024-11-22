-- Add custom plugins and configurations here
local null_ls = require 'null-ls'
null_ls.setup {
  sources = {
    null_ls.builtins.formatting.black, -- Use Black for formatting
    null_ls.builtins.formatting.autopep8, -- Use autopep8 for formatting
  },
}

-- Auto-format on save
vim.cmd [[
  autocmd BufWritePre *.py execute ':Black'
]]
-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {}
