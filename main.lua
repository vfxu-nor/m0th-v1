script.Parent.Frame.Active = true
script.Parent.Frame.Draggable = true

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local userId = player.UserId
local username = player.Name

local playerGui = player:WaitForChild("PlayerGui")

local UI = script.Parent
local Elements = UI.Frame.Elements.list

local Aim_toggle  = Elements["Aim-toggle"]
local Box_toggle  = Elements["box-toggle"]
local Lines_toggle = Elements["lines-toggle"]
local Speed_toggle = Elements["Speed-toggle"]

local Speed_box = Elements.Input.InputFrame.InputBox

local PlayerButton = Elements.PlayerButton
local PFP = PlayerButton.PFP
local NameLabel = PlayerButton.Title
local FPSLabel = PlayerButton.Fps
local PlayersLabel = PlayerButton.Players
local RegionLabel = PlayerButton.Server
local PingLabel = PlayerButton.Ping

local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

PingLabel.Text = "Ping: " .. math.floor(player:GetNetworkPing() * 1000) .. "ms"
RegionLabel.Text = "Server: " .. tostring(game.PlaceId)

local content, ready = Players:GetUserThumbnailAsync(
	userId,
	Enum.ThumbnailType.HeadShot,
	Enum.ThumbnailSize.Size420x420
)

if ready then
	PFP.Image = content
	NameLabel.Text = username
else
	PFP.Image = "rbxasset://textures/face.png"
	NameLabel.Text = "Loading..."
end

local lastFrame = tick()
local fps = 0

RunService.RenderStepped:Connect(function()
	local now = tick()
	fps = 1 / (now - lastFrame)
	lastFrame = now
end)

task.spawn(function()
	while true do
		FPSLabel.Text = "FPS: " .. math.floor(fps)
		PlayersLabel.Text = "Players: " .. #Players:GetPlayers()
		task.wait(1)
	end
end)

local function setupToggle(toggleUI, valueObjectOrBool, callback)
	local Switch = toggleUI.Switch
	local Indicator = Switch.Indicator
	local Interact = toggleUI.Interact

	local useValueObject = typeof(valueObjectOrBool) == "Instance"
	local state = useValueObject and valueObjectOrBool.Value or valueObjectOrBool

	-- force scripts to match existing values on startup
	if callback then
		callback(state)
	end

	local function updateVisual()
		local newPos = state and UDim2.new(1, -20, 0.5, 0) or UDim2.new(1, -40, 0.5, 0)
		local newColor = state and Color3.fromRGB(0,255,100) or Color3.fromRGB(30,30,30)

		TweenService:Create(Indicator, tweenInfo, {Position = newPos}):Play()
		TweenService:Create(Switch, tweenInfo, {BackgroundColor3 = newColor}):Play()
	end

	Interact.Activated:Connect(function()
		state = not state

		if useValueObject then
			valueObjectOrBool.Value = state
		end

		updateVisual()

		if callback then callback(state) end
	end)

	updateVisual()
end


setupToggle(Aim_toggle, false, function(state)
	UI.aim.Disabled = not state
end)

setupToggle(Box_toggle, UI.Box, function(state)
end)

setupToggle(Lines_toggle, UI.Lines, function(state)
end)

-- Speed Toggle
local speedToggleOn = false
setupToggle(Speed_toggle, speedToggleOn, function(state)
	speedToggleOn = state
end)

--=====================================================
-- SPEED INPUT + TOGGLE LOGIC
--=====================================================
Speed_box.FocusLost:Connect(function()
	if not speedToggleOn then return end  -- ignore if toggle is off

	local char = player.Character or player.CharacterAdded:Wait()
	local humanoid = char:WaitForChild("Humanoid")

	local speed = tonumber(Speed_box.Text)
	if speed then
		humanoid.WalkSpeed = speed
	end
end)
