return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },  -- Optional for icons
  config = function()
    local function search_result()
      if vim.v.hlsearch == 0 then return '' end
      local ok, search = pcall(vim.fn.searchcount, { maxcount = 0 })
      if not ok or search.total == 0 then return '' end
      if search.incomplete > 0 then return '[?/?]' end
      return string.format('[%d/%d]', search.current, search.total)
    end

    require('lualine').setup {
      options = {
        theme = 'palenight',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = { search_result, 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    }
  end,
}

