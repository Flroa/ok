-- GUI to Lua 
-- Version: 0.0.3

-- Instances:

local KeyStroke = Instance.new("ScreenGui")
local S_1 = Instance.new("Frame")
local Space_1 = Instance.new("TextLabel")
local ToggleCorner_1 = Instance.new("UICorner")
local UIScale_1 = Instance.new("UIScale")
local ToggleStroke_1 = Instance.new("UIStroke")
local ToggleCorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_1 = Instance.new("UIAspectRatioConstraint")
local Spacebar_1 = Instance.new("Frame")
local ToggleCorner_3 = Instance.new("UICorner")
local ToggleStroke_2 = Instance.new("UIStroke")
local Space_2 = Instance.new("TextLabel")
local ToggleCorner_4 = Instance.new("UICorner")
local D_1 = Instance.new("Frame")
local Space_3 = Instance.new("TextLabel")
local ToggleCorner_5 = Instance.new("UICorner")
local UIScale_2 = Instance.new("UIScale")
local ToggleStroke_3 = Instance.new("UIStroke")
local ToggleCorner_6 = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local A_1 = Instance.new("Frame")
local Space_4 = Instance.new("TextLabel")
local ToggleCorner_7 = Instance.new("UICorner")
local UIScale_3 = Instance.new("UIScale")
local ToggleStroke_4 = Instance.new("UIStroke")
local ToggleCorner_8 = Instance.new("UICorner")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local W_1 = Instance.new("Frame")
local Space_5 = Instance.new("TextLabel")
local ToggleCorner_9 = Instance.new("UICorner")
local UIScale_4 = Instance.new("UIScale")
local ToggleStroke_5 = Instance.new("UIStroke")
local ToggleCorner_10 = Instance.new("UICorner")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")

-- Properties:
KeyStroke.Name = "KeyStroke"
KeyStroke.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

S_1.Name = "S"
S_1.Parent = KeyStroke
S_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
S_1.BorderColor3 = Color3.fromRGB(0,0,0)
S_1.BorderSizePixel = 0
S_1.Position = UDim2.new(0.709676325, 0,0.179577872, 0)
S_1.Size = UDim2.new(0.0599999987, 0,0.0599999987, 0)

Space_1.Name = "Space"
Space_1.Parent = S_1
Space_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
Space_1.BackgroundTransparency = 1
Space_1.BorderColor3 = Color3.fromRGB(0,0,0)
Space_1.BorderSizePixel = 0
Space_1.Position = UDim2.new(0.102881923, 0,0.1017171, 0)
Space_1.Size = UDim2.new(0.772499502, 0,0.793075681, 0)
Space_1.Font = Enum.Font.GothamBold
Space_1.Text = "s"
Space_1.TextColor3 = Color3.fromRGB(216,216,216)
Space_1.TextSize = 26
Space_1.TextWrapped = true

ToggleCorner_1.Name = "ToggleCorner"
ToggleCorner_1.Parent = Space_1

UIScale_1.Parent = S_1

ToggleStroke_1.Name = "ToggleStroke"
ToggleStroke_1.Parent = S_1
ToggleStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ToggleStroke_1.Color = Color3.fromRGB(45,45,45)
ToggleStroke_1.Thickness = 1

ToggleCorner_2.Name = "ToggleCorner"
ToggleCorner_2.Parent = S_1

UIAspectRatioConstraint_1.Parent = S_1

Spacebar_1.Name = "Spacebar"
Spacebar_1.Parent = KeyStroke
Spacebar_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
Spacebar_1.BorderColor3 = Color3.fromRGB(0,0,0)
Spacebar_1.BorderSizePixel = 0
Spacebar_1.Position = UDim2.new(0.66970396, 0,0.247964829, 0)
Spacebar_1.Size = UDim2.new(0.113084577, 0,0.031682279, 0)

ToggleCorner_3.Name = "ToggleCorner"
ToggleCorner_3.Parent = Spacebar_1

