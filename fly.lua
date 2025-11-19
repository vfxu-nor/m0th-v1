local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PG = game.Players.LocalPlayer.PlayerGui
script.Parent = PG:FindFirstChild("m0th") 

local m0thUI = player.PlayerGui:WaitForChild("m0th")
local FlyToggle = m0thUI:WaitForChild("Fly")


local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local mouse = player:GetMouse()

local FLY_SPEED = 30  
local flying = false
local bodyVelocity = nil
local bodyAngularVelocity = nil

local function createBodyMovers()
	local character = player.Character
	if not character then return end

	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart then return end

	if bodyVelocity then bodyVelocity:Destroy() end
	if bodyAngularVelocity then bodyAngularVelocity:Destroy() end

	bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
	bodyVelocity.Velocity = Vector3.new(0, 0, 0)
	bodyVelocity.Parent = rootPart

	bodyAngularVelocity = Instance.new("BodyAngularVelocity")
	bodyAngularVelocity.MaxTorque = Vector3.new(4000, 4000, 4000)
	bodyAngularVelocity.AngularVelocity = Vector3.new(0, 0, 0)
	bodyAngularVelocity.Parent = rootPart
end

local function startFly()
	if flying then return end
	flying = true

	createBodyMovers()
	local humanoid = player.Character:FindFirstChild("Humanoid")
	if humanoid then humanoid.PlatformStand = true end
end

local function stopFly()
	if not flying then return end
	flying = false

	if bodyVelocity then bodyVelocity:Destroy() end
	if bodyAngularVelocity then bodyAngularVelocity:Destroy() end

	local humanoid = player.Character:FindFirstChild("Humanoid")
	if humanoid then humanoid.PlatformStand = false end

end

RunService.Heartbeat:Connect(function()
	if not flying then return end

	local character = player.Character
	if not character then return end

	local rootPart = character:FindFirstChild("HumanoidRootPart")
	if not rootPart or not bodyVelocity then return end

	local camera = workspace.CurrentCamera
	local moveVector = Vector3.new(0, 0, 0)

	local forward = UserInputService:IsKeyDown(Enum.KeyCode.W)
	local backward = UserInputService:IsKeyDown(Enum.KeyCode.S)
	local left = UserInputService:IsKeyDown(Enum.KeyCode.A)
	local right = UserInputService:IsKeyDown(Enum.KeyCode.D)

	local up = UserInputService:IsKeyDown(Enum.KeyCode.Space)
	local down = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)

	local camCFrame = camera.CFrame
	local moveDir = Vector3.new(0, 0, 0)

	if forward then moveDir = moveDir + camCFrame.LookVector end
	if backward then moveDir = moveDir - camCFrame.LookVector end
	if left then moveDir = moveDir - camCFrame.RightVector end
	if right then moveDir = moveDir + camCFrame.RightVector end
	if up then moveDir = moveDir + Vector3.new(0, 1, 0) end
	if down then moveDir = moveDir - Vector3.new(0, 1, 0) end

	if moveDir.Magnitude > 0 then
		moveDir = moveDir.Unit * FLY_SPEED
	end

	bodyVelocity.Velocity = moveDir
end)

FlyToggle:GetPropertyChangedSignal("Value"):Connect(function()
	if FlyToggle.Value then
		startFly()
	else
		stopFly()
	end
end)

player.CharacterAdded:Connect(function()
	if flying then
		task.wait(1)
		createBodyMovers()
	end
end)
