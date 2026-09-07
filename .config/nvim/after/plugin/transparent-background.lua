local transparent_groups = {
  "Normal",
  "NormalNC",
  "SignColumn",
  "EndOfBuffer",
  "MsgArea",
}

local function apply_transparent_background()
  for _, group in ipairs(transparent_groups) do
    local highlight = vim.api.nvim_get_hl(0, { name = group, link = false })
    highlight.bg = nil
    vim.api.nvim_set_hl(0, group, highlight)
  end
end

apply_transparent_background()

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("transparent_background", { clear = true }),
  callback = apply_transparent_background,
})
