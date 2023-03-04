local Chose = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Original = Instance.new("TextButton")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local PC = Instance.new("TextButton")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local TextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local TextLabel_3 = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")

Chose.DisplayOrder = 99999

Chose.Name = "Chose"
Chose.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Chose.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Chose
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.299120247, 0, 0.215926498, 0)
Frame.Size = UDim2.new(0.25, 0, 0.25, 0)
Frame.BackgroundTransparency = 0.5
Frame.Draggable = true
Frame.Active = true
Frame.Selectable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.165929198, 0, 0, 0)
TextLabel.Size = UDim2.new(0.577433646, 0, 0.185501069, 0)
TextLabel.Font = Enum.Font.Antique
TextLabel.Text = "Harshtech Version"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 40.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 80

Original.Name = "Original"
Original.Parent = Frame
Original.BackgroundColor3 = Color3.fromRGB(16, 88, 233)
Original.Position = UDim2.new(0.252212375, 0, 0.211087421, 0)
Original.Size = UDim2.new(0.440265477, 0, 0.106609806, 0)
Original.Font = Enum.Font.Ubuntu
Original.Text = "Original Version"
Original.TextColor3 = Color3.fromRGB(0, 0, 0)
Original.TextScaled = true
Original.TextSize = 40.000
Original.TextWrapped = true
Original.MouseButton1Down:Connect(function()
	Chose:Destroy()
print("Original Version")
end)


UITextSizeConstraint_2.Parent = HighEnd
UITextSizeConstraint_2.MaxTextSize = 50

PC.Name = "PC"
PC.Parent = Frame
PC.BackgroundColor3 = Color3.fromRGB(16, 88, 233)
PC.Position = UDim2.new(0.252212375, 0, 0.377398729, 0)
PC.Size = UDim2.new(0.440265477, 0, 0.106609806, 0)
PC.Font = Enum.Font.Ubuntu
PC.Text = "PC Version"
PC.TextColor3 = Color3.fromRGB(0, 0, 0)
PC.TextScaled = true
PC.TextSize = 25.000
PC.TextWrapped = true
PC.MouseButton1Down:Connect(function()
	Chose:Destroy()
print("Pc Version")
end)

UITextSizeConstraint_3.Parent = LowEnd
UITextSizeConstraint_3.MaxTextSize = 80

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.210176989, 0, 0.558933911, 0)
TextLabel_2.Size = UDim2.new(0.557522118, 0, 0.185501069, 0)
TextLabel_2.Font = Enum.Font.Antique
TextLabel_2.Text = "Original Better, but you can choose any"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 25.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextStrokeTransparency = 0.000
TextLabel_2.TextWrapped = true

UITextSizeConstraint_4.Parent = TextLabel_2
UITextSizeConstraint_4.MaxTextSize = 80

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.210176989, 0, 0.835756903, 0)
TextLabel_3.Size = UDim2.new(0.577433646, 0, 0.185501069, 0)
TextLabel_3.Font = Enum.Font.Antique
TextLabel_3.Text = "Made by: AdvanceFalling Team"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 40.000
TextLabel_3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextStrokeTransparency = 0.000
TextLabel_3.TextWrapped = true

UITextSizeConstraint_5.Parent = TextLabel_3
UITextSizeConstraint_5.MaxTextSize = 80
