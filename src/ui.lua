local Library = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/sametexe001/sametlibs/main/idkThisOne/Library.lua"
))()

local Window = Library:Window({
    Name = "lettium",
    Size = UDim2.new(0, 550, 0, 400)
})

local Main = Window:Page({
    Name = "Main",
    Columns = 2
})

local Settings = Main:Section({
    Name = "Settings",
    Side = 1
})

Settings:Toggle({
    Name = "Example Toggle",
    Default = false,
    Flag = "ExampleToggle",
    Callback = function(value)
        print("Example Toggle:", value)
    end
})

Settings:Slider({
    Name = "Example Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Decimals = 0,
    Flag = "ExampleSlider",
    Callback = function(value)
        print("Slider:", value)
    end
})

Settings:Button({
    Name = "Test Notification",
    Callback = function()
        Library:Notification("lettium is working!", 3)
    end
})
