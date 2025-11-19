local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

local PG = player.PlayerGui
local m0thUI = PG:WaitForChild("m0th")
script.Parent = m0thUI
local SpinnerVertToggle = m0thUI:WaitForChild("Spinner-Vert") 

local SPIN_SPEED = 5000  
local SPIN_CLOCKWISE = true

local connection = nil
local character = nil
local rootPart = nil
local humanoid = nil

local function StartSpin()
	if connection then return end 

	character = player.Character
	if not character then return end

	rootPart = character:WaitForChild("HumanoidRootPart")
	humanoid = character:WaitForChild("Humanoid")

	humanoid.PlatformStand = true
	rootPart.CanCollide = false

	connection = RunService.Heartbeat:Connect(function(deltaTime)
		if rootPart and rootPart.Parent and SpinnerVertToggle.Value then
			local spinRad = math.rad(SPIN_SPEED * deltaTime)
			if not SPIN_CLOCKWISE then
				spinRad = -spinRad
			end
			rootPart.CFrame = rootPart.CFrame * CFrame.Angles(0, spinRad, 0)
		end
	end)

end

local function StopSpin()
	if connection then
		connection:Disconnect()
		connection = nil

		if humanoid then
			humanoid.PlatformStand = false
		end
		if rootPart then
			rootPart.CanCollide = true
		end
	end
end

SpinnerVertToggle:GetPropertyChangedSignal("Value"):Connect(function()
	if SpinnerVertToggle.Value then
		StartSpin()
	else
		StopSpin()
	end
end)

player.CharacterAdded:Connect(function(newChar)
	character = newChar
	if SpinnerVertToggle.Value then
		task.wait(1)  
		StartSpin()
	end
end)

if SpinnerVertToggle.Value then
	StartSpin()
end
