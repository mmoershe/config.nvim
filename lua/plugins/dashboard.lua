return {
    { import = "lazyvim.plugins.extras.ui.dashboard-nvim" },
    {
        "nvimdev/dashboard-nvim",
        opts = function(_, opts)
            local logo = [[
                                                                                       Z
                ████ ██████           █████      ██                          Z    
               ███████████             █████                              z        
               █████████ ███████████████████ ███   ███████████ z           
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
