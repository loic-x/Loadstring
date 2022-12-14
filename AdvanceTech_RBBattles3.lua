--// Made By AdvanceFalling Team \\--




























local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui
CoreGui:SetCore("SendNotification", {
    Title = "RBBattles Season 3",
    Text = "This Gui is Only For Mobile User but, Pc User Can use This Gui If they want",
    Duration = 10, 
})

game:GetService("StarterGui"):SetCore("SendNotification",{ 	
Title = "Made By:",  	
Text = "AdvancedFalling Team",
	Icon = "rbxthumb://type=Asset&id=9863339777&w=150&h=150",
	Duration = 5
})

--// Library & Windows \\--
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/YellowGreg/AFGui/main/GUI"))()
local Window = Library.CreateLib("AdvanceTech | RB Battles Season 3 | V1", "BloodTheme")



--// Tab \\--
local Tab = Window:NewTab("Home")
local Section = Tab:NewSection("Welcome User To AdvanceTech")
Section:NewButton("AutoFarm Coins", "Idk", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/Amity/main/RBBattles.lua"))()
end)

--// Games \\--
local Tab = Window:NewTab("RB Battles Games")
local Section = Tab:NewSection("Finish The event Fast with Gui")
Section:NewButton("Piggy", "Finish the secret event", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0piggy2", true))()
end)
Section:NewButton("Shopping Wars", "Yep it is a script i guess", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0shopping", true))()
end)
Section:NewButton("Wacky Wizards", "uhh ok", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0wacky", true))()
		end)





