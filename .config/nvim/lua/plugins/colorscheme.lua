local default = "kanagawa-dragon" -- <<–– change me whenever you want >>

local function is_default(name)
  return default == name
end

return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = not is_default("gruvbox"),
    priority = is_default("gruvbox") and 1000 or nil,
    opts = is_default("gruvbox") and {
      contrast = "soft",
      transparent_mode = false,
      dim_inactive = true,
    } or nil,
  },
  {
    "sainnhe/gruvbox-material",
    lazy = not is_default("gruvbox-material"),
    config = function()
      if not is_default("gruvbox-material") then
        return
      end
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_background = "soft"
      vim.g.gruvbox_material_ui_contrast = "low"
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  {
    "sainnhe/everforest",
    lazy = not is_default("everforest"),
    config = function()
      if not is_default("everforest") then
        return
      end
      vim.g.everforest_background = "dark"
      vim.g.everforest_better_performance = 1
      vim.cmd.colorscheme("everforest")
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = not is_default("rose-pine"),
    priority = is_default("rose-pine") and 1000 or nil,
    opts = is_default("rose-pine") and {
      variant = "main",
      dim_inactive_windows = true,
    } or nil,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = not is_default("kanagawa"),
    priority = is_default("kanagawa") and 1000 or nil,
    opts = is_default("kanagawa")
        and {
          theme = "wave", -- "wave" | "dragon" | "lotus"
          dimInactive = true,
          terminalColors = true,
        }
      or nil,
  },

  {
    "ribru17/bamboo.nvim",
    lazy = not is_default("bamboo"),
    priority = is_default("bamboo") and 1000 or nil,
    opts = is_default("bamboo") and {
      style = "multiplex",
    } or nil,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = default,
    },
  },
}
