local d = game.Players.LocalPlayer 
local l = d.Character 
local s = workspace.Ignore.Zombies 
local k = workspace["_Parts"] 

local h = loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/AFGui/main/GUI3.lua"))() 
local i = h:CreateWindow("AdvanceTech | Michael Zombie | V1", "YellowGreg#7993") 
local g = i:addPage("Main", 1, true, 6) 
local _ = i:addPage("Gun Mods", 1, false, 6) 
local f_ = i:addPage("ESP", 1, false, 6) 
local tf = i:addPage("Teleports", 1, false, 6) 
local mt = i:addPage("Misc", 1, false, 6)
local credit = i:addPage("Credits")
local om = false local no = false local j = false local e = false 

g:addToggle("Kill Aura", function(c) if 
      c == true then 
      getgenv().run_loopy_pls2 = true 
      no = true 
      function f(t, m) 
        if t:FindFirstChild("HumanoidRootPart") 
          and l and l:FindFirstChild("HumanoidRootPart") then 
          return (l.HumanoidRootPart.Position - t.HumanoidRootPart.Position).Magnitude <= (m or 30) 
        end 
        return false 
      end 
      while task.wait(.1) and run_loopy_pls2 do 
        for i, n in pairs(s:GetChildren()) 
        do if n and n:FindFirstChild("Humanoid") 
            and n:FindFirstChild("HumanoidRootPart") 
            and f(n, 80) then 
            if no == true then 
              game:GetService("ReplicatedStorage").Framework.Remotes.KnifeHitbox:FireServer(n.Humanoid) 
            else 
              break 
            end 
          end 
        end 
      end 
    else 
      getgenv().run_loopy_pls2 = false 
      no = false 
    end 
  end) 

g:addButton("Always HeadShot", function(c)
            spawn(function()
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
 local args = {...}
 if getnamecallmethod() == 'FireServer' and self.Name == 'ClientBulletHit' then
   args[1] = args[1].Parent.Head
 end
 return old(self, unpack(args))
end)
end)
spawn(function()
while true do
   wait()
   game:GetService("Players").LocalPlayer.Character.Remotes.Reload:FireServer()
end
end)
            end)

g:addButton("Anti-Knockdown", function(c)
            local localPlayer = game:GetService("Players").LocalPlayer

local function booga()
   local closestPlayer = nil
 local shortestDistance = math.huge
   for i, v in pairs(workspace.Ignore.Zombies:GetChildren()) do
       if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0  and v:FindFirstChild("Head") then
           local magnitude = (v.Head.Position - localPlayer.Character.Head.Position).magnitude

           if magnitude < shortestDistance then
               closestPlayer = v
               shortestDistance = magnitude
           end
       end
   end

   return closestPlayer
end
while true do
    wait()
spawn(function()
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health < 80 then
local args = {
   [1] = booga().Humanoid
}

game:GetService("ReplicatedStorage").Framework.Remotes.KnifeHitbox:FireServer(unpack(args))
  end
  end)
   end
            end)

g:addButton("Zombie Counter", function(c)
            getgenv().settings = {
    TextColor = Color3.fromRGB(255, 255, 255),
    TextSize = 25,
    TextFont = 2
};

--[[fonts:
    UI = 0
    System = 1
    Plex = 2
    Monospace = 3

    You may have to change the TextSize based off the font since all fonts scale differently in size
]]--

loadstring(game:HttpGet("https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/RobloxScripts/main/Michaels-Zombies/zombieCounter.lua"))();
            end)

g:addButton("No-Clip", function(c) 
    for _, n in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do 
      if n:IsA('BasePart') and 
        n.CanCollide and 
        n.Name ~= floatName then 
        n.CanCollide = false 
      end 
    end 
  end) 

g:addToggle("Infinte Jump", function(c) 
    if c == true then j = true else j = false 
    end 
  end) 

tf:addButton("Teleport MysteryBox", function() 
    l.HumanoidRootPart.CFrame = workspace["_MapComponents"].MysteryBox.PurchaseBox.CFrame 
  end) 

tf:addButton("Teleport MapSpawn", function() 
    l.HumanoidRootPart.CFrame = workspace["_MapComponents"].MAP_SPAWN.CFrame 
  end) 

