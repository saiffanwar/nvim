require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

---@type vim.Option
local rtp = vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	require("plugins.colortheme"),
	require("plugins.neo-tree"),
	require("plugins.treesitter"),
	require("plugins.lsp"),
	require("plugins.telescope"),
	require("plugins.misc"),
	require("plugins.harpoon"),
	require("plugins.lualine"),
	require("plugins.autocompletion"),
	require("plugins.autoformatting"),
	require("plugins.alpha"),
	require("plugins.indent-line"),
	require("plugins.which-key"),
})
