# 💤 LazyVim

My personal Neovim config.  
It's based on [LazyVim](https://github.com/LazyVim/LazyVim), although I have made some customizations that deviate from the original [Starter-Repository](https://github.com/LazyVim/starter).

## Installation

```sh
git clone https://github.com/mmoershe/config.nvim ~/.config/nvim
```

## Customizations / Deviations

- added lua/plugins/colorscheme.lua with many colorschemes (With **Dracula** as the default)
- changed some indentation options
- deactivated the mouse
- turned on wrapping by default
- added "_leader_ + sf" in normal mode to search for files from the root directory

## Extras

LazyVim has these **Extras**, which are essentially plugins that can easily be turned on and off.

### As far as I understand

Extras can be turned on and off using `:LazyExtras`.
If Extras are turned on like this, they are stored in the `lazyvim.json` file, but they _cannot_ be configured.

---

:warning: I have not been able to reproduce the following! :warning:

Another way to use Extras is to put them in a .lua file in the nvim config, so the Extra can additionally be configured.
If this is done, they will _not_ appear in the `lazyvim.json`.

Here's an example taken from [this repository](https://github.com/Matt-FTW/dotfiles/blob/602e727a14a0fe5816b02e9f5bfa94f1a3158550/.config/nvim/lua/plugins/extras/ui/dashboard-extended.lua):

```lua
return {
  { import = "lazyvim.plugins.extras.ui.dashboard" },
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo = [[
                                             
      ████ ██████           █████      ██
     ███████████             █████ 
     █████████ ███████████████████ ███   ███████████
    █████████  ███    █████████████ █████ ██████████████
   █████████ ██████████ █████████ █████ █████ ████ █████
 ███████████ ███    ███ █████████ █████ █████ ████ █████
██████  █████████████████████ ████ █████ █████ ████ ██████
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
      return opts
    end,
  },
}
```