f_:addToggle("ESP Parts", function(c) 
    if c == true then for i, n in pairs(k:GetChildren()) do 
        local r = Instance.new("BillboardGui") 
        r.Name = "PartESP" 
        r.Size = UDim2.new(5, 0, 1, 0) 
        r.AlwaysOnTop = true 
        r.StudsOffset = Vector3.new(0, 2, 0) 
        local ba = Instance.new("TextLabel") 
        ba.BackgroundTransparency = 1 
        ba.Size = UDim2.new(1, 0, 1, 0) 
        ba.Text = n.Name 
        ba.TextColor3 = Color3.fromRGB(255, 255, 255) 
        ba.TextStrokeTransparency = 0 
        ba.Parent = r 
        ba.Font = Enum.Font.FredokaOne 
        ba.TextScaled = true 
        r.Parent = n.PartPickup 
      end 
      if #k:GetChildren() == 0 
        then game.StarterGui:SetCore("SendNotification", { 
            Title = "Part ESP", 
            Text = "There are no parts in this map!" 
          }) 
      end 
    else for i, x in pairs(k:GetChildren()) do x.PartPickup.PartESP:Destroy() 
      end 
    end 
  end) 

f_:addToggle("ESP Zombies", function(c) 
    if c == true then 
      om = true else 
      om = false 
    end 
  end) 

f_:addButton("Esp Zombies", function(b)
            getgenv().espSettings = {
    Highlight = {
        DepthMode = Enum.HighlightDepthMode.AlwaysOnTop, -- don't mess with this

        FillTransparency = 1, -- 0 for the zombie model to be filled a color, 1 for it to not be
        FillColor = Color3.fromRGB(0, 190, 0),

        OutlineTransparency = 0, -- 0 for the zombie model to be outlined a color, 1 for it to not be
        OutlineColor = Color3.fromRGB(0, 205, 0),

        Enabled = true, -- don't mess with this
    },

    Text = {
        Visible = false, -- don't mess with this
        ZIndex = 1, -- don't mess with this
        Transparency = 1,
        Color = Color3.fromRGB(225, 225, 225),
        Size = 15, -- the size of the text (you may have to change this if you change the font)
        Center = true, -- don't mess with this
        Outline = true, -- don't mess with this
        OutlineColor = Color3.fromRGB(0, 0, 0),
        Font = 2 -- 0 = UI, 1 = System, 2 = Plex, 3 = Monospace
    }
};

loadstring(game:HttpGet("https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/RobloxScripts/main/Michaels-Zombies/zombieEsp.lua"))();
            end)

f_:addToggle("ESP MysteryBox", function(b) 
    if b == true then 
      local a = Instance.new("BillboardGui") 
      a.Name = "BoxESP" 
      a.Size = UDim2.new(5, 0, 1, 0) 
      a.AlwaysOnTop = true 
      a.StudsOffset = Vector3.new(0, 2, 0) 
      local ba = Instance.new("TextLabel") 
      ba.BackgroundTransparency = 1 
      ba.Size = UDim2.new(1, 0, 1, 0) 
      ba.Text = "BOX" 
      ba.TextColor3 = Color3.fromRGB(255, 255, 0) 
      ba.TextStrokeTransparency = 0 
      ba.Parent = a 
      ba.Font = Enum.Font.FredokaOne 
      ba.TextScaled = true 
      a.Parent = workspace["_MapComponents"].MysteryBox.PurchaseBox 
    else 
      workspace["_MapComponents"].MysteryBox.PurchaseBox.BoxESP:Destroy() 
    end 
  end) 

_:addToggle("No Reload", function(c) 
    if c == true then e = true while wait(2) do if e == true then l.Remotes.Reload:FireServer() 
        end 
      end 
    else 
      e = false 
    end 
  end) 
_:addButton("Insta Reload", function()
            spawn(function()
while true do
   wait()
   game:GetService("Players").LocalPlayer.Character.Remotes.Reload:FireServer()
end
end)
            end)

_:addButton("Infinite Ammo", function() 
    while wait() do 
      l.CharStats.GunInventory.Gun1.Storage.Value = 999999 
      l.CharStats.GunInventory.Gun2.Storage.Value = 999999 
    end 
  end) 
function o(n) if om == true then 
    local cb = Instance.new("BillboardGui") 
    cb.Name = "ESPFrame" 
    cb.Size = UDim2.new(5, 0, 7, 0) cb.AlwaysOnTop = true 
    local dc = Instance.new("ImageLabel") 
    dc.Image = "http://www.roblox.com/asset/?id=2764141863" 
    dc.Parent = cb 
    dc.ImageColor3 = Color3.fromRGB(255, 0, 0) 
    dc.BackgroundTransparency = 1 
    dc.Size = UDim2.new(1, 0, 1, 0) 
    cb.Parent = n 
  else 
    if n:FindFirstChild("ESPFrame") then 
      n.ESPPFrame:Destroy() 
    end 
  end 
end 
game:GetService("UserInputService").JumpRequest:Connect(function() 
    if j == true then 
      l:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") 
    end 
  end) 
s.ChildAdded:Connect(o)
--credits
credit:addLabel("Made By AdvanceFalling Team")
credit:addLabel("We are dumb developers :)")



