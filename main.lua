local PG = game.Players.LocalPlayer.PlayerGui
script.Parent = PG:WaitForChild("m0th")  -- safer than FindFirstChild
print("MAAIN")

local UI = script.Parent
local Frame = UI.Frame

-- =============================================
-- 1. MOBILE-FRIENDLY DRAGGING (replaces Draggable = true)
-- =============================================
local UserInputService = game:GetService("UserInputService")

local dragging = false
local dragInput, dragStart, startPos

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        Frame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

Frame.Active = true  -- keep this (helps with input)

-- =============================================
-- 2. REST OF YOUR CODE (with mobile-proof toggle fix)
-- =============================================
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local userId = player.UserId
local username = player.Name

local Elements = Frame.Elements.list
local Aim_toggle    = Elements["Aim-toggle"]
local Box_toggle    = Elements["box-toggle"]
local Lines_toggle  = Elements["lines-toggle"]
local Speed_toggle  = Elements["Speed-toggle"]
local Speed_box     = Elements.Input.InputFrame.InputBox

local PlayerButton = Elements.PlayerButton
local PFP          = PlayerButton.PFP
local NameLabel    = PlayerButton.Title
local FPSLabel     = PlayerButton.Fps
local PlayersLabel = PlayerButton.Players
local RegionLabel  = PlayerButton.Server
local PingLabel    = PlayerButton.Ping

local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- Player info
PingLabel.Text = "Ping: " .. math.floor(player:GetNetworkPing() * 1000) .. "ms"
RegionLabel.Text = "Server: " .. game.PlaceId

local content, ready = Players:GetUserThumbnailAsync(userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
if ready then
    PFP.Image = content
    NameLabel.Text = username
else
    PFP.Image = "rbxasset://textures/face.png"
    NameLabel.Text = "Loading..."
end

-- FPS counter
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

-- =============================================
-- 3. MOBILE-PROOF TOGGLE FUNCTION (this fixes iPad clicks!)
-- =============================================
local function setupToggle(toggleUI, valueObjectOrBool, callback)
    local Switch     = toggleUI.Switch
    local Indicator  = Switch.Indicator
    local Interact   = toggleUI.Interact

    local useValueObject = typeof(valueObjectOrBool) == "Instance"
    local state = useValueObject and valueObjectOrBool.Value or valueObjectOrBool

    if callback then callback(state) end -- initial state

    local function updateVisual()
        local newPos = state and UDim2.new(1, -20, 0.5, 0) or UDim2.new(1, -40, 0.5, 0)
        local newColor = state and Color3.fromRGB(0,255,100) or Color3.fromRGB(30,30,30)
        TweenService:Create(Indicator, tweenInfo, {Position = newPos}):Play()
        TweenService:Create(Switch, tweenInfo, {BackgroundColor3 = newColor}):Play()
    end

    -- THIS IS THE FIX → InputBegan works perfectly on iPad & Android
    Interact.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            state = not state
            if useValueObject then
                valueObjectOrBool.Value = state
            end
            updateVisual()
            if callback then callback(state) end
        end
    end)

    updateVisual()
end

-- Apply toggles
setupToggle(Aim_toggle, false, function(state)
    UI.aim.Disabled = not state
end)

setupToggle(Box_toggle, UI.Box, function(state) end)
setupToggle(Lines_toggle, UI.Lines, function(state) end)

-- Speed toggle
local speedToggleOn = false
setupToggle(Speed_toggle, speedToggleOn, function(state)
    speedToggleOn = state
end)

-- Speed input (also improved for mobile)
Speed_box.FocusLost:Connect(function(enterPressed)
    if not speedToggleOn then return end

    local speed = tonumber(Speed_box.Text)
    if speed and speed > 0 then
        local char = player.Character or player.CharacterAdded:Wait()
        local humanoid = char:WaitForChild("Humanoid")
        humanoid.WalkSpeed = speed
    end
end)

print("m0th UI loaded – fully mobile/iPad compatible!")