ToggleStroke_2.Name = "ToggleStroke"
ToggleStroke_2.Parent = Spacebar_1
ToggleStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ToggleStroke_2.Color = Color3.fromRGB(45,45,45)
ToggleStroke_2.Thickness = 1

Space_2.Name = "Space"
Space_2.Parent = Spacebar_1
Space_2.BackgroundColor3 = Color3.fromRGB(27,27,27)
Space_2.BackgroundTransparency = 1
Space_2.BorderColor3 = Color3.fromRGB(0,0,0)
Space_2.BorderSizePixel = 0
Space_2.Position = UDim2.new(0.00536073558, 0,-0.502284706, 0)
Space_2.Size = UDim2.new(1, 0,1.24000001, 0)
Space_2.Font = Enum.Font.GothamBold
Space_2.Text = "____"
Space_2.TextColor3 = Color3.fromRGB(216,216,216)
Space_2.TextSize = 26
Space_2.TextWrapped = true

ToggleCorner_4.Name = "ToggleCorner"
ToggleCorner_4.Parent = Space_2

D_1.Name = "D"
D_1.Parent = KeyStroke
D_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
D_1.BorderColor3 = Color3.fromRGB(0,0,0)
D_1.BorderSizePixel = 0
D_1.Position = UDim2.new(0.74919641, 0,0.179577857, 0)
D_1.Size = UDim2.new(0.0599999987, 0,0.0599999987, 0)

Space_3.Name = "Space"
Space_3.Parent = D_1
Space_3.BackgroundColor3 = Color3.fromRGB(27,27,27)
Space_3.BackgroundTransparency = 1
Space_3.BorderColor3 = Color3.fromRGB(0,0,0)
Space_3.BorderSizePixel = 0
Space_3.Position = UDim2.new(0.102881923, 0,0.1017171, 0)
Space_3.Size = UDim2.new(0.772499502, 0,0.793075681, 0)
Space_3.Font = Enum.Font.GothamBold
Space_3.Text = "d"
Space_3.TextColor3 = Color3.fromRGB(216,216,216)
Space_3.TextSize = 26
Space_3.TextWrapped = true

ToggleCorner_5.Name = "ToggleCorner"
ToggleCorner_5.Parent = Space_3

UIScale_2.Parent = D_1

ToggleStroke_3.Name = "ToggleStroke"
ToggleStroke_3.Parent = D_1
ToggleStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ToggleStroke_3.Color = Color3.fromRGB(45,45,45)
ToggleStroke_3.Thickness = 1

ToggleCorner_6.Name = "ToggleCorner"
ToggleCorner_6.Parent = D_1

UIAspectRatioConstraint_2.Parent = D_1

A_1.Name = "A"
A_1.Parent = KeyStroke
A_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
A_1.BorderColor3 = Color3.fromRGB(0,0,0)
A_1.BorderSizePixel = 0
A_1.Position = UDim2.new(0.6708619, 0,0.179577857, 0)
A_1.Size = UDim2.new(0.0599999987, 0,0.0599999987, 0)

Space_4.Name = "Space"
Space_4.Parent = A_1
Space_4.BackgroundColor3 = Color3.fromRGB(27,27,27)
Space_4.BackgroundTransparency = 1
Space_4.BorderColor3 = Color3.fromRGB(0,0,0)
Space_4.BorderSizePixel = 0
Space_4.Position = UDim2.new(0.102881923, 0,0.1017171, 0)
Space_4.Size = UDim2.new(0.772499502, 0,0.793075681, 0)
Space_4.Font = Enum.Font.GothamBold
Space_4.Text = "a"
Space_4.TextColor3 = Color3.fromRGB(216,216,216)
Space_4.TextSize = 26
Space_4.TextWrapped = true

ToggleCorner_7.Name = "ToggleCorner"
ToggleCorner_7.Parent = Space_4

UIScale_3.Parent = A_1

