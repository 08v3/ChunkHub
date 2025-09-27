--[[
  ____ _   _ _   _ _   _ _  __  _   _ _   _ ____  
 / ___| | | | | | | \ | | |/ / | | | | | | | __ ) 
| |   | |_| | | | |  \| | ' /  | |_| | | | |  _ \ 
| |___|  _  | |_| | |\  | . \  |  _  | |_| | |_) |
 \____|_| |_|\___/|_| \_|_|\_\ |_| |_|\___/|____/ 
]]
local uis = game:GetService("UserInputService")
local p = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local tweenser = game:GetService("TweenService")
local lp = p.LocalPlayer
local gui = Instance.new("ScreenGui", lp:WaitForChild("PlayerGui"))
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
local finished = Instance.new("BindableEvent")
task.spawn(function()
    local blur = Instance.new("BlurEffect", Lighting)
    blur.Size = 0
    tweenser:Create(blur, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = 50
    }):Play()
    local logo = Instance.new("ImageLabel", gui)
    logo.Image = "rbxassetid://78456259774395"
    logo.Size = UDim2.fromOffset(0,0)
    logo.Position = UDim2.fromScale(0.5,0.5)
    logo.AnchorPoint = Vector2.new(0.5,0.5)
    logo.BackgroundTransparency = 1
    local appear = tweenser:Create(logo, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = UDim2.fromOffset(200,200),
        Rotation = 360
    })
    appear:Play()
    appear.Completed:Wait()
    tweenser:Create(logo, TweenInfo.new(1.5, Enum.EasingStyle.Quad), {
        ImageTransparency = 1,
        Size = UDim2.fromOffset(250,250)
    }):Play()
    task.wait(2)
    logo:Destroy()
    tweenser:Create(blur, TweenInfo.new(1), {Size = 0}):Play()
    task.wait(1)
    blur:Destroy()
    finished:Fire()
end)
finished.Event:Wait()
finished:Destroy()
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "[ℹ️] Executor:",
    Text = identifyexecutor() or getexecutorname() or "Unknown"
})
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "[ℹ️] Greetings",
    Text = "Welcome to Chunk Hub, "..lp.Name.."."
})
local sgui = game:GetService("StarterGui")
function loader()
 if game.CreatorId == 35102746 then -- Fish It
  loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/fishit.txt"))()
 elseif game.CreatorId == 32333865 then -- BL
  loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/bl.txt"))()
 elseif game.CreatorId == 4372130 then -- Blox Fruits
  loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/bloxfruits.txt"))()
 elseif game.CreatorId == 2613928 then -- Arsenal
  loadstring(game:HttpGet("https://raw.githubusercontent.com/08v3/ChunkHub/refs/heads/main/arsenal.txt"))()
 elseif game.CreatorId == 947178762 then -- Case Rolling RNG
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
if isfile("chunkhub_key.txt") then
 script_key = readfile("chunkhub_key.txt")
end
if type(script_key) == 'string' and string.match(script_key, "08v3_") then
 sgui:SetCore("SendNotification", {
  Title = "[ℹ️] Found Script Key:",
  Text = "Loading main script"
 })
 loader()
 return
end
local a = Instance.new("ScreenGui")
a.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
a.ResetOnSpawn = false
a.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local b = Instance.new("Frame")
b.BorderSizePixel = 0
b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
b.Size = UDim2.new(0, 300, 0, 160)
b.Position = UDim2.new(0, 248, 0, 100)
b.Active = true
b.Draggable = true
b.Parent = a
local c = Instance.new("ImageLabel")
c.BorderSizePixel = 0
c.BackgroundTransparency = 1
c.Image = "rbxassetid://115846030699084"
c.Size = UDim2.new(1, 0, 1, 0)
c.Position = UDim2.new(0, 0, 0, 0)
c.Parent = b
local d = Instance.new("TextLabel")
d.Size = UDim2.new(1, -40, 0, 30)
d.Position = UDim2.new(0, 10, 0, 5)
d.BackgroundTransparency = 1
d.TextScaled = true
d.Font = Enum.Font.GothamBold
d.TextColor3 = Color3.fromRGB(0, 0, 0)
d.TextSize = 20
d.Parent = b
local e = os.date("*t").hour
local f
if e < 12 then
 f = "🌤️Good Morning"
elseif e < 18 then
 f = "☀️Good Afternoon"
elseif e < 21 then
 f = "⛅️Good Evening"
else
 f = "🌙Good Night"
end
local g = game.Players.LocalPlayer
d.Text = f .. ", " .. g.Name .. "!"
local h = Instance.new("TextBox")
h.Size = UDim2.new(1, -20, 0, 30)
h.Position = UDim2.new(0, 10, 0, 50)
h.PlaceholderText = "Enter Key Here"
h.PlaceholderColor3 = Color3.fromRGB(180, 180, 180)
h.Text = ""
h.Font = Enum.Font.Gotham
h.TextColor3 = Color3.fromRGB(255, 255, 255)
h.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
h.TextStrokeTransparency = 1
h.ClearTextOnFocus = false
h.TextWrapped = true
h.Parent = b
if isfile("chunkhub_key.txt") then
 h.Text = readfile("chunkhub_key.txt")
end
local i = Instance.new("TextButton")
i.Size = UDim2.new(0.5, -15, 0, 30)
i.Position = UDim2.new(0, 10, 0, 90)
i.Text = "Check Key"
i.Font = Enum.Font.GothamBold
i.TextColor3 = Color3.fromRGB(255, 255, 255)
i.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
i.Parent = b
local j = Instance.new("TextButton")
j.Size = UDim2.new(0.5, -15, 0, 30)
j.Position = UDim2.new(0.5, 5, 0, 90)
j.Text = "Get Key"
j.Font = Enum.Font.GothamBold
j.TextColor3 = Color3.fromRGB(255, 255, 255)
j.BackgroundColor3 = Color3.fromRGB(50, 100, 200)
j.Parent = b
local k = Instance.new("TextButton")
k.Size = UDim2.new(0, 25, 0, 25)
k.Position = UDim2.new(1, -30, 0, 5)
k.Text = "X"
k.Font = Enum.Font.GothamBold
k.TextColor3 = Color3.fromRGB(255, 255, 255)
k.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
k.Parent = b
function l(m)
 local n = Instance.new("UICorner")
 n.CornerRadius = UDim.new(0, 6)
 n.Parent = m
end
l(h)
l(i)
l(j)
l(k)
k.MouseButton1Click:Connect(function()
 a:Destroy()
end)
i.MouseButton1Click:Connect(function()
 script_key = h.Text
 if not string.match(h.Text, "08v3_") then
  warn("wrong key format blud")
  return
 end
 local AuthGuard = loadstring(game:HttpGet("https://cdn.authguard.org/virtual-file/c4af0dca5af94ca28cb9ba9fe8a5f9fa"))()
 local start = os.clock()
 if AuthGuard.CheckKey() then
  loader()
  writefile("chunkhub_key.txt", h.Text)
  a:Destroy()
 else
  sgui:SetCore("SendNotification", {
   Title = "[ℹ️] Check Key:",
   Text = "Unauthorized"
  })
  if isfile("chunkhub_key.txt") then
   delfile("chunkhub_key.txt")
  end
  return
 end
end)
j.MouseButton1Click:Connect(function()
 sgui:SetCore("SendNotification", {
  Title = "[ℹ️] Get Key:",
  Text = "Copied to clipboard"
 })
 setclipboard("https://authguard.org/a/541")
end)
