vim.o.syntax = 'on'
vim.o.termguicolors = true
vim.o.ruler = true
vim.o.breakindent = true		          -- Enable break indent
vim.o.hidden = true			              -- Do not save when switching buffers
vim.o.mouse = 'a'			                -- Enable mouse mode
vim.o.ignorecase = true			          -- Case insensitive searching UNLESS /C or capital in search
vim.o.smartcase = true
vim.o.inccommand = 'nosplit'		      -- Incremental live completion
vim.o.hlsearch = false			          -- Set highlight on search

vim.wo.number = true			            -- Make line numbers default
vim.wo.relativenumber = true		      -- Relative line numbers
vim.wo.signcolumn = 'number'
vim.wo.wrap = true			              -- Enable line wrap

vim.bo.autoindent = true
vim.bo.swapfile = false

vim.o.updatetime = 250			          -- Decrease update time
vim.wo.signcolumn = 'yes'

vim.opt.expandtab = true		          -- Use spaces instead of tabs
vim.opt.tabstop = 2			              -- Number of spaces tabs count for
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftwidth = 2			          -- Size of an indent

vim.o.background = 'dark'		          -- or "light" for light mode
vim.g.gruvbox_contrast_dark = 'hard'  -- Changes dark mode contrast
vim.cmd([[colorscheme gruvbox]])	    -- Set colorscheme

vim.opt.clipboard:append('unnamedplus')
