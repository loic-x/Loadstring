local d = game.Players.LocalPlayer 
local l = d.Character 
local s = workspace.Ignore.Zombies 
local k = workspace["_Parts"] 

local h = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))() 
local i = h:CreateWindow("Michael Zombie", "YellowGreg#7993") 
local g = i:addPage("Main", 1, true, 6) 
local _ = i:addPage("Gun Mods", 1, false, 6) 
local f_ = i:addPage("ESP", 1, false, 6) 
local tf = i:addPage("Teleports", 1, false, 6) 
local mt = i:addPage("Misc", 1, false, 6)
local credit = i:addPage("Credits" 1, false, 6)
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

tf:addButton("Box", function() 
    l.HumanoidRootPart.CFrame = workspace["_MapComponents"].MysteryBox.PurchaseBox.CFrame 
  end) 

tf:addButton("Spawn", function() 
    l.HumanoidRootPart.CFrame = workspace["_MapComponents"].MAP_SPAWN.CFrame 
  end) 

f_:addToggle("Show Parts", function(c) 
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

f_:addToggle("Show Zombies", function(c) 
    if c == true then 
      om = true else 
      om = false 
    end 
  end) 
f_:addToggle("Show Box", function(b) 
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
credits:addLabel("Made By AdvanceFalling Team")
credits:addLabel("We are dumb developers :)")