ToggleStroke_4.Name = "ToggleStroke"
ToggleStroke_4.Parent = A_1
ToggleStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ToggleStroke_4.Color = Color3.fromRGB(45,45,45)
ToggleStroke_4.Thickness = 1

ToggleCorner_8.Name = "ToggleCorner"
ToggleCorner_8.Parent = A_1

UIAspectRatioConstraint_3.Parent = A_1

W_1.Name = "W"
W_1.Parent = KeyStroke
W_1.BackgroundColor3 = Color3.fromRGB(27,27,27)
W_1.BorderColor3 = Color3.fromRGB(0,0,0)
W_1.BorderSizePixel = 0
W_1.Position = UDim2.new(0.709676325, 0,0.111676626, 0)
W_1.Size = UDim2.new(0.0599999987, 0,0.0599999987, 0)

Space_5.Name = "Space"
Space_5.Parent = W_1
Space_5.BackgroundColor3 = Color3.fromRGB(27,27,27)
Space_5.BackgroundTransparency = 1
Space_5.BorderColor3 = Color3.fromRGB(0,0,0)
Space_5.BorderSizePixel = 0
Space_5.Position = UDim2.new(0.102881923, 0,0.1017171, 0)
Space_5.Size = UDim2.new(0.772499502, 0,0.793075681, 0)
Space_5.Font = Enum.Font.GothamBold
Space_5.Text = "w"
Space_5.TextColor3 = Color3.fromRGB(216,216,216)
Space_5.TextSize = 26
Space_5.TextWrapped = true

ToggleCorner_9.Name = "ToggleCorner"
ToggleCorner_9.Parent = Space_5

UIScale_4.Parent = W_1

ToggleStroke_5.Name = "ToggleStroke"
ToggleStroke_5.Parent = W_1
ToggleStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ToggleStroke_5.Color = Color3.fromRGB(45,45,45)
ToggleStroke_5.Thickness = 1

ToggleCorner_10.Name = "ToggleCorner"
ToggleCorner_10.Parent = W_1

UIAspectRatioConstraint_4.Parent = W_1

local function tRifeArFfDbmBOfO()
local script = Instance.new("LocalScript",S_1)
local user = game:GetService("UserInputService")

user.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.S then
		script.Parent.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	end
end)

user.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.S then
		script.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	end
end)
end
coroutine.wrap(tRifeArFfDbmBOfO)()


local function DpiDZWFpiNCOuIJw()
local script = Instance.new("LocalScript",Spacebar_1)
local user = game:GetService("UserInputService")

user.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Space then
		script.Parent.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	end
end)

user.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Space then
		script.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	end
end)
end
coroutine.wrap(DpiDZWFpiNCOuIJw)()


local function gLtSKXsGpMgTDrgO()
local script = Instance.new("LocalScript",KeyStroke)
task.wait(20)

local UserInputService = game:GetService("UserInputService")

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
	for i,v in pairs(script.Parent:GetChildren()) do
		if v:IsA("Frame") then
			v.Visible = true
		end
	end
end
end
coroutine.wrap(gLtSKXsGpMgTDrgO)()


local function RZYdelTyqTTGpIMh()
local script = Instance.new("LocalScript",D_1)
local user = game:GetService("UserInputService")

user.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.D then
		script.Parent.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	end
end)

user.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.D then
		script.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	end
end)
end
coroutine.wrap(RZYdelTyqTTGpIMh)()


local function lrmShRqMORYtnaPx()
local script = Instance.new("LocalScript",A_1)
local user = game:GetService("UserInputService")

user.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.A then
		script.Parent.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	end
end)

user.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.A then
		script.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	end
end)
end
coroutine.wrap(lrmShRqMORYtnaPx)()


local function tEDAgkoQolMVDSpO()
local script = Instance.new("LocalScript",W_1)
local user = game:GetService("UserInputService")

user.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.W then
		script.Parent.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	end
end)

user.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.W then
		script.Parent.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	end
end)
end
coroutine.wrap(tEDAgkoQolMVDSpO)()
