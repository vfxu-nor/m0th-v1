local PG = game.Players.LocalPlayer.PlayerGui
script.Parent = PG:FindFirstChild("m0th") 
print("LINE")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local SnaplineEnabled = script.Parent.Lines

local TargetPartName = "HumanoidRootPart"
local LineColor = Color3.new(1, 1, 1)
local TeammateLineColor = Color3.new(0, 0.25, 1)
local GenericHumanoidLineColor = Color3.new(1, 0, 0)
local LineWidth = 2
local DrawTeammates = true
local FindHumanoids = true

local Gui
local Lines = {}
local LineOrigin

local function SetupGUI()
	Gui = Instance.new("ScreenGui")
	Gui.Name = "SnaplineGui"
	Gui.ResetOnSpawn = false
	Gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end

local function GetLineOrigin()
	return Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y * 0.9)
end

local function SetLine(Line, Width, Color, Origin, Destination)
	local Position = (Origin + Destination) / 2
	Line.Position = UDim2.new(0, Position.X, 0, Position.Y)
	local Length = (Origin - Destination).Magnitude
	Line.BackgroundColor3 = Color
	Line.BorderColor3 = Color
	Line.Size = UDim2.new(0, Length, 0, Width)
	Line.Rotation = math.deg(math.atan2(Destination.Y - Origin.Y, Destination.X - Origin.X))
end

local function RemoveAllLines()
	for _, line in pairs(Lines) do
		if line then line:Destroy() end
	end
	Lines = {}
end

local function UpdateSnaplines()
	if not SnaplineEnabled.Value then
		RemoveAllLines()
		return
	end

	LineOrigin = GetLineOrigin()
	local Targets = {}

	for _, Player in pairs(Players:GetPlayers()) do
		if Player == LocalPlayer then continue end
		local IsTeammate = LocalPlayer.Team and Player.Team == LocalPlayer.Team
		if not DrawTeammates and IsTeammate then continue end

		local Character = Player.Character
		if not Character then continue end
		local TargetPart = Character:FindFirstChild(TargetPartName)
		if not TargetPart then continue end

		local ScreenPoint, OnScreen = Camera:WorldToScreenPoint(TargetPart.Position)
		if OnScreen then
			table.insert(Targets, {Vector2.new(ScreenPoint.X, ScreenPoint.Y), IsTeammate and TeammateLineColor or LineColor})
		end
	end

	if FindHumanoids then
		for _, Obj in pairs(workspace:GetDescendants()) do
			if Obj:IsA("Humanoid") and not Players:FindFirstChild(Obj.Parent.Name) then
				local TargetPart = Obj.Parent:FindFirstChild(TargetPartName)
				if TargetPart then
					local ScreenPoint, OnScreen = Camera:WorldToScreenPoint(TargetPart.Position)
					if OnScreen then
						table.insert(Targets, {Vector2.new(ScreenPoint.X, ScreenPoint.Y), GenericHumanoidLineColor})
					end
				end
			end
		end
	end

	while #Lines < #Targets do
		local NewLine = Instance.new("Frame")
		NewLine.Name = "Snapline"
		NewLine.AnchorPoint = Vector2.new(0.5, 0.5)
		NewLine.BorderSizePixel = 0
		NewLine.BackgroundTransparency = 0
		NewLine.Parent = Gui
		table.insert(Lines, NewLine)
	end

	for i, Line in ipairs(Lines) do
		local TargetData = Targets[i]
		if TargetData then
			SetLine(Line, LineWidth, TargetData[2], LineOrigin, TargetData[1])
			Line.Visible = true
		else
			Line.Visible = false
			if i > #Targets then
				Line:Destroy()
				table.remove(Lines, i)
			end
		end
	end
end

SetupGUI()
LineOrigin = GetLineOrigin()

Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
	LineOrigin = GetLineOrigin()
end)

-- Run every frame
RunService.RenderStepped:Connect(UpdateSnaplines)

-- Optional: listen to BoolValue changes to clear immediately when toggled off
SnaplineEnabled:GetPropertyChangedSignal("Value"):Connect(function()
	if not SnaplineEnabled.Value then
		RemoveAllLines()
	end
end)
