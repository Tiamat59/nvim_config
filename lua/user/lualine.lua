local status_ok, lualine = pcall(require, "lualine") if not status_ok then
	return
end

lualine.setup {
  options = {
    theme =  "material",
    icons_enabled = true,
    component_separators = { left = '|', right = '|' },
    -- section_separators = { left = '', right = '' },
    section_separators = { left = '', right = ''},
		disabled_filetypes = { "dashboard", "NvimTree", "Outline" },
  }
}
