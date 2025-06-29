return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}

-- return {
--   "scottmckendry/cyberdream.nvim",
--   name = "cyberdream",
--   priority = 1000, -- Ensure it loads early
--   lazy = false,    -- Load during startup
--   config = function()
--     require("cyberdream").setup({
--       -- 🔧 Your Cyberdream settings here
--       transparent = true,
--       italic_comments = true,
--       hide_fillchars = true,
--       borderless_telescope = false,
--     })
--
--     -- 🎨 Apply the colorscheme after setup
--     vim.cmd.colorscheme("cyberdream")
--   end
-- }
--
-- return {
--   'shaunsingh/nord.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Example config in lua
--     vim.g.nord_contrast = true
--     vim.g.nord_borders = false
--     vim.g.nord_disable_background = true
--     vim.g.nord_italic = false
--     vim.g.nord_uniform_diff_background = true
--     vim.g.nord_bold = false
--
--     -- Load the colorscheme
--     require('nord').set()
--
--     -- Toggle background transparency
--     local bg_transparent = true
--
--     local toggle_transparency = function()
--       bg_transparent = not bg_transparent
--       vim.g.nord_disable_background = bg_transparent
--       vim.cmd [[colorscheme nord]]
--     end
--
--     vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
--   end,
-- }
