--// Made By AdvanceFalling Team \\--



























wait(5)
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "AdvanceTech Doors",
    Text = "Is now being loaded",
    Duration = 5, 
})

game:GetService("StarterGui"):SetCore("SendNotification",{ 	
Title = "Made By:",  	
Text = "AdvancedFalling Team",
	Icon = "rbxthumb://type=Asset&id=9863339777&w=150&h=150",
	Duration = 5
})



--// Library & Windows \\--

local c = loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/AFGui/main/GUI"))()
local d = c.CreateLib("AdvanceTech | Doors | V1", "BloodTheme")


local g = CFrame.new;
local h = game:GetService("ReplicatedStorage").GameData.LatestRoom;
local j = game:GetService("ReplicatedStorage").GameData.ChaseStart;
local k = false;
local l = false;
local m = {KeyObtain = {}, LeverForGate = {}, LiveHintBook = {}}
local n = {"KeyObtain","LeverForGate","LiveHintBook"}
local function o(p)local q=Instance.new("Highlight")
q.Name = "Outline"
q.FillTransparency = 1;
q.FillColor = Color3.new(102,255,153)
q.OutlineColor = Color3.new(102,255,153)
q.OutlineTransparency = 0;
q.Parent = p 
end;
function getbullshit()
local function r(s)return m[s.Parent.Name]
end;
local function t(s) for u,v in pairs(s) do if v.Parent==nil then table.remove(s,i)
end 
end 
end;

while task.wait(1) do 
for u,v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do 
if v:IsA("ProximityPrompt") and table.find(n,v.Parent.Name) then table.insert(r(v),v)
end 
end;
for u,v in pairs(m)do t(v)
end 
end 
end;
coroutine.wrap(getbullshit)()
local w;
w = hookmetamethod(game,"__namecall", function(self,...)
local x = {...}
local y = getnamecallmethod() if 
tostring(self) == 'ClutchHeartbeat' and y == "FireServer" and getgenv().winhb then 
x[2]=true;return w(self,unpack(x))end;return w(self,...)
end)
workspace.ChildAdded:Connect(function(v) 
task.wait() if 
v.Name == "RushMoving" or 
v.Name=="AmbushMoving" then 
while workspace:FindFirstChild(v.Name) and 
getgenv().hxde do 
task.wait() part = v:WaitForChild("RushNew") 
game.Players.LocalPlayer.Character.Collision.CFrame=CFrame.new(part.Position+Vector3.new(0,90,80))
end 
end 
end)

workspace.DescendantAdded:Connect(function(v)
task.wait(0.01) if (string.match(string.lower(v.Name),"seek") or 
string.match(string.lower(v.Name),"triggerse")) and 
getgenv().removearms then 
v:Destroy()
end 
end)

local z = coroutine.create(function()
h.Changed:Connect(function() if 
k == true then 
local C = j.Value-h.Value;
if 0<C and C<4 then 
b:Notify({Title="AlERT",Description="Event in"..tostring(C).."rooms."},
{OutlineColor=Color3.fromRGB(76,0,130), Time=5,Type="default"})
end 
end 
end)
end)

