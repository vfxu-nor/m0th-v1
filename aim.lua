-- FOV Aimbot (Properly controlled by UI toggle - NO AUTO-START if toggle is off)
local PG = game.Players.LocalPlayer.PlayerGui
script.Parent = PG:WaitForChild("m0th")  -- Safer than FindFirstChild
print("AIMBOT LOADED")

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local UIS = game:GetService("UserInputService")

local AimScript = script
local UI = script.Parent
local AimToggleValue = UI:WaitForChild("Aim") 

local FOV_ANGLE = math.rad(60)      
local SMOOTHING = 0.17               
local PREDICTION = 0.135         

local Connection = nil
local Enabled = AimToggleValue.Value  

local function GetClosestTarget()
	local closest = nil
	local closestAngle = FOV_ANGLE
	local mousePos = UIS:GetMouseLocation() 
	local camPos = Camera.CFrame.Position

	for _, player in ipairs(Players:GetPlayers()) do
		if player == LocalPlayer or not player.Character then continue end

		local root = player.Character:FindFirstChild("HumanoidRootPart")
		local hum = player.Character:FindFirstChild("Humanoid")
		if not root or not hum or hum.Health <= 0 then continue end

		local screenPos, onScreen = Camera:WorldToViewportPoint(root.Position)
		if not onScreen then continue end

		local distanceFromMouse = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
		local maxDistance = (FOV_ANGLE / math.rad(Camera.FieldOfView)) * (workspace.CurrentCamera.ViewportSize.Y / 2)

		if distanceFromMouse < maxDistance and distanceFromMouse < (closestAngle * 100) then
			closest = root
			closestAngle = distanceFromMouse / 100
		end
	end

	return closest
end

local function AimAtTarget(target)
	if not target or not target.Parent then return end

	local predictedPos = target.Position + (target.AssemblyLinearVelocity * PREDICTION)
	local direction = (predictedPos - Camera.CFrame.Position).Unit
	local targetCFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + direction)

	Camera.CFrame = Camera.CFrame:Lerp(targetCFrame, SMOOTHING)
end

local function StartAimbot()
	if Connection then Connection:Disconnect() end

	Connection = RunService.RenderStepped:Connect(function()
		if not Enabled then return end
		if not UIS.MouseEnabled and UIS.TouchEnabled then return end 

		local target = GetClosestTarget()
		if target then
			AimAtTarget(target)
		end
	end)
	print("Aimbot ENABLED")
end

local function StopAimbot()
	if Connection then
		Connection:Disconnect()
		Connection = nil
		print("Aimbot DISABLED")
	end
end

AimToggleValue:GetPropertyChangedSignal("Value"):Connect(function()
	Enabled = AimToggleValue.Value

	if Enabled then
		StartAimbot()
	else
		StopAimbot()
	end
end)

if Enabled then
	StartAimbot()
else
	StopAimbot()
end

print("FOV Aimbot ready - Controlled by Aim toggle!")
