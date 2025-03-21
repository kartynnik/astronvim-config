vim.o.wildmode = "longest,full"
vim.o.autochdir = true

local work_polish = vim.fs.normalize "~/.work-repo/nvim/polish.lua"
if vim.uv.fs_stat(work_polish) then loadfile(work_polish)() end
