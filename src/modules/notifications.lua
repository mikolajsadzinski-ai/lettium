local Notifications = {}

local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

Notifications.Enabled = true

function Notifications.Show(title, message, duration)
    if not Notifications.Enabled then
        return false
    end

    local success, err = pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = tostring(title or "lettium"),
            Text = tostring(message or ""),
            Duration = tonumber(duration) or 3
        })
    end)

    if not success then
        warn("[lettium] Notification failed: " .. tostring(err))
        return false
    end

    return true
end

function Notifications.SetEnabled(enabled)
    Notifications.Enabled = enabled == true
end

function Notifications.IsEnabled()
    return Notifications.Enabled
end

return Notifications
