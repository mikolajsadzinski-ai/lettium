local Settings = {}

Settings.Values = {
    MobileSupport = true,
    Notifications = true,
    ShowWatermark = true
}

function Settings.Get(name)
    return Settings.Values[name]
end

function Settings.Set(name, value)
    if Settings.Values[name] == nil then
        warn("Unknown setting: " .. tostring(name))
        return false
    end

    Settings.Values[name] = value
    return true
end

function Settings.Reset()
    Settings.Values.MobileSupport = true
    Settings.Values.Notifications = true
    Settings.Values.ShowWatermark = true
end

return Settings
