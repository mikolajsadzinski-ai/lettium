local Config = {}

Config.ProjectName = "lettium"
Config.Version = "1.0.0"

Config.UI = {
    Title = "lettium",

    -- Mobile-friendly settings
    MobileSupport = true,
    Responsive = true,
    DefaultWidth = 340,
    DefaultHeight = 400,
    MinWidth = 280,
    MinHeight = 300,

    -- Touch controls
    TouchEnabled = true,
    ShowMobileToggle = true
}

return Config