workspace.ChildAdded:Connect(function(D) if 
D.Name == "RushMoving" then if 
l == true then 
b:Notify({Title="Wait",Description="Avoiding Rush"},
{OutlineColor=Color3.fromRGB(76,0,130), Time=5,Type="default"})
local E = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
local F = game:GetService("RunService").Heartbeat:Connect(function()
game.Players.LocalPlayer.Character:MoveTo(E+Vector3.new(0,20,0))
end)

D.Destroying:Wait()F:Disconnect()
game.Players.LocalPlayer.Character:MoveTo(E) else if 
k == true then 
b:Notify({Title="AlERT",Description="Rush Is Coming!"}, {OutlineColor=Color3.fromRGB(76,0,130), Time=5,Type="default"})
end 
end 
else if 
D.Name == "AmbushMoving" then if 
l == true then 
b:Notify({Title="Wait",Description="Avoiding Ambush"}, {OutlineColor=Color3.fromRGB(76,0,130), Time=5,Type="default"})
local E = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
local F = game:GetService("RunService").Heartbeat:Connect(function()
game.Players.LocalPlayer.Character:MoveTo(E+Vector3.new(0,20,0))
end)
D.Destroying:Wait()
F:Disconnect()
game.Players.LocalPlayer.Character:MoveTo(E) 
else if 
k == true then 
b:Notify({Title="AlERT",Description = "Ambush Is Coming!"}, {OutlineColor=Color3.fromRGB(76,0,130), Time=5,Type="default"})
end 
end 
end 
end
coroutine.resume(z)
local G = d:NewTab("Welcome | Credit")
local H = G:NewSection("Welcome User To AdvanceTech")
local H = G:NewSection("Made By AdvanceFalling Team")
local H = G:NewSection("Team; YellowGreg, Wspboy12, MMSVon")
local I = d:NewTab("Main")
local J = I:NewSection("Sheesh Script")
local K = d:NewTab("Visuals")
local L = K:NewSection("Look through Wall")
local M = d:NewTab("Mics")
local N = M:NewSection("Fun Stuff")
local O = d:NewTab("Spawn Monster")
local P = O:NewSection("Doors Monster")
local Q = d:NewTab("Items")
local R = Q:NewSection("Useful Item")
local Tab = d:NewTab("Gui")
local Section = Tab:NewSection("Gui that are similar to Our gui")
local S = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

Section:NewButton("Plamen6789 Gui", "idk wth is this name", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/DoorsEntitySummonerGUI/main/EntityGUI'))()
end)
Section:NewButton("SindubsMini Gui", "yea idk", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SindubsMini/doors-script/main/Doors/Script.lua"))()
end)
Section:NewButton("Chiba Hub", "why hub but ok", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/KindIhave/ChibaHubcomeback/main/Chiba-Doors.txt'))()
end)
Section:NewButton("Darkrai X", "Doors in mobile", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()
end)
Section:NewButton("Soon", "adding more later", function()
print("Stop Pressing Theres No script")
end)

H:NewButton("Copy Discord link", "Discord", function()
setclipboard("https://discord.gg/MzeSqBBpCh")
end)
H:NewKeybind("Ui Toggle (Key-Bind)","?",Enum.KeyCode.F,function()
c:ToggleUI()
end)
local T = 18;J:NewSlider("Walkspeed","?",50,18,function(v)
T=v 
end)
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = T 
end)
end)
J:NewToggle("Head Light","light",function(v)
local U = Instance.new("SpotLight")
U.Brightness = 1;U.Face=Enum.NormalId.Front;U.Range=90;
U.Parent = game.Players.LocalPlayer.Character.Head;
U.Enabled = v end)J:NewLabel("Game Options")
J:NewButton("FullBright","?",function()
local V = game:GetService("Lighting")
local function W()
V.Ambient=Color3.new(1,1,1)
V.ColorShift_Bottom = Color3.new(1,1,1)V.ColorShift_Top=Color3.new(1,1,1)
end;
W()
V.LightingChanged:Connect(W)
end)
J:NewButton("Skip Level","yeeee",function()
pcall(function()
local X = false;
local Y = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door") for 
i,v in ipairs(Y.Parent:GetDescendants()) do if 
v.Name == "KeyObtain" then X = v 
end 
end;
if X then 
game.Players.LocalPlayer.Character:PivotTo(g(X.Hitbox.Position))
wait(0.3)
fireproximityprompt(X.ModulePrompt,0)
game.Players.LocalPlayer.Character:PivotTo(g(Y.Door.Position))
wait(0.3)
fireproximityprompt(Y.Lock.UnlockPrompt,0)
end;
if h == 50 then 
Y = workspace.CurrentRooms[tostring(h+1)]:WaitForChild("Door")
end;
game.Players.LocalPlayer.Character:PivotTo(g(Y.Door.Position))
wait(0.3)
Y.ClientOpen:FireServer()
end)
end)
local Z = true;
local _ = true;
local a0 = game:GetService("UserInputService")
local g = CFrame.new;
local h = game:GetService("ReplicatedStorage").GameData.LatestRoom;
J:NewToggle("Auto-Skip Levels","fast skip",function(a1)
if a1 then while true do 
pcall(function()
local a2 = false;
local Y = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door") for 
i,a3 in ipairs(Y.Parent:GetDescendants()) do if 
a3.Name == "KeyObtain" then 
a2=a3 
end 
end;
if h.Value == 50 and Z == true then 
Y = workspace.CurrentRooms[tostring(h.Value+1)]:WaitForChild("Door")
game.Players.LocalPlayer.Character:PivotTo(g(Y.Door.Position)) else if 
a2 and _ == true then 
game.Players.LocalPlayer.Character:PivotTo(g(a2.Hitbox.Position))
task.wait(.3)
fireproximityprompt(a2.ModulePrompt)
task.wait(.3)
game.Players.LocalPlayer.Character:PivotTo(g(Y.Door.Position))
task.wait(.3)
fireproximityprompt(Y.Lock.UnlockPrompt)
end;
game.Players.LocalPlayer.Character:PivotTo(g(Y.Door.Position))
end;
task.wait(.5)Y.ClientOpen:FireServer()
end)
end 
end 
end)
J:NewButton("No Jumpscare","thank god not jumpscare",function()
game:GetService("ReplicatedStorage").Bricks.Jumpscare:Destroy()
end)
local a4;
J:NewToggle("Auto-Win Heartbeat","?",function(v)
a4 = v 
end)
J:NewButton("Teleport To Key","?",function()
g=CFrame.new;
local Y = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door") for 
i,v in ipairs(Y.Parent:GetDescendants()) do if 
v.Name == "KeyObtain" then 
game.Players.LocalPlayer.Character:PivotTo(g(v.Hitbox.Position))
fireproximityprompt(v.ModulePrompt)
end 
end 
end)
local a5 = false;
J:NewToggle("Instant Interact","?",function(v)
getgenv().noEwaits = v;
PromptButtonHoldBegan = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(a6) if 
getgenv().noEwaits then 
fireproximityprompt(a6)
end 
end)
end)
J:NewButton("Skip Level 50","?",function()
if h.Value == 50 then 
local Y = workspace.CurrentRooms[tostring(h+1)]:WaitForChild("Door")
game.Players.LocalPlayer.Character:PivotTo(g(Y.Door.Position)) else 
b:Notify({Title = "Hey", Description = "Seems Like You Didnt Reached Door 50 or Have Passed It"}, {OutlineColor=Color3.fromRGB(76,0,130), Time=5,Type="default"})
end 
end)
J:NewLabel("Game Mods")
local cy;
L:NewToggle("Key ESP","?",function(v)
cy=v;
if cy then repeat task.wait(.25)
for i,v in pairs(m.KeyObtain) do pcall(function()
if not v.Parent:FindFirstChild("Outline") then if 
cy then o(v.Parent)
end 
end 
end)
end 
until 
not cy else 
for i,v in pairs(m.KeyObtain) do pcall(function()
v.Parent.Outline:Destroy()
end)
end 
end 
end)

