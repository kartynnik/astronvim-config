local work_plugins = vim.fs.normalize "~/.work-repo/nvim/plugins.lua"
if vim.uv.fs_stat(work_plugins) then return loadfile(work_plugins)() end
return {}
