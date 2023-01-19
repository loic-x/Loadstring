local d = game.Players.LocalPlayer 
local l = d.Character 
local s = workspace.Ignore.Zombies 
local k = workspace["\95\80\97\114\116\115"] 

local h = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\108\111\111\100\98\97\108\108\47\45\98\97\99\107\45\117\112\115\45\102\111\114\45\108\105\98\115\47\109\97\105\110\47\97\97\97\97"))() 
local i = h:CreateWindow("Michael Zombie", "flip#0001") 
local g = i:addPage("Main", 1, true, 6) 
local _ = i:addPage("Gun Mods", 1, false, 6) 
local f_ = i:addPage("ESP", 1, false, 6) 
local tf = i:addPage("Teleports", 1, false, 6) 
local mt = i:addPage("\77\105\115\99", 1, false, 6) 
local om = false local no = false local j = false local e = false 

g:addToggle("\75\105\108\108\32\65\117\114\97", function(c) if 
      c == true then 
      getgenv().run_loopy_pls2 = true 
      no = true 
      function f(t, m) 
        if t:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") 
          and l and l:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") then 
          return (l.HumanoidRootPart.Position - t.HumanoidRootPart.Position).Magnitude <= (m or 30) 
        end 
        return false 
      end 
      while task.wait(.1) and run_loopy_pls2 do 
        for i, n in pairs(s:GetChildren()) 
        do if n and n:FindFirstChild("\72\117\109\97\110\111\105\100") 
            and n:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") 
            and f(n, 80) then 
            if no == true then 
              game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101").Framework.Remotes.KnifeHitbox:FireServer(n.Humanoid) 
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

g:addButton("\78\111\45\67\108\105\112", function(c) 
    for _, n in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do 
      if n:IsA('BasePart') and 
        n.CanCollide and 
        n.Name ~= floatName then 
        n.CanCollide = false 
      end 
    end 
  end) 

g:addToggle("\73\110\102\105\110\105\116\101\32\74\117\109\112", function(c) 
    if c == true then j = true else j = false 
    end 
  end) 

tf:addButton("\66\111\120", function() 
    l.HumanoidRootPart.CFrame = workspace["\95\77\97\112\67\111\109\112\111\110\101\110\116\115"].MysteryBox.PurchaseBox.CFrame 
  end) 

tf:addButton("\83\112\97\119\110", function() 
    l.HumanoidRootPart.CFrame = workspace["\95\77\97\112\67\111\109\112\111\110\101\110\116\115"].MAP_SPAWN.CFrame 
  end) 

f_:addToggle("\83\104\111\119\32\80\97\114\116\115", function(c) 
    if c == true then for i, n in pairs(k:GetChildren()) do 
        local r = Instance.new("\66\105\108\108\98\111\97\114\100\71\117\105") 
        r.Name = "\80\97\114\116\69\83\80" 
        r.Size = UDim2.new(5, 0, 1, 0) 
        r.AlwaysOnTop = true 
        r.StudsOffset = Vector3.new(0, 2, 0) 
        local ba = Instance.new("\84\101\120\116\76\97\98\101\108") 
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
        then game.StarterGui:SetCore("\83\101\110\100\78\111\116\105\102\105\99\97\116\105\111\110", { 
            Title = "\80\97\114\116\32\69\83\80", 
            Text = "\84\104\101\114\101\32\97\114\101\32\110\111\32\112\97\114\116\115\32\105\110\32\116\104\105\115\32\109\97\112\33" 
          }) 
      end 
    else for i, x in pairs(k:GetChildren()) do x.PartPickup.PartESP:Destroy() 
      end 
    end 
  end) 

f_:addToggle("\83\104\111\119\32\90\111\109\98\105\101\115", function(c) 
    if c == true then 
      om = true else 
      om = false 
    end 
  end) 
f_:addToggle("\83\104\111\119\32\66\111\120", function(b) 
    if b == true then 
      local a = Instance.new("\66\105\108\108\98\111\97\114\100\71\117\105") 
      a.Name = "\66\111\120\69\83\80" 
      a.Size = UDim2.new(5, 0, 1, 0) 
      a.AlwaysOnTop = true 
      a.StudsOffset = Vector3.new(0, 2, 0) 
      local ba = Instance.new("\84\101\120\116\76\97\98\101\108") 
      ba.BackgroundTransparency = 1 
      ba.Size = UDim2.new(1, 0, 1, 0) 
      ba.Text = "\66\79\88" 
      ba.TextColor3 = Color3.fromRGB(255, 255, 0) 
      ba.TextStrokeTransparency = 0 
      ba.Parent = a 
      ba.Font = Enum.Font.FredokaOne 
      ba.TextScaled = true 
      a.Parent = workspace["\95\77\97\112\67\111\109\112\111\110\101\110\116\115"].MysteryBox.PurchaseBox 
    else 
      workspace["\95\77\97\112\67\111\109\112\111\110\101\110\116\115"].MysteryBox.PurchaseBox.BoxESP:Destroy() 
    end 
  end) 

_:addToggle("\78\111\32\82\101\108\111\97\100", function(c) 
    if c == true then e = true while wait(2) do if e == true then l.Remotes.Reload:FireServer() 
        end 
      end 
    else 
      e = false 
    end 
  end) 
_:addButton("\73\110\102\105\110\105\116\101\32\65\109\109\111", function() 
    while wait() do 
      l.CharStats.GunInventory.Gun1.Storage.Value = 999999 
      l.CharStats.GunInventory.Gun2.Storage.Value = 999999 
    end 
  end) 
function o(n) if om == true then 
    local cb = Instance.new("\66\105\108\108\98\111\97\114\100\71\117\105") 
    cb.Name = "\69\83\80\70\114\97\109\101" 
    cb.Size = UDim2.new(5, 0, 7, 0) cb.AlwaysOnTop = true 
    local dc = Instance.new("\73\109\97\103\101\76\97\98\101\108") 
    dc.Image = "\104\116\116\112\58\47\47\119\119\119\46\114\111\98\108\111\120\46\99\111\109\47\97\115\115\101\116\47\63\105\100\61\50\55\54\52\49\52\49\56\54\51" 
    dc.Parent = cb 
    dc.ImageColor3 = Color3.fromRGB(255, 0, 0) 
    dc.BackgroundTransparency = 1 
    dc.Size = UDim2.new(1, 0, 1, 0) 
    cb.Parent = n 
  else 
    if n:FindFirstChild("\69\83\80\70\114\97\109\101") then 
      n.ESPPFrame:Destroy() 
    end 
  end 
end 
game:GetService("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101").JumpRequest:Connect(function() 
    if j == true then 
      l:FindFirstChildOfClass('Humanoid'):ChangeState("\74\117\109\112\105\110\103") 
    end 
  end) 
s.ChildAdded:Connect(o) 

