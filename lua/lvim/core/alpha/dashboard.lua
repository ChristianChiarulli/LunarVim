local M = {}

function M.get_sections()
  local header = {
    type = "text",
    val = {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣶⣶⣶⣶⣶⣶⣶⣦⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⠿⠛⠛⠉⠉⠉⠉⠉⠉⠉⠙⠛⠻⢿⣿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠒⠈⠉⠉⠉⠉⠉⣹⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡀⠀⠀⠀⠀⠀⠀⣰⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⠀⠀⠀⠀⢰⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⡀⠀⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢺⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠉⠑⠢⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡇⠀⠀⠀⠈⠑⠢⠄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠢⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠉⠐⠢⠄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡟⠀⠈⠑⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠒⠠⠤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠁⠀⠀⢀⣼⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠒⠂⠤⠤⠀⣀⡀⠀⠀⠀⣼⣿⠇⠀⠀⢀⣸⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⣿⡟⠀⠀⠀⠀⠀⠀⣤⡄⠀⠀⠀⣠⣤⠀⠀⢠⣭⣀⣤⣤⣤⡀⠀⠀⠀⢀⣤⣤⣤⣤⡀⠀⠀⠀⢠⣤⢀⣤⣤⣄⠀⠀⣿⣿⠀⠉⣹⣿⠏⠉⠉⢱⣶⣶⣶⡦⠀⠀⠀⢠⣶⣦⣴⣦⣠⣴⣦⡀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⢠⣿⡇⠀⠀⠀⠀⠀⢠⣿⠇⠀⠀⠀⣿⡇⠀⠀⣿⡿⠉⠀⠈⣿⣧⠀⠀⠰⠿⠋⠀⠀⢹⣿⠀⠀⠀⣿⡿⠋⠀⠹⠿⠀⠀⢻⣿⡇⢠⣿⡟⠀⠀⠀⠈⠉⢹⣿⡇⠀⠀⠀⢸⣿⡏⢹⣿⡏⢹⣿⡇⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⢰⣿⠃⠀⢠⣿⡇⠀⠀⠀⣿⡇⠀⠀⣠⣴⡶⠶⠶⣿⣿⠀⠀⢠⣿⡇⠀⠀⠀⠀⠀⠀⢸⣿⣇⣿⡿⠀⠀⠀⠀⠀⠀⣿⣿⠁⠀⠀⠀⣿⣿⠀⣾⣿⠀⣾⣿⠁⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⣿⣟⠀⠀⠀⠀⠀⠀⢻⣿⡀⠀⢀⣼⣿⠀⠀⢸⣿⠀⠀⠀⢰⣿⠇⠀⢰⣿⣇⠀⠀⣠⣿⡏⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠁⠀⠀⠀⣀⣀⣠⣿⣿⣀⡀⠀⢠⣿⡟⢠⣿⡟⢀⣿⡿⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠛⠛⠛⠛⠛⠛⠁⠀⠈⠛⠿⠟⠋⠛⠃⠀⠀⠛⠛⠀⠀⠀⠘⠛⠀⠀⠀⠙⠿⠿⠛⠙⠛⠃⠀⠀⠚⠛⠀⠀⠀⠀⠀⠀⠀⠘⠿⠿⠃⠀⠀⠀⠀⠿⠿⠿⠿⠿⠿⠿⠀⠸⠿⠇⠸⠿⠇⠸⠿⠇⠀⠀⠀⠀⠀",
      "                                                                                ",
    },
    opts = {
      position = "center",
      hl = "Label",
    },
  }

  local text = require "lvim.interface.text"
  local lvim_version = require("lvim.utils.git").get_lvim_version()

  local footer = {
    type = "text",
    val = text.align_center({ width = 0 }, {
      "",
      "lunarvim.org",
      lvim_version,
    }, 0.5),
    opts = {
      position = "center",
      hl = "Number",
    },
  }

  local buttons = {
    entries = {
      { lvim.leader .. " f", "  Find File", "<CMD>Telescope find_files<CR>" },
      { lvim.leader .. " n", "  New File", "<CMD>ene!<CR>" },
      { lvim.leader .. " P", "  Recent Projects ", "<CMD>Telescope projects<CR>" },
      { lvim.leader .. " s r", "  Recently Used Files", "<CMD>Telescope oldfiles<CR>" },
      { lvim.leader .. " s t", "  Find Word", "<CMD>Telescope live_grep<CR>" },
      {
        lvim.leader .. " L c",
        "  Configuration",
        "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>",
      },
    },
  }

  return {
    header = header,
    buttons = buttons,
    footer = footer,
  }
end

return M