local cz;
L:NewToggle("Lever ESP","?",function(v)
cz = v;
if cz then repeat task.wait(.25) 
for i,v in pairs(m.LeverForGate)do pcall(function() 
if not v.Parent:FindFirstChild("Outline") then 
if cz then o(v.Parent)
end 
end 
end)
end 
until not cz else 
for i,v in pairs(m.LeverForGate) do pcall(function()
v.Parent.Outline:Destroy()
end)
end 
end 
end)
local cA;
L:NewToggle("Books ESP","?",function(v)
cA=v;if cA then repeat task.wait(.25)
for i,v in pairs(m.LiveHintBook)do pcall(function()
if not v.Parent:FindFirstChild("Outline")then 
if cA then o(v.Parent)
end 
end 
end)
end 
until not cA else 
for i,v in pairs(m.LiveHintBook) do pcall(function()
v.Parent.Outline:Destroy()
end)
end 
end 
end)
L:NewToggle("Player ESP","?",function(v)
_G.God = v;
while _G.God do wait()pcall(function()
for i,v in pairs(game.Players:GetChildren())
do if not v.Character.Head:FindFirstChild("ESP") then
local cB=Instance.new("BillboardGui")local cC=Instance.new("TextLabel")cB.Parent=v.Character.Head;cB.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;cB.Active=true;cB.Name="ESP"cB.AlwaysOnTop=true;cB.LightInfluence=1.000;cB.Size=UDim2.new(0,50,0,50)cB.StudsOffset=Vector3.new(0,2.5,0)cC.Parent=cB;cC.BackgroundColor3=Color3.fromRGB(102,255,153)cC.BackgroundTransparency=1.000;cC.Size=UDim2.new(0,50,0,50)cC.Font=Enum.Font.GothamBold;cC.Text=v.Name;cC.TextColor3=Color3.fromRGB(102,255,153)cC.TextScaled=true;cC.TextSize=14.000;cC.TextStrokeTransparency=0.000;cC.TextWrapped=true 
end 
end 
end)
end 
end)

N:NewButton("Anti Lag","?",function()
for u,v in pairs(game:GetService("Workspace"):GetDescendants())do if v:IsA("BasePart")and not v.Parent:FindFirstChild("Humanoid")then v.Material=Enum.Material.SmoothPlastic;if v:IsA("Texture")then v:Destroy()
end 
end 
end 
end)
N:NewButton("Fly","?",function()
 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)