local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Have advantage of the game")
Section:NewTextBox("Walkspeed","Rare kavo UI walkspeed setter", function(txt) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

Section:NewTextBox("FOV","Max FOV number 120", function(txt) game.Workspace.CurrentCamera.FieldOfView = txt
end)

Section:NewTextBox("JumpPower","Increases Jumping", function(txt)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end)

Section:NewButton("Inf Jump", "Jump In the air many times", function()
--Subscribe To ArceusMODZ--

local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

Section:NewButton("Reset JumpPower", "Normal Jump", function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

Section:NewButton("Reset WalkSpeed", "Normal Speed", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Section:NewButton("ShiftLock", "Play Like Pc", function()
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ShiftlockStarterGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

--Properties:

ShiftlockStarterGui.Name = "Shiftlock (StarterGui)"
ShiftlockStarterGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ShiftlockStarterGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ShiftlockStarterGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.921914339, 0, 0.552375436, 0)
ImageButton.Size = UDim2.new(0.0636147112, 0, 0.0661305636, 0)
ImageButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
ImageButton.Image = "http://www.roblox.com/asset/?id=182223762"

-- Scripts:

local function TLQOYN_fake_script() -- ImageButton.ShiftGUI 
	local script = Instance.new('LocalScript', ImageButton)

	local MobileCameraFramework = {}
	local players = game:GetService("Players")
	local runservice = game:GetService("RunService")
	local CAS = game:GetService("ContextActionService")
	local player = players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local root = character:WaitForChild("HumanoidRootPart")
	local humanoid = character.Humanoid
	local camera = workspace.CurrentCamera
	local button = script.Parent
	
	--Visiblity
	uis = game:GetService("UserInputService")
	ismobile = uis.TouchEnabled
	button.Visible = ismobile
	
	local states = {
		OFF = "rbxasset://textures/ui/mouseLock_off@2x.png",
		ON = "rbxasset://textures/ui/mouseLock_on@2x.png"
	}
	local MAX_LENGTH = 900000
	local active = false
	local ENABLED_OFFSET = CFrame.new(1.7, 0, 0)
	local DISABLED_OFFSET = CFrame.new(-1.7, 0, 0)
	local function UpdateImage(STATE)
		button.Image = states[STATE]
	end
	local function UpdateAutoRotate(BOOL)
		humanoid.AutoRotate = BOOL
	end
	local function GetUpdatedCameraCFrame(ROOT, CAMERA)
		return CFrame.new(root.Position, Vector3.new(CAMERA.CFrame.LookVector.X * MAX_LENGTH, root.Position.Y, CAMERA.CFrame.LookVector.Z * MAX_LENGTH))
	end
	local function EnableShiftlock()
		UpdateAutoRotate(false)
		UpdateImage("ON")
		root.CFrame = GetUpdatedCameraCFrame(root, camera)
		camera.CFrame = camera.CFrame * ENABLED_OFFSET
	end
	local function DisableShiftlock()
		UpdateAutoRotate(true)
		UpdateImage("OFF")
		camera.CFrame = camera.CFrame * DISABLED_OFFSET
		pcall(function()
			active:Disconnect()
			active = nil
		end)
	end
	UpdateImage("OFF")
	active = false
	function ShiftLock()
		if not active then
			active = runservice.RenderStepped:Connect(function()
				EnableShiftlock()
			end)
		else
			DisableShiftlock()
		end
	end
	local ShiftLockButton = CAS:BindAction("ShiftLOCK", ShiftLock, false, "On")
	CAS:SetPosition("ShiftLOCK", UDim2.new(0.8, 0, 0.8, 0))
	button.MouseButton1Click:Connect(function()
		if not active then
			active = runservice.RenderStepped:Connect(function()
				EnableShiftlock()
			end)
		else
			DisableShiftlock()
		end
	end)
	return MobileCameraFramework
	
end
coroutine.wrap(TLQOYN_fake_script)()
local function OMQRQRC_fake_script() -- ShiftlockStarterGui.LocalScript 
	local script = Instance.new('LocalScript', ShiftlockStarterGui)

	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local Settings = UserSettings()
	local GameSettings = Settings.GameSettings
	local ShiftLockController = {}
	while not Players.LocalPlayer do
		wait()
	end
	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
	local ScreenGui, ShiftLockIcon, InputCn
	local IsShiftLockMode = true
	local IsShiftLocked = true
	local IsActionBound = false
	local IsInFirstPerson = false
	ShiftLockController.OnShiftLockToggled = Instance.new("BindableEvent")
	local function isShiftLockMode()
		return LocalPlayer.DevEnableMouseLock and GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.ClickToMove and GameSettings.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove and LocalPlayer.DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable
	end
	if not UserInputService.TouchEnabled then
		IsShiftLockMode = isShiftLockMode()
	end
	local function onShiftLockToggled()
		IsShiftLocked = not IsShiftLocked
		ShiftLockController.OnShiftLockToggled:Fire()
	end
	local initialize = function()
		print("enabled")
	end
	function ShiftLockController:IsShiftLocked()
		return IsShiftLockMode and IsShiftLocked
	end
	function ShiftLockController:SetIsInFirstPerson(isInFirstPerson)
		IsInFirstPerson = isInFirstPerson
	end
	local function mouseLockSwitchFunc(actionName, inputState, inputObject)
		if IsShiftLockMode then
			onShiftLockToggled()
		end
	end
	local function disableShiftLock()
		if ScreenGui then
			ScreenGui.Parent = nil
		end
		IsShiftLockMode = false
		Mouse.Icon = ""
		if InputCn then
			InputCn:disconnect()
			InputCn = nil
		end
		IsActionBound = false
		ShiftLockController.OnShiftLockToggled:Fire()
	end
	local onShiftInputBegan = function(inputObject, isProcessed)
		if isProcessed then
			return
		end
		if inputObject.UserInputType ~= Enum.UserInputType.Keyboard or inputObject.KeyCode == Enum.KeyCode.LeftShift or inputObject.KeyCode == Enum.KeyCode.RightShift then
		end
	end
	local function enableShiftLock()
		IsShiftLockMode = isShiftLockMode()
		if IsShiftLockMode then
			if ScreenGui then
				ScreenGui.Parent = PlayerGui
			end
			if IsShiftLocked then
				ShiftLockController.OnShiftLockToggled:Fire()
			end
			if not IsActionBound then
				InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
				IsActionBound = true
			end
		end
	end
	GameSettings.Changed:connect(function(property)
		if property == "ControlMode" then
			if GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch then
				enableShiftLock()
			else
				disableShiftLock()
			end
		elseif property == "ComputerMovementMode" then
			if GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove then
				disableShiftLock()
			else
				enableShiftLock()
			end
		end
	end)
	LocalPlayer.Changed:connect(function(property)
		if property == "DevEnableMouseLock" then
			if LocalPlayer.DevEnableMouseLock then
				enableShiftLock()
			else
				disableShiftLock()
			end
		elseif property == "DevComputerMovementMode" then
			if LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.ClickToMove or LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable then
				disableShiftLock()
			else
				enableShiftLock()
			end
		end
	end)
	LocalPlayer.CharacterAdded:connect(function(character)
		if not UserInputService.TouchEnabled then
			initialize()
		end
	end)
	if not UserInputService.TouchEnabled then
		initialize()
		if isShiftLockMode() then
			InputCn = UserInputService.InputBegan:connect(onShiftInputBegan)
			IsActionBound = true
		end
	end
	enableShiftLock()
	return ShiftLockController
end
coroutine.wrap(OMQRQRC_fake_script)()
end)
Section:NewButton("Fly V2", "Makes you Fly", function()
 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)



--// Credits \\--
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Made By AdvanceFalling Team")
local Section = Tab:NewSection("YellowGreg, Wspboy12,")
Section:NewButton("Copy Discord link", "Discord", function()
setclipboard("https://discord.gg/MzeSqBBpCh")
end)
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.LeftControl, function()
	Library:ToggleUI()
end)

--Propertie--
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local Frame2 = Instance.new("Frame")
local TextButton2 = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 1
Frame.Position = UDim2.new(0, 0, 0.30, 0)
Frame.Size = UDim2.new(0, 90, 0, 40)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BackgroundTransparency = 0.6
TextButton.Size = UDim2.new(0, 90, 0, 40)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "Toggle"
TextButton.TextColor3 = Color3.fromRGB(204, 0, 204)
TextButton.TextSize = 22.000
TextButton.MouseButton1Click:connect(function()
Frame.Visible = false
Frame2.Visible = true    
local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, "LeftControl", false, game)
end)

Frame2.Parent = ScreenGui
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 1
Frame2.Position = UDim2.new(0, 0, 0.30, 0)
Frame2.Size = UDim2.new(0, 90, 0, 40)
Frame2.Active = true
Frame2.Draggable = true

TextButton2.Parent = Frame2
TextButton2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.BackgroundTransparency = 0.6
TextButton2.Size = UDim2.new(0, 90, 0, 40)
TextButton2.Font = Enum.Font.GothamBold
TextButton2.Text = "Toggle"
TextButton2.TextColor3 = Color3.fromRGB(204, 0, 204)
TextButton2.TextSize = 22.000
TextButton2.MouseButton1Click:connect(function()
    Frame2.Visible = false
    Frame.Visible = true
local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, "LeftControl", false, game)
end)

Frame.Parent.Active = true
Frame.Parent.Draggable = true






















