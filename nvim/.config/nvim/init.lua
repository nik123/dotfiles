vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Case insensitive searching UNLESS \C or the search has capitals.
-- /foo         " case-insensitive (smartcase kicks in since "foo" is all lowercase)
-- /foo\C       " case-SENSITIVE, forced, even though "foo" is lowercase
-- /Foo         " case-sensitive automatically (smartcase sees the capital F)
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- %f - relative filename
-- %h%m%r - help/modified/readonly flags
-- %= - right-align everything after that
-- %l:%c - line:column
-- %P - percentage through file
-- vim.o.statusline = "%f %h%m%r%=%y %l:%c %P"

local ok = pcall(vim.cmd.colorscheme, "sorbet")
if not ok then
  vim.notify("Colorscheme 'sorbet' not found, falling back to default", vim.log.levels.INFO)
  vim.cmd.colorscheme("desert")  -- or "habamax", "desert", etc — any built-in
end

