-- after/plugin/diagnostic-grey.lua
--
-- Run every time *any* colourscheme is applied.
-- If the active theme is Kanagawa we recolour every Diagnostic group to grey.

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    if vim.g.colors_name ~= "kanagawa" then
      return -- leave other themes alone
    end

    -- Kanagawa's neutral grey (fujiGray) – tweak if you like
    local grey = "#7a8191"

    -- helper
    local hl = vim.api.nvim_set_hl

    -- all 16 diagnostic highlight groups
    local groups = {
      "Error",
      "Warn",
      "Info",
      "Hint",
      "VirtualTextError",
      "VirtualTextWarn",
      "VirtualTextInfo",
      "VirtualTextHint",
      "UnderlineError",
      "UnderlineWarn",
      "UnderlineInfo",
      "UnderlineHint",
      "SignError",
      "SignWarn",
      "SignInfo",
      "SignHint",
    }

    for _, name in ipairs(groups) do
      if name:find("Underline", 1, true) then
        hl(0, "Diagnostic" .. name, { sp = grey, underline = true })
      else
        hl(0, "Diagnostic" .. name, { fg = grey, bg = "NONE" })
      end
    end
  end,
})
