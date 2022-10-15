local cmd = vim.cmd
local fn = vim.fn
local gl = require("galaxyline")
local section = gl.section
gl.short_line_list = {"LuaTree", "packager", "Floaterm", "coc-explorer"}

local one_dark_colors = {
  bg = "#2e3440",
  fg = "#81a1c1",
  line_bg = "#2e3440",
  fg_green = "#6d96a5",
  yellow = "#fabd2f",
  cyan = "#008080",
  darkblue = "#081633",
  green = "#608B4E",
  orange = "#FF8800",
  purple = "#5d4d7a",
  magenta = "#d16d9e",
  grey = "#c0c0c0",
  blue = "#569CD6",
  red = "#D16969"
}

local nord_colors = {
  bg = "NONE",
  -- bg = "#2E3440",
  fg = "#81A1C1",
  line_bg = "NONE",
  lbg = "NONE",
  -- lbg = "#3B4252",
  fg_green = "#8FBCBB",
  yellow = "#cfa832",
  cyan = "#A3BE8C",
  darkblue = "#81A1C1",
  green = "#94b380",
  orange = "#D08770",
  purple = "#B48EAD",
  magenta = "#BF616A",
  gray = "#616E88",
  blue = "#8FBCBB",
  red = "#db6c6c"
}

local buffer_not_empty = function()
  if fn.empty(fn.expand("%:t")) ~= 1 then
    return true
  end
  return false
end

section.left[1] = {
  FirstElement = {
    provider = function()
      return "  "
    end,
    highlight = {nord_colors.blue, nord_colors.line_bg}
  }
}
section.left[2] = {
	ViMode = {
    provider = function()
      -- auto change color according the vim mode
     local mode_color = {n = nord_colors.blue, i = nord_colors.green,v=nord_colors.yellow,
                          [''] = nord_colors.yellow,
                          [''] = nord_colors.blue,V=nord_colors.yellow,
                          c = nord_colors.magenta,no = nord_colors.red,s = nord_colors.orange,
                          S=nord_colors.orange,[''] = nord_colors.orange,
                          ic = nord_colors.yellow,R = nord_colors.red,Rv = nord_colors.violet,
                          cv = nord_colors.red,ce=nord_colors.red, r = nord_colors.cyan,
                          rm = nord_colors.cyan, ['r?'] = nord_colors.cyan,
                          ['!']  = nord_colors.red,t = nord_colors.red}

      local vim_mode = vim.fn.mode()
      vim.api.nvim_command('hi GalaxyViMode guibg='..mode_color[vim_mode])
      vim.api.nvim_command('hi GalaxyViMode guifg='..'#464749')
      local aliases = {
                [110] = 'NORMAL',
                [105] = 'INSERT',
                [99] = 'COMMAND',
                [116] = 'TERMINAL',
                [118] = 'VISUAL',
                [22] = 'V-BLOCK',
                [86] = 'V-LINE',
                [82] = 'REPLACE',
                [115] = 'SELECT',
                [83] = 'S-LINE'
            }

alias = aliases[vim.fn.mode():byte()]
            if alias ~= nil then
                return '  ' .. alias .. ' '
            else
                return '  ' .. vim.fn.mode():byte() .. ' '
            end
    end,
    highlight = {nord_colors.line_bg, nord_colors.line_bg},
  },
}
section.left[3] = {
  FirstElement = {
    provider = function()
      return "  "
    end,
    highlight = {nord_colors.blue, nord_colors.line_bg}
  }
}
section.left[4] = {
  FileIcon = {
    provider = "FileIcon",
    condition = buffer_not_empty,
    highlight = {require("galaxyline.provider_fileinfo").get_file_icon_color, nord_colors.line_bg}
  }
}
section.left[5] = {
  FileName = {
    provider = "FileName",
    -- provider = function()
    --   return fn.expand("%:F")
    -- end,
    condition = buffer_not_empty,
    separator = " ",
    separator_highlight = {nord_colors.yellow, nord_colors.bg},
    highlight = {nord_colors.yellow, nord_colors.line_bg, "bold"}
  }
}

section.right[1] = {
  GitIcon = {
    provider = function()
      return " "
    end,
    condition = require("galaxyline.provider_vcs").check_git_workspace,
    highlight = {nord_colors.orange, nord_colors.line_bg}
  }
}
section.right[2] = {
  GitBranch = {
    provider = "GitBranch",
    condition = require("galaxyline.provider_vcs").check_git_workspace,
    separator = "",
    separator_highlight = {nord_colors.purple, nord_colors.bg},
    highlight = {nord_colors.orange, nord_colors.line_bg, "bold"}
  }
}

local checkwidth = function()
  local squeeze_width = fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

section.right[3] = {
  DiffAdd = {
    provider = "DiffAdd",
    condition = checkwidth,
    icon = " ",
    highlight = {nord_colors.green, nord_colors.line_bg}
  }
}
section.right[4] = {
  DiffModified = {
    provider = "DiffModified",
    condition = checkwidth,
    icon = "柳",
    highlight = {nord_colors.yellow, nord_colors.line_bg}
  }
}
section.right[5] = {
  DiffRemove = {
    provider = "DiffRemove",
    condition = checkwidth,
    icon = " ",
    highlight = {nord_colors.red, nord_colors.line_bg}
  }
}


section.right[8] = {
  DiagnosticError = {
    provider = "DiagnosticError",
    separator = " ",
    icon = " ",
    highlight = {nord_colors.red, nord_colors.line_bg},
    separator_highlight = {nord_colors.bg, nord_colors.bg}
  }
}
section.right[9] = {
  DiagnosticWarn = {
    provider = "DiagnosticWarn",
    -- separator = " ",
    icon = " ",
    highlight = {nord_colors.yellow, nord_colors.line_bg},
    separator_highlight = {nord_colors.bg, nord_colors.bg}
  }
}

section.right[10] = {
  DiagnosticInfo = {
    -- separator = " ",
    provider = "DiagnosticInfo",
    icon = " ",
    highlight = {nord_colors.green, nord_colors.line_bg},
    separator_highlight = {nord_colors.bg, nord_colors.bg}
  }
}

section.right[11] = {
  DiagnosticHint = {
    provider = "DiagnosticHint",
    -- separator = " ",
    icon = " ",
    highlight = {nord_colors.blue, nord_colors.line_bg},
    separator_highlight = {nord_colors.bg, nord_colors.bg}
  }
}
section.right[12] = {
  FirstElement = {
    provider = function()
      return "  "
    end,
    highlight = {nord_colors.blue, nord_colors.line_bg}
  }
}

section.short_line_left[1] = {
  BufferType = {
    provider = "FileIcon",
    separator = " ",
    separator_highlight = {"NONE", nord_colors.lbg},
    highlight = {nord_colors.blue, nord_colors.lbg, "bold"}
  }
}

section.short_line_left[2] = {
  SFileName = {
    provider = function()
      local fileinfo = require("galaxyline.provider_fileinfo")
      local fname = fileinfo.get_current_file_name()
      for _, v in ipairs(gl.short_line_list) do
        if v == vim.bo.filetype then
          return ""
        end
      end
      return fname
    end,
    condition = buffer_not_empty,
    highlight = {nord_colors.white, nord_colors.lbg, "bold"}
  }
}

section.short_line_right[1] = {
  BufferIcon = {
    provider = "BufferIcon",
    highlight = {nord_colors.fg, nord_colors.lbg}
  }
}
