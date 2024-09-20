local theme_overrides = {
  ui = {
    accent = "#ffb4a8",
    base = "#1a1110",
  },
  syntax = {
    text = "#f1dfdc",
  },
}

return {
  "AstroNvim/astrotheme",
  lazy = false,
  init = function ()
    vim.cmd [[ colorscheme astrotheme ]]
  end,
  opts = {
    palette = "astrodark",
    background = {
      light = "astrolight",
      dark = "astrodark",
    },

    style = {
      transparent = true,
      inactive = true,
      float = true,
      neotree = true,
      border = true,
      title_invert = true,
      italic_comments = true,
      simple_syntax_colors = true,
    },

    termguicolors = true,
    terminal_color = true,
    plugin_default = "auto",

    plugins = {
      ["bufferline.nvim"] = false,
    },

    palettes = {
      global = {},
      astrolight = theme_overrides,
      astrodark = theme_overrides,
    },

    highlights = {
      global = {},
    },
  },
  config = true,
}
