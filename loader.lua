--[[
  ____ _   _ _   _ _   _ _  __  _   _ _   _ ____  
 / ___| | | | | | | \ | | |/ / | | | | | | | __ ) 
| |   | |_| | | | |  \| | ' /  | |_| | | | |  _ \ 
| |___|  _  | |_| | |\  | . \  |  _  | |_| | |_) |
 \____|_| |_|\___/|_| \_|_|\_\ |_| |_|\___/|____/ 
]]
local p = game:GetService("Players")
local uis = game:GetService("UserInputService")
local lp = p.LocalPlayer
local plrgui = lp:WaitForChild("PlayerGui")

local sgui = Instance.new("ScreenGui")
sgui.Name = "ScreenGui"
sgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
sgui.ResetOnSpawn = false
sgui.Parent = plrgui

local MainFrame = Instance.new("Frame")
MainFrame.Name = "KeySystem"
MainFrame.Size = UDim2.new(0.375, 0, 0.42135, 0)
MainFrame.Position = UDim2.new(0.3075, 0, 0.23034, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = sgui

local MainFrameCorner = Instance.new("UICorner")
MainFrameCorner.CornerRadius = UDim.new(0, 20)
MainFrameCorner.Parent = MainFrame

local Key = Instance.new("TextBox")
Key.Name = "Key"
Key.Size = UDim2.new(0.92667, 0, 0.4, 0)
Key.Position = UDim2.new(0.03333, 0, 0.06667, 0)
Key.BackgroundColor3 = Color3.fromRGB(41, 201, 41)
Key.BorderSizePixel = 0
Key.Text = ""
Key.PlaceholderText = "PUT YOUR KEY HERE"
Key.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Key.TextColor3 = Color3.fromRGB(0, 0, 0)
Key.TextWrapped = true
Key.TextXAlignment = Enum.TextXAlignment.Left
Key.TextDirection = Enum.TextDirection.LeftToRight
Key.ClearTextOnFocus = false
Key.Parent = MainFrame

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 20)
KeyCorner.Parent = Key

local Submit = Instance.new("TextButton")
Submit.Name = "Submit"
Submit.Size = UDim2.new(0.42667, 0, 0.30667, 0)
Submit.Position = UDim2.new(0.03333, 0, 0.6, 0)
Submit.BackgroundColor3 = Color3.fromRGB(46, 201, 46)
Submit.BorderSizePixel = 0
Submit.Text = "Submit Key"
Submit.TextColor3 = Color3.fromRGB(0, 0, 0)
Submit.Parent = MainFrame

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 20)
SubmitCorner.Parent = Submit

local Get = Instance.new("TextButton")
Get.Name = "Get"
Get.Size = UDim2.new(0.42667, 0, 0.30667, 0)
Get.Position = UDim2.new(0.53333, 0, 0.6, 0)
Get.BackgroundColor3 = Color3.fromRGB(46, 201, 46)
Get.BorderSizePixel = 0
Get.Text = "Get Key"
Get.TextColor3 = Color3.fromRGB(0, 0, 0)
Get.Parent = MainFrame

local GetCorner = Instance.new("UICorner")
GetCorner.CornerRadius = UDim.new(0, 20)
GetCorner.Parent = Get

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, 0, 0.30667, 0)
Title.Position = UDim2.new(0, 0, 0.36667, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Text = "Chunk Hub Key System"
Title.TextColor3 = Color3.fromRGB(156, 119, 84)
Title.Parent = MainFrame
task.spawn(function()
function loader()
if game.CreatorId == 35102746 then -- Fish It
loadstring(game:HttpGet("https://cdn.authguard.org/virtual-file/8a0754111c4748238bcfc4ffcd271421"))()
elseif game.CreatorId == 32333865 then -- Bl
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/bl.txt"))()
elseif game.CreatorId == 4372130 then -- Blox Fruits
loadstring(game:HttpGet("https://cdn.authguard.org/virtual-file/2cfd6b71b585443e8fb9307010812ce2"))()
elseif game.CreatorId == 2613928 then -- Arsenal
loadstring(game:HttpGet("https://cdn.authguard.org/virtual-file/1070547baa734c15b34d2cc0ea4b4db2"))()
elseif game.CreatorId == 947178762 then -- Case Rolling Rng
loadstring(game:HttpGet("https://cdn.authguard.org/virtual-file/7832a535d4774da49692303718cfd9b8"))()
elseif game.PlaceId == 3101667897 then -- Legends Of Speed
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/legendofspeed.txt"))()
elseif game.CreatorId == 4705120 then -- Ninja Legends
loadstring(game:HttpGet("https://cdn.authguard.org/virtual-file/39ffb25da0ee485e8740113ac7149a48"))()
elseif game.CreatorId == 35871968 then -- Untitled Fishing Game
loadstring(game:HttpGet("https://cdn.authguard.org/virtual-file/5633300e7c0843818556bbb968530f05"))()
elseif game.CreatorId == 36097435 then -- Tennis Clash
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/tennisclash.txt"))()
elseif game.CreatorId == 6042520 then -- 99 Night
loadstring(game:HttpGet("https://cdn.authguard.org/virtual-file/d245d3d4b01849bd90680e8e273947f7"))()
elseif game.CreatorId == 35815907 then -- Sab
loadstring(game:HttpGet("https://cdn.authguard.org/virtual-file/f661d800b2294a99823a5400128bb649"))()
elseif game.CreatorId == 35789249 then -- GaG
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/gag.txt"))()
elseif game.CreatorId == 12836673 then -- Blade Ball
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/bladeball.txt"))()
elseif game.CreatorId == 295182 then -- Adopt Me
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/adoptme.txt",true))()
else
game.Players.LocalPlayer:Kick("Unsupported game")
end
end
if script_key and type(script_key) == 'string' and script_key:find("08v3_") then
sgui:Destroy()
loader()
end
Submit.MouseButton1Click:Connect(function()
script_key = Key.Text
loader()
sgui:Destroy()
end)
Get.MouseButton1Click:Connect(function()
setclipboard("https://authguard.org/a/541")
print("Copied Get Key Link")
end)
end)
