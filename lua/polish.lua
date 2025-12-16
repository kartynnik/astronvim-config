vim.o.wildmode = "noselect:full"
vim.o.autochdir = true
vim.o.virtualedit = "all"
vim.o.cmdheight = 1
vim.o.matchpairs = "(:),{:},[:],<:>"
vim.o.conceallevel = 2

local work_polish = vim.fs.normalize "~/.work-repo/nvim/polish.lua"
if vim.uv.fs_stat(work_polish) then loadfile(work_polish)() end

-- `:Peek` (`<leader>z`) to see the non-alternate screen.
-- TODO: Extract into a plugin.
vim.api.nvim_create_user_command('Peek', function()
  local leave_alt_screen = "\27[?1049l"
  local hide_cursor = "\27[?25l"
  local enter_alt_screen = "\27[?1049h"
  local show_cursor = "\27[?25h"

  local old_ei = vim.o.eventignore
  vim.o.eventignore = "all"

  vim.cmd('redraw')

  local handle = io.stdout
  handle:write(leave_alt_screen .. hide_cursor)
  handle:flush()

  print("Press any key to return to Neovim...\n")
  pcall(vim.fn.getchar)  -- Protect against Ctrl-C.

  handle:write(enter_alt_screen .. show_cursor)
  handle:flush()

  vim.o.eventignore = old_ei

  vim.cmd('mode')
end, {})

vim.keymap.set("n", "<leader>z", "<cmd>Peek<cr>", { silent = true })
---------------------------------------------------------
