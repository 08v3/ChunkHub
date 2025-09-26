--[[
  ____ _   _ _   _ _   _ _  __  _   _ _   _ ____  
 / ___| | | | | | | \ | | |/ / | | | | | | | __ ) 
| |   | |_| | | | |  \| | ' /  | |_| | | | |  _ \ 
| |___|  _  | |_| | |\  | . \  |  _  | |_| | |_) |
 \____|_| |_|\___/|_| \_|_|\_\ |_| |_|\___/|____/ 
]]
if isfile("ChunkHubKey.txt") then
script_key = readfile("ChunkHubKey.txt")
end
local tweenser = game:GetService("TweenService")
local p = game:GetService("Players")
local uis = game:GetService("UserInputService")
local lp = p.LocalPlayer
local plrgui = lp:WaitForChild("PlayerGui")
local introsgui = Instance.new("ScreenGui")
introsgui.Parent = plrgui
introsgui.ResetOnSpawn = false
local blur = Instance.new("BlurEffect")
blur.Size = 50
blur.Parent = game:GetService("Lighting")
local intro = Instance.new("ImageButton")
intro.Position = UDim2.new(0.5, -500, 0.5, -50)
intro.Size = UDim2.new(0, 100, 0, 100)
intro.Image = "rbxassetid://78456259774395"
intro.ImageTransparency = 0
intro.BackgroundTransparency = 1
intro.Visible = true
intro.Parent = introsgui
local introcorner = Instance.new("UICorner")
introcorner.CornerRadius = UDim.new(1, 0)
introcorner.Parent = intro
local goal = {}
goal.Position = UDim2.new(0.5, -50, 0.5, -50)
local tweeninfo = TweenInfo.new(
 1,
 Enum.EasingStyle.Linear,
 Enum.EasingDirection.Out,
 0,
 false,
 0
)
local tween = tweenser:Create(intro, tweeninfo, goal)
tween:Play()
tween.Completed:Connect(function()
 task.wait(1)
 blur:Destroy()
 for i = 0, 1, 0.05 do
  intro.ImageTransparency = i
 end
 game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "[ℹ️] Executor:",
  Text = identifyexecutor() or getexecutorname() or "Unknown"
 })
 game:GetService("StarterGui"):SetCore("SendNotification", {
  Title = "[ℹ️] Greetings",
  Text = "Welcome to Chunk Hub, "..lp.Name.."."
 })
 intro:Destroy()
end)
tween.Completed:Wait()
task.wait(2)

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
if isfile("ChunkHubKey.txt") then
Key.Text = readfile("ChunkHubKey.txt")
end

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
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/fishit.txt"))()
elseif game.CreatorId == 32333865 then -- Bl
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/bl.txt"))()
elseif game.CreatorId == 4372130 then -- Blox Fruits
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/bloxfruits.txt"))()
elseif game.CreatorId == 2613928 then -- Arsenal
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/arsenal.txt"))()
elseif game.CreatorId == 947178762 then -- Case Rolling Rng
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/caserollingrng.txt"))()
elseif game.PlaceId == 3101667897 then -- Legends Of Speed
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/legendofspeed.txt"))()
elseif game.CreatorId == 4705120 then -- Ninja Legends
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/ninjalegends.txt"))()
elseif game.CreatorId == 35871968 then -- Untitled Fishing Game
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/untitledfishinggame.txt"))()
elseif game.CreatorId == 36097435 then -- Tennis Clash
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/tennisclash.txt"))()
elseif game.CreatorId == 6042520 then -- 99 Night
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/99n.txt"))()
elseif game.CreatorId == 35815907 then -- Sab
loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/sab.txt"))()
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
game:GetService("StarterGui"):SetCore("SendNotification", {
 Title = "[ℹ️] Uiless:",
 Text = "Loading script with key: "..tostring(script_key)
})
sgui:Destroy()
task.wait(2)
loader()
end
Submit.MouseButton1Click:Connect(function()
game:GetService("StarterGui"):SetCore("SendNotification", {
 Title = "[ℹ️] Sumbit Key:",
 Text = "Validating key: "..tostring(Key.Text)
})
script_key = Key.Text
task.wait(2)
loader()
sgui:Destroy()
task.wait(10)
writefile("ChunkHubKey.txt", Key.Text)
end)
Get.MouseButton1Click:Connect(function()
setclipboard("https://authguard.org/a/541")
game:GetService("StarterGui"):SetCore("SendNotification", {
 Title = "[ℹ️] Get Key:",
 Text = "Copied get key url to clipboard"
})
end)
end)