N:NewToggle("Inform Events","?",function(v)
k = v 
end)
N:NewToggle("Avoid Rush/Ambush","?",function(v)
l = v 
end)
local cD;
N:NewToggle("No Screech","?",function(v) 
cD = v 
end)
local w;
w = hookmetamethod(game,"__namecall",newcclosure(function(self,...)local x={...}local y=getnamecallmethod()if tostring(self)=='Screech'and y=="FireServer"and cD==true then x[1]=true;return w(self,unpack(x))end;if tostring(self)=='ClutchHeartbeat'and y=="FireServer"and a4==true then x[2]=true;return w(self,unpack(x))end;return w(self,...)end))workspace.CurrentCamera.ChildAdded:Connect(function(cE)if cE.Name=="Screech"and cD==true then cE:Destroy()
end 
end)
N:NewButton("Unlock All Achivements","?",function()
local cF=require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)for i,v in pairs(require(game.ReplicatedStorage.Achievements))do spawn(function()require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)(nil,i)
end)
end 
end)
N:NewButton("Complete Breaker Box Game","?",function()
game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
end)
N:NewButton("Summon Red Room", "wth is a red room bruhhh", function()
local v1 = require(game.ReplicatedStorage.ClientModules.Module_Events)
local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
local seconds = 1000000
v1.tryp(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], seconds)
end)
N:NewButton("Summon Shadow Every Room", "why just why", function()
loadstring(game:HttpGet('https://github.com/Noonie1/RandomUtilities/blob/ShadowScript/ShadowMain.lua?raw=true'))
end)
N:NewButton("Summon Closet Jack (click Twice)", "click twice to work", function()
local config={
    Image="http://www.roblox.com/asset/?id=11388995838", -- Could also be "image.png"
    Sound="rbxassetid://11350126934", -- Could also be "file.mp3"
    EntityName="Jack" -- Make sure to change if you mod the image/sound to prevent overlapping
}
local ReSt = game:GetService("ReplicatedStorage")
 
local ModuleScripts = {
    ModuleEvents = require(ReSt.ClientModules.Module_Events),
}
 
local function connectClosetJack(wardrobes, room, bool)
    for _, wardrobe in pairs(wardrobes) do
        if not game:GetService("ReplicatedStorage"):FindFirstChild("closetAnim") then 
            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://9460435404"
            anim.Name="closetAnim"
            anim.Parent=game:GetService("ReplicatedStorage")
        end
        if not game:GetService("ReplicatedStorage"):FindFirstChild("JackModel") then
            if not isfile(config.EntityName..".txt") then writefile(config.EntityName..".txt", game:HttpGet("https://github.com/sponguss/storage/raw/real/newclosetjack.rbxm?raw=true")) end
            local a=game:GetObjects((getcustomasset or getsynasset)(config.EntityName..".txt"))[1]
            a.Name="JackModel"
            a.Parent=game:GetService("ReplicatedStorage")
        end
        game:GetService("ReplicatedStorage").JackModel.Sound.SoundId=(isfile(config.Sound) and (getcustomasset or getsynasset)(config.Sound) or config.Sound)
        game:GetService("ReplicatedStorage").JackModel.Gui.ImageLabel.Image=(isfile(config.Image) and (getcustomasset or getsynasset)(config.Image) or config.Image)
        local prompt = wardrobe:WaitForChild("HidePrompt", 1)
        if not prompt and wardrobe:FindFirstChild("fakePrompt") then return end
 
        if prompt then
            -- Fake prompt
 
            local fakePrompt = prompt:Clone()
 
            if bool then prompt:Destroy() else prompt.Enabled=false end
            fakePrompt.Parent = wardrobe
            fakePrompt.Name="fakePrompt"
 
            local connection; connection = fakePrompt.Triggered:Connect(function()
                if not bool then connection:Disconnect() end
                local model=game:GetService("ReplicatedStorage").JackModel:Clone()
 
                if model and not wardrobe:FindFirstChild(model.Name) then
                    model:SetPrimaryPartCFrame(wardrobe.Main.CFrame)
                    model.Parent = workspace
 
                    -- Animation setup
                    local anim = wardrobe.AnimationController:LoadAnimation(game:GetService("ReplicatedStorage").closetAnim)
 
                    -- Scare
 
                    ModuleScripts.ModuleEvents.flickerLights(room, 1)
                    anim:Play()
                    model.Sound:Play()
 
                    -- Destroy
 
                    task.wait(1)
 
                    model:Destroy()
                    if not bool then prompt.Enabled = true end
                    if not bool then fakePrompt:Destroy() end
 
                    if not bool then connection:Disconnect() end
                end
            end)
        end
    end
end
 
local wardrobes = {}
for _, wardrobe in pairs(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")].Assets:GetChildren()) do
    if wardrobe.Name=="Wardrobe" then
        table.insert(wardrobes, wardrobe)
    end
end
 
if wardrobes[1] then
    connectClosetJack(wardrobes, workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], true) -- 'true' for jack to appear every time
end
end)
N:NewButton("Light Flicker", "uh scary", function()
 local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
events.flickerLights(room, 1)
end)
N:NewButton("Break Light", "No light", function()
 local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
events.breakLights(room, 1)
end)
P:NewButton("Spawn Halt","?",function()
require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)
P:NewButton("Spawn Glitch","?",function()
require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)
P:NewButton("Spawn Screech","?",function()
require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)
P:NewButton("Spawn Seek","?",function()
local cG = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/EntitySpawner.lua"))()
local cH={}cG:Spawn("Seek",unpack(cH))
end)
P:NewButton("Spawn Rush (Killable)","?",function()
loadstring(game:HttpGet("https://pastebin.com/raw/80iLHuff"))()
end)
P:NewButton("Spawn Seek Eyes","?",function()
local s=game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game;require(game.ReplicatedStorage.ClientModules.EntityModules.Seek).tease(nil,workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")],100)
end)
P:NewButton("Spawn Timothy","?",function()
local s=game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game;require(s.RemoteListener.Modules.SpiderJumpscare)(require(s),workspace.CurrentRooms["0"].Assets.Dresser.DrawerContainer,0.2)
end)
P:NewButton("Summon A-60 (Can kill)", "bruh why", function()
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
local entity = Creator.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "rbxassetid://11402798184", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 5, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled
        10, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 0,
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "rbxassetid://11399159981", -- Image1 url
            Image2 = "rbxassetid://11399159981", -- Image2 url
            Shake = true,
            Sound1 = {
                0, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                0, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                true, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died To A-60", "A-60 Has A Red Light", "He Is Faster Hide", "Take This Your Advantage also you are gay"}, -- Custom death message (can be as long as you want)
})
 
-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
end
 
entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", mentityModelodel)
end
 
entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
end
 
entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end
 
entity.Debug.OnDeath = function()
    warn("You died.")
end
------------------------
 
-- Run the created entity
Creator.runEntity(entity)
end)

