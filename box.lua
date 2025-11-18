local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Box = script.Parent.Box

local ESP_Table = {} 

local function AddESP(Character)
	if not Character or Character == LocalPlayer.Character then return end
	if ESP_Table[Character] then return end 

	local highlight = Instance.new("Highlight")
	highlight.Parent = Character
	highlight.FillColor = Color3.fromRGB(255, 143, 143)   
	highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
	highlight.FillTransparency = 0.5
	highlight.OutlineTransparency = 0
	highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

	ESP_Table[Character] = highlight
end

local function RemoveESP(Character)
	if ESP_Table[Character] then
		ESP_Table[Character]:Destroy()
		ESP_Table[Character] = nil
	end
end

local function RemoveAllESP()
	for character, highlight in pairs(ESP_Table) do
		if highlight then highlight:Destroy() end
	end
	table.clear(ESP_Table)
end

local function OnCharacterAdded(Character)
	if Box.Value then
		AddESP(Character)
	end

	local humanoid = Character:WaitForChild("Humanoid")
	humanoid.Died:Connect(function()
		RemoveESP(Character)
	end)
end

local function OnPlayerAdded(Player)
	if Player == LocalPlayer then return end

	if Player.Character then
		OnCharacterAdded(Player.Character)
	end

	Player.CharacterAdded:Connect(OnCharacterAdded)
end

for _, plr in pairs(Players:GetPlayers()) do
	OnPlayerAdded(plr)
end

Players.PlayerAdded:Connect(OnPlayerAdded)

Players.PlayerRemoving:Connect(function(plr)
	if plr.Character then
		RemoveESP(plr.Character)
	end
end)

Box:GetPropertyChangedSignal("Value"):Connect(function()
	if Box.Value == true then
		for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
			if player ~= LocalPlayer and player.Character then
				AddESP(player.Character)
			end
		end
	else
		RemoveAllESP()
	end
end)
