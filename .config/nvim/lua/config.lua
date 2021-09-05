vim.o.syntax = 'on'
vim.o.cursorline = true               -- Realzar la línea actual
vim.o.ruler = true
vim.o.breakindent = true              -- Enable break indent
vim.o.hidden = true                   -- Do not save when switching buffers
vim.o.mouse = 'a'                     -- Enable mouse mode
vim.o.ignorecase = true               -- Case insensitive searching UNLESS /C or capital in search
vim.o.smartcase = true
vim.o.inccommand = 'nosplit'          -- Incremental live completion
vim.o.hlsearch = false                -- Set highlight on search

vim.wo.number = true                  -- Activar el número de línea
vim.wo.relativenumber = true
vim.wo.signcolumn = 'number'
vim.wo.wrap = true                    -- Habilitar el salto de línea

vim.bo.autoindent = true
vim.bo.swapfile = false

vim.o.updatetime = 250                -- Decrease update time
vim.wo.signcolumn = 'yes'

vim.o.termguicolors = true
vim.opt.expandtab = true              -- Usar espacio en lugar de tabulador
vim.opt.tabstop = 2                   -- Cantidad de espacios por tabulador
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftwidth = 2                -- Size of an indent
vim.opt.clipboard:append('unnamedplus')

vim.o.background = 'dark'             -- o "light" para el modo claro
vim.g.onedark_style = 'darker'        -- Seleccionar la variante de One Dark más oscura
require('onedark').setup()            -- Seleccionar One Dark como tema