P:NewLabel("Spam Spawns")
P:NewToggle("Spam Halt","?",function(v)
_G.Halts=v;while _G.Halts do wait()pcall(function()require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])wait(1)
end)
end 
end)
P:NewToggle("Spam Screech","?",function(v)
_G.Screechs=v;while _G.Screechs do wait(0.5)pcall(function()require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
end)
end 
end)
R:NewButton("Obtain Crucifix","?",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Johnny39871/assets/main/crucifixo"))()
end)
R:NewButton("Obtain Red Crucifix (Non - Functiona)","?",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/CometV4/main/Items/Devil'sCrucifix.lua"))
end)
R:NewButton("Obtain Light Block","?",function()
local cI=Instance.new("Tool")cI.Parent=game.Players.LocalPlayer.Backpack;cI.Name="Lighter"local cJ=Instance.new("Part")cJ.Parent=cI;cJ.Name="Handle"local cK=Instance.new("PointLight")cK.Parent=cJ;cK.Range=60;cK.Brightness=3 
end)
R:NewButton("Obtain Skeleton Key","?",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/CometV4/main/Items/Skeletonkey.lua"))()
end)
end)



local e = Instance.new("ScreenGui")
local f = Instance.new("TextButton")
e.Name = "Toggle" 
e.Parent = game.CoreGui; 
f.Name = "UIToggle" 
f.Parent=e;
f.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
f.BackgroundTransparency = 0.5;
f.Position=UDim2.new(0, 0, 0.30, 0)
f.Size = UDim2.new(0, 90, 0, 40)
f.Font = Enum.Font.SourceSans; 
f.Text = "Toggle"
f.TextColor3 = Color3.fromRGB(204,0,204)
f.TextSize = 22.000;
f.TextXAlignment = Enum.TextXAlignment.Left;
f.MouseButton1Click:connect(function()
c:ToggleUI()
end)

