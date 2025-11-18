-- FOV Aimbot (AUTO-STARTS ON SCRIPT LOAD - No Keybind Needed!)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local Enabled = true  -- AUTO-ENABLED
local Connection = nil
local ESP_Enabled = {}
local FOV_ANGLE = math.rad(20)
local SMOOTHING = 0.2

local function GetClosestTarget()
	local closest, minDist = nil, math.huge
	local origin = Camera.CFrame.Position
	local direction = Camera.CFrame.LookVector

	for _, player in pairs(Players:GetPlayers()) do
		if player == LocalPlayer then continue end
		local char = player.Character
		if not char then continue end
		local hrp = char:FindFirstChild("HumanoidRootPart")
		local hum = char:FindFirstChild("Humanoid")
		if not hrp or not hum or hum.Health <= 0 then continue end

		local targetPos = hrp.Position
		local toTarget = (targetPos - origin)
		local angle = math.acos(direction:Dot(toTarget.Unit))

		if angle < FOV_ANGLE then
			local dist = toTarget.Magnitude
			if dist < minDist then
				minDist = dist
				closest = hrp
			end
		end
	end

	return closest
end

local function AimAtTarget(target)
	local predictedPos = target.Position + (target.AssemblyLinearVelocity * 0.13)
	local lookVector = (predictedPos - Camera.CFrame.Position).Unit
	local targetCFrame = CFrame.lookAt(Camera.CFrame.Position, Camera.CFrame.Position + lookVector)
	Camera.CFrame = Camera.CFrame:Lerp(targetCFrame, SMOOTHING)
end

local function UpdateAimbot()
	local target = GetClosestTarget()
	if target then
		AimAtTarget(target)
	end
end

Connection = RunService.RenderStepped:Connect(UpdateAimbot)
