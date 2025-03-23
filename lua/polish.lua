vim.o.wildmode = "noselect:full"
vim.o.autochdir = true
vim.o.virtualedit = "all"

local work_polish = vim.fs.normalize "~/.work-repo/nvim/polish.lua"
if vim.uv.fs_stat(work_polish) then loadfile(work_polish)() end
