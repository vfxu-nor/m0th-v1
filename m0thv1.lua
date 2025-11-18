local m0th = Instance.new("ScreenGui")
m0th.Name = "m0th"
m0th.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
m0th.Parent = game.StarterGui

local Frame = Instance.new("Frame")
Frame.Position = UDim2.new(0.29722702503204346, 0, 0.3091667592525482, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(0, 500, 0, 450)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.Parent = m0th

local Frame = Instance.new("Frame")
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(1, 0, 0, 41)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Frame.Parent = Frame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = Frame

local Frame = Instance.new("Frame")
Frame.Position = UDim2.new(0, 0, 0.353658527135849, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(1, 0, 0, 27)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Frame.Parent = Frame

local Frame = Instance.new("Frame")
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(1, 0, 0, 1)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Frame.Parent = Frame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = Frame

local Shadow = Instance.new("Frame")
Shadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.Name = "Shadow"
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.Size = UDim2.new(1, 35, 1, 35)
Shadow.ZIndex = 10
Shadow.BorderSizePixel = 0
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.Parent = Frame
Shadow:SetAttribute(InitialTransparency, 1)

local Image = Instance.new("ImageLabel")
Image.ImageColor3 = Color3.fromRGB(20, 20, 20)
Image.ImageTransparency = 0.4000000059604645
Image.BorderColor3 = Color3.fromRGB(27, 42, 53)
Image.Name = "Image"
Image.Size = UDim2.new(1.600000023841858, 0, 1.2999999523162842, 0)
Image.Visible = false
Image.AnchorPoint = Vector2.new(0.5, 0.5)
Image.Image = "rbxassetid://5587865193"
Image.BackgroundTransparency = 1
Image.Position = UDim2.new(0.5, 0, 0.5, 0)
Image.ImageContent = Content
Image.ZIndex = 0
Image.BorderSizePixel = 0
Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Image.Parent = Shadow
Image:SetAttribute(InitialTransparency, 0.5)

local Elements = Instance.new("Frame")
Elements.Name = "Elements"
Elements.BackgroundTransparency = 1
Elements.Position = UDim2.new(0, 0, 0.13555555045604706, 0)
Elements.BorderColor3 = Color3.fromRGB(0, 0, 0)
Elements.Size = UDim2.new(1, 0, -0.06875026971101761, 409)
Elements.BorderSizePixel = 0
Elements.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Elements.Parent = Frame

local list = Instance.new("ScrollingFrame")
list.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
list.Active = true
list.ScrollBarImageTransparency = 1
list.ScrollBarThickness = 0
list.BackgroundTransparency = 1
list.Name = "list"
list.Size = UDim2.new(1, 0, 1, 0)
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.BorderSizePixel = 0
list.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
list.Parent = Elements

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 6)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = list

local PlayerButton = Instance.new("Frame")
PlayerButton.Name = "PlayerButton"
PlayerButton.Position = UDim2.new(-0.006315788719803095, 0, 0.39556998014450073, 0)
PlayerButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
PlayerButton.Size = UDim2.new(0.5, 0, 0, 130)
PlayerButton.BorderSizePixel = 0
PlayerButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
PlayerButton.Parent = list

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = PlayerButton

local Title = Instance.new("TextLabel")
Title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.ZIndex = 3
Title.TextSize = 14
Title.Size = UDim2.new(0, 237, 0, 14)
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.Text = "Username"
Title.Name = "Title"
Title.TextWrapped = true
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Position = UDim2.new(0, 138, 0, 114)
Title.BorderSizePixel = 0
Title.TextScaled = true
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = PlayerButton

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(50, 50, 50)
UIStroke.Parent = PlayerButton

local PFP = Instance.new("ImageLabel")
PFP.BorderColor3 = Color3.fromRGB(27, 42, 53)
PFP.AnchorPoint = Vector2.new(0, 0.5)
PFP.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
PFP.BackgroundTransparency = 1
PFP.Position = UDim2.new(0.00800000037997961, 10, 0.42307692766189575, 0)
PFP.ImageContent = Content
PFP.Name = "PFP"
PFP.Size = UDim2.new(0, 85, 0, 85)
PFP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PFP.Parent = PlayerButton

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(2, 0)
UICorner.Parent = PFP

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 3.200000047683716
UIStroke.Color = Color3.fromRGB(84, 84, 84)
UIStroke.Parent = PFP

local Players = Instance.new("TextLabel")
Players.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Players.AnchorPoint = Vector2.new(0.5, 0.5)
Players.ZIndex = 3
Players.TextSize = 14
Players.Size = UDim2.new(0, 126, 0, 14)
Players.TextColor3 = Color3.fromRGB(240, 240, 240)
Players.BorderColor3 = Color3.fromRGB(27, 42, 53)
Players.Text = "Players"
Players.Name = "Players"
Players.TextWrapped = true
Players.BackgroundTransparency = 1
Players.TextXAlignment = Enum.TextXAlignment.Left
Players.Position = UDim2.new(0, 174, 0, 19)
Players.BorderSizePixel = 0
Players.TextScaled = true
Players.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Players.Parent = PlayerButton

local Server = Instance.new("TextLabel")
Server.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Server.AnchorPoint = Vector2.new(0.5, 0.5)
Server.ZIndex = 3
Server.TextSize = 14
Server.Size = UDim2.new(0, 126, 0, 14)
Server.TextColor3 = Color3.fromRGB(240, 240, 240)
Server.BorderColor3 = Color3.fromRGB(27, 42, 53)
Server.Text = "Server"
Server.Name = "Server"
Server.TextWrapped = true
Server.BackgroundTransparency = 1
Server.TextXAlignment = Enum.TextXAlignment.Left
Server.Position = UDim2.new(0, 174, 0, 42)
Server.BorderSizePixel = 0
Server.TextScaled = true
Server.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Server.Parent = PlayerButton

local Fps = Instance.new("TextLabel")
Fps.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Fps.AnchorPoint = Vector2.new(0.5, 0.5)
Fps.ZIndex = 3
Fps.TextSize = 14
Fps.Size = UDim2.new(0, 126, 0, 14)
Fps.TextColor3 = Color3.fromRGB(240, 240, 240)
Fps.BorderColor3 = Color3.fromRGB(27, 42, 53)
Fps.Text = "Fps"
Fps.Name = "Fps"
Fps.TextWrapped = true
Fps.BackgroundTransparency = 1
Fps.TextXAlignment = Enum.TextXAlignment.Left
Fps.Position = UDim2.new(0, 174, 0, 65)
Fps.BorderSizePixel = 0
Fps.TextScaled = true
Fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fps.Parent = PlayerButton

local Ping = Instance.new("TextLabel")
Ping.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Ping.AnchorPoint = Vector2.new(0.5, 0.5)
Ping.ZIndex = 3
Ping.TextSize = 14
Ping.Size = UDim2.new(0, 126, 0, 14)
Ping.TextColor3 = Color3.fromRGB(240, 240, 240)
Ping.BorderColor3 = Color3.fromRGB(27, 42, 53)
Ping.Text = "Ping"
Ping.Name = "Ping"
Ping.TextWrapped = true
Ping.BackgroundTransparency = 1
Ping.TextXAlignment = Enum.TextXAlignment.Left
Ping.Position = UDim2.new(0, 174, 0, 90)
Ping.BorderSizePixel = 0
Ping.TextScaled = true
Ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ping.Parent = PlayerButton

local Aim-toggle = Instance.new("Frame")
Aim-toggle.Name = "Aim-toggle"
Aim-toggle.Position = UDim2.new(0.10593220591545105, 0, 0, 0)
Aim-toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Aim-toggle.Size = UDim2.new(0, 465, 0, 40)
Aim-toggle.BorderSizePixel = 0
Aim-toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Aim-toggle.Parent = list

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(50, 50, 50)
UIStroke.Parent = Aim-toggle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Aim-toggle

local Lock = Instance.new("Frame")
Lock.BorderColor3 = Color3.fromRGB(27, 42, 53)
Lock.AnchorPoint = Vector2.new(1, 0)
Lock.Name = "Lock"
Lock.BackgroundTransparency = 1
Lock.Position = UDim2.new(1, 0, 0, 0)
Lock.Size = UDim2.new(1, 0, 1, 0)
Lock.ZIndex = 5
Lock.BorderSizePixel = 0
Lock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Lock.Parent = Aim-toggle

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0.32499998807907104),
	NumberSequenceKeypoint.new(0.5, 0.10000000149011612),
	NumberSequenceKeypoint.new(1, 0.32499998807907104)
}
UIGradient.Parent = Lock

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Lock

local Reason = Instance.new("TextLabel")
Reason.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Reason.TextTransparency = 1
Reason.AnchorPoint = Vector2.new(0.5, 0.5)
Reason.ZIndex = 5
Reason.TextSize = 13
Reason.Size = UDim2.new(0, 0, 1, 0)
Reason.AutoLocalize = false
Reason.TextColor3 = Color3.fromRGB(175, 175, 175)
Reason.BorderColor3 = Color3.fromRGB(27, 42, 53)
Reason.Text = "Locked Reason"
Reason.BackgroundTransparency = 1
Reason.Position = UDim2.new(0.5, 0, 0.5, 0)
Reason.Name = "Reason"
Reason.AutomaticSize = Enum.AutomaticSize.X
Reason.BorderSizePixel = 0
Reason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reason.Parent = Lock

local Icon = Instance.new("ImageLabel")
Icon.ImageColor3 = Color3.fromRGB(175, 175, 175)
Icon.ImageTransparency = 1
Icon.BorderColor3 = Color3.fromRGB(27, 42, 53)
Icon.Name = "Icon"
Icon.Size = UDim2.new(0, 16, 0, 16)
Icon.AnchorPoint = Vector2.new(0, 0.5)
Icon.Image = "rbxassetid://5743022869"
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(1, 20, 0.5, 0)
Icon.ImageContent = Content
Icon.ZIndex = 5
Icon.BorderSizePixel = 0
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.Parent = Reason

local Switch = Instance.new("Frame")
Switch.AnchorPoint = Vector2.new(1, 0.5)
Switch.Name = "Switch"
Switch.Position = UDim2.new(1, -10, 0, 20)
Switch.BorderColor3 = Color3.fromRGB(27, 42, 53)
Switch.Size = UDim2.new(0, 43, 0, 21)
Switch.BorderSizePixel = 0
Switch.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Switch.Parent = Aim-toggle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Switch

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(65, 65, 65)
UIStroke.Parent = Switch

local Shadow = Instance.new("ImageLabel")
Shadow.ImageColor3 = Color3.fromRGB(20, 20, 20)
Shadow.ImageTransparency = 0.6000000238418579
Shadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow.Name = "Shadow"
Shadow.Size = UDim2.new(1, 2, 1, 2)
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.Image = "rbxassetid://3602733521"
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.ImageContent = Content
Shadow.ZIndex = 3
Shadow.BorderSizePixel = 0
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.Parent = Switch

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Shadow

local Indicator = Instance.new("Frame")
Indicator.AnchorPoint = Vector2.new(0, 0.5)
Indicator.Name = "Indicator"
Indicator.Position = UDim2.new(1, -40, 0.5, 0)
Indicator.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator.Size = UDim2.new(0, 17, 0, 17)
Indicator.BorderSizePixel = 0
Indicator.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Indicator.Parent = Switch

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Indicator

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 1.2000000476837158
UIStroke.Color = Color3.fromRGB(125, 125, 125)
UIStroke.Parent = Indicator

local Interact = Instance.new("TextButton")
Interact.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Interact.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact.TextTransparency = 1
Interact.Text = ""
Interact.Name = "Interact"
Interact.BorderColor3 = Color3.fromRGB(27, 42, 53)
Interact.AnchorPoint = Vector2.new(0.5, 0.5)
Interact.Size = UDim2.new(1, 0, 1, 0)
Interact.BackgroundTransparency = 1
Interact.Position = UDim2.new(0.5, 0, 0.5, 0)
Interact.BorderSizePixel = 0
Interact.ZIndex = 5
Interact.TextSize = 14
Interact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact.Parent = Aim-toggle

local Title = Instance.new("TextLabel")
Title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Title.AnchorPoint = Vector2.new(1, 0.5)
Title.TextSize = 14
Title.Size = UDim2.new(0, 385, 0, 14)
Title.AutoLocalize = false
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.Text = "Aimbot"
Title.Name = "Title"
Title.TextWrapped = true
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Position = UDim2.new(1, -63, 0.5, 0)
Title.BorderSizePixel = 0
Title.TextScaled = true
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = Aim-toggle

local Placeholder = Instance.new("Frame")
Placeholder.LayoutOrder = 999999999
Placeholder.BackgroundTransparency = 1
Placeholder.Name = "Placeholder"
Placeholder.BorderColor3 = Color3.fromRGB(27, 42, 53)
Placeholder.Size = UDim2.new(0, 1, 0, 1)
Placeholder.BorderSizePixel = 0
Placeholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Placeholder.Parent = list

local Placeholder = Instance.new("Frame")
Placeholder.LayoutOrder = -1
Placeholder.BackgroundTransparency = 1
Placeholder.Name = "Placeholder"
Placeholder.BorderColor3 = Color3.fromRGB(27, 42, 53)
Placeholder.Size = UDim2.new(0, 1, 0, 1)
Placeholder.BorderSizePixel = 0
Placeholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Placeholder.Parent = list

local box-toggle = Instance.new("Frame")
box-toggle.Name = "box-toggle"
box-toggle.Position = UDim2.new(0.10593220591545105, 0, 0, 0)
box-toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
box-toggle.Size = UDim2.new(0, 465, 0, 40)
box-toggle.BorderSizePixel = 0
box-toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
box-toggle.Parent = list

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(50, 50, 50)
UIStroke.Parent = box-toggle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = box-toggle

local Lock = Instance.new("Frame")
Lock.BorderColor3 = Color3.fromRGB(27, 42, 53)
Lock.AnchorPoint = Vector2.new(1, 0)
Lock.Name = "Lock"
Lock.BackgroundTransparency = 1
Lock.Position = UDim2.new(1, 0, 0, 0)
Lock.Size = UDim2.new(1, 0, 1, 0)
Lock.ZIndex = 5
Lock.BorderSizePixel = 0
Lock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Lock.Parent = box-toggle

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0.32499998807907104),
	NumberSequenceKeypoint.new(0.5, 0.10000000149011612),
	NumberSequenceKeypoint.new(1, 0.32499998807907104)
}
UIGradient.Parent = Lock

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Lock

local Reason = Instance.new("TextLabel")
Reason.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Reason.TextTransparency = 1
Reason.AnchorPoint = Vector2.new(0.5, 0.5)
Reason.ZIndex = 5
Reason.TextSize = 13
Reason.Size = UDim2.new(0, 0, 1, 0)
Reason.AutoLocalize = false
Reason.TextColor3 = Color3.fromRGB(175, 175, 175)
Reason.BorderColor3 = Color3.fromRGB(27, 42, 53)
Reason.Text = "Locked Reason"
Reason.BackgroundTransparency = 1
Reason.Position = UDim2.new(0.5, 0, 0.5, 0)
Reason.Name = "Reason"
Reason.AutomaticSize = Enum.AutomaticSize.X
Reason.BorderSizePixel = 0
Reason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reason.Parent = Lock

local Icon = Instance.new("ImageLabel")
Icon.ImageColor3 = Color3.fromRGB(175, 175, 175)
Icon.ImageTransparency = 1
Icon.BorderColor3 = Color3.fromRGB(27, 42, 53)
Icon.Name = "Icon"
Icon.Size = UDim2.new(0, 16, 0, 16)
Icon.AnchorPoint = Vector2.new(0, 0.5)
Icon.Image = "rbxassetid://5743022869"
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(1, 20, 0.5, 0)
Icon.ImageContent = Content
Icon.ZIndex = 5
Icon.BorderSizePixel = 0
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.Parent = Reason

local Switch = Instance.new("Frame")
Switch.AnchorPoint = Vector2.new(1, 0.5)
Switch.Name = "Switch"
Switch.Position = UDim2.new(1, -10, 0, 20)
Switch.BorderColor3 = Color3.fromRGB(27, 42, 53)
Switch.Size = UDim2.new(0, 43, 0, 21)
Switch.BorderSizePixel = 0
Switch.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Switch.Parent = box-toggle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Switch

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(65, 65, 65)
UIStroke.Parent = Switch

local Shadow = Instance.new("ImageLabel")
Shadow.ImageColor3 = Color3.fromRGB(20, 20, 20)
Shadow.ImageTransparency = 0.6000000238418579
Shadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow.Name = "Shadow"
Shadow.Size = UDim2.new(1, 2, 1, 2)
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.Image = "rbxassetid://3602733521"
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.ImageContent = Content
Shadow.ZIndex = 3
Shadow.BorderSizePixel = 0
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.Parent = Switch

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Shadow

local Indicator = Instance.new("Frame")
Indicator.AnchorPoint = Vector2.new(0, 0.5)
Indicator.Name = "Indicator"
Indicator.Position = UDim2.new(1, -40, 0.5, 0)
Indicator.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator.Size = UDim2.new(0, 17, 0, 17)
Indicator.BorderSizePixel = 0
Indicator.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Indicator.Parent = Switch

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Indicator

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 1.2000000476837158
UIStroke.Color = Color3.fromRGB(125, 125, 125)
UIStroke.Parent = Indicator

local Interact = Instance.new("TextButton")
Interact.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Interact.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact.TextTransparency = 1
Interact.Text = ""
Interact.Name = "Interact"
Interact.BorderColor3 = Color3.fromRGB(27, 42, 53)
Interact.AnchorPoint = Vector2.new(0.5, 0.5)
Interact.Size = UDim2.new(1, 0, 1, 0)
Interact.BackgroundTransparency = 1
Interact.Position = UDim2.new(0.5, 0, 0.5, 0)
Interact.BorderSizePixel = 0
Interact.ZIndex = 5
Interact.TextSize = 14
Interact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact.Parent = box-toggle

local Title = Instance.new("TextLabel")
Title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Title.AnchorPoint = Vector2.new(1, 0.5)
Title.TextSize = 14
Title.Size = UDim2.new(0, 385, 0, 14)
Title.AutoLocalize = false
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.Text = "Box esp"
Title.Name = "Title"
Title.TextWrapped = true
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Position = UDim2.new(1, -63, 0.5, 0)
Title.BorderSizePixel = 0
Title.TextScaled = true
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = box-toggle

local lines-toggle = Instance.new("Frame")
lines-toggle.Name = "lines-toggle"
lines-toggle.Position = UDim2.new(0.10593220591545105, 0, 0, 0)
lines-toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
lines-toggle.Size = UDim2.new(0, 465, 0, 40)
lines-toggle.BorderSizePixel = 0
lines-toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
lines-toggle.Parent = list

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(50, 50, 50)
UIStroke.Parent = lines-toggle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = lines-toggle

local Lock = Instance.new("Frame")
Lock.BorderColor3 = Color3.fromRGB(27, 42, 53)
Lock.AnchorPoint = Vector2.new(1, 0)
Lock.Name = "Lock"
Lock.BackgroundTransparency = 1
Lock.Position = UDim2.new(1, 0, 0, 0)
Lock.Size = UDim2.new(1, 0, 1, 0)
Lock.ZIndex = 5
Lock.BorderSizePixel = 0
Lock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Lock.Parent = lines-toggle

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0.32499998807907104),
	NumberSequenceKeypoint.new(0.5, 0.10000000149011612),
	NumberSequenceKeypoint.new(1, 0.32499998807907104)
}
UIGradient.Parent = Lock

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Lock

local Reason = Instance.new("TextLabel")
Reason.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Reason.TextTransparency = 1
Reason.AnchorPoint = Vector2.new(0.5, 0.5)
Reason.ZIndex = 5
Reason.TextSize = 13
Reason.Size = UDim2.new(0, 0, 1, 0)
Reason.AutoLocalize = false
Reason.TextColor3 = Color3.fromRGB(175, 175, 175)
Reason.BorderColor3 = Color3.fromRGB(27, 42, 53)
Reason.Text = "Locked Reason"
Reason.BackgroundTransparency = 1
Reason.Position = UDim2.new(0.5, 0, 0.5, 0)
Reason.Name = "Reason"
Reason.AutomaticSize = Enum.AutomaticSize.X
Reason.BorderSizePixel = 0
Reason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reason.Parent = Lock

local Icon = Instance.new("ImageLabel")
Icon.ImageColor3 = Color3.fromRGB(175, 175, 175)
Icon.ImageTransparency = 1
Icon.BorderColor3 = Color3.fromRGB(27, 42, 53)
Icon.Name = "Icon"
Icon.Size = UDim2.new(0, 16, 0, 16)
Icon.AnchorPoint = Vector2.new(0, 0.5)
Icon.Image = "rbxassetid://5743022869"
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(1, 20, 0.5, 0)
Icon.ImageContent = Content
Icon.ZIndex = 5
Icon.BorderSizePixel = 0
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.Parent = Reason

local Switch = Instance.new("Frame")
Switch.AnchorPoint = Vector2.new(1, 0.5)
Switch.Name = "Switch"
Switch.Position = UDim2.new(1, -10, 0, 20)
Switch.BorderColor3 = Color3.fromRGB(27, 42, 53)
Switch.Size = UDim2.new(0, 43, 0, 21)
Switch.BorderSizePixel = 0
Switch.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Switch.Parent = lines-toggle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Switch

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(65, 65, 65)
UIStroke.Parent = Switch

local Shadow = Instance.new("ImageLabel")
Shadow.ImageColor3 = Color3.fromRGB(20, 20, 20)
Shadow.ImageTransparency = 0.6000000238418579
Shadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow.Name = "Shadow"
Shadow.Size = UDim2.new(1, 2, 1, 2)
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.Image = "rbxassetid://3602733521"
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.ImageContent = Content
Shadow.ZIndex = 3
Shadow.BorderSizePixel = 0
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.Parent = Switch

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Shadow

local Indicator = Instance.new("Frame")
Indicator.AnchorPoint = Vector2.new(0, 0.5)
Indicator.Name = "Indicator"
Indicator.Position = UDim2.new(1, -40, 0.5, 0)
Indicator.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator.Size = UDim2.new(0, 17, 0, 17)
Indicator.BorderSizePixel = 0
Indicator.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Indicator.Parent = Switch

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Indicator

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 1.2000000476837158
UIStroke.Color = Color3.fromRGB(125, 125, 125)
UIStroke.Parent = Indicator

local Interact = Instance.new("TextButton")
Interact.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Interact.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact.TextTransparency = 1
Interact.Text = ""
Interact.Name = "Interact"
Interact.BorderColor3 = Color3.fromRGB(27, 42, 53)
Interact.AnchorPoint = Vector2.new(0.5, 0.5)
Interact.Size = UDim2.new(1, 0, 1, 0)
Interact.BackgroundTransparency = 1
Interact.Position = UDim2.new(0.5, 0, 0.5, 0)
Interact.BorderSizePixel = 0
Interact.ZIndex = 5
Interact.TextSize = 14
Interact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact.Parent = lines-toggle

local Title = Instance.new("TextLabel")
Title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Title.AnchorPoint = Vector2.new(1, 0.5)
Title.TextSize = 14
Title.Size = UDim2.new(0, 385, 0, 14)
Title.AutoLocalize = false
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.Text = "Line esp"
Title.Name = "Title"
Title.TextWrapped = true
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Position = UDim2.new(1, -63, 0.5, 0)
Title.BorderSizePixel = 0
Title.TextScaled = true
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = lines-toggle

local Speed-toggle = Instance.new("Frame")
Speed-toggle.Name = "Speed-toggle"
Speed-toggle.Position = UDim2.new(0.10593220591545105, 0, 0, 0)
Speed-toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Speed-toggle.Size = UDim2.new(0, 465, 0, 40)
Speed-toggle.BorderSizePixel = 0
Speed-toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Speed-toggle.Parent = list

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(50, 50, 50)
UIStroke.Parent = Speed-toggle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Speed-toggle

local Lock = Instance.new("Frame")
Lock.BorderColor3 = Color3.fromRGB(27, 42, 53)
Lock.AnchorPoint = Vector2.new(1, 0)
Lock.Name = "Lock"
Lock.BackgroundTransparency = 1
Lock.Position = UDim2.new(1, 0, 0, 0)
Lock.Size = UDim2.new(1, 0, 1, 0)
Lock.ZIndex = 5
Lock.BorderSizePixel = 0
Lock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Lock.Parent = Speed-toggle

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0.32499998807907104),
	NumberSequenceKeypoint.new(0.5, 0.10000000149011612),
	NumberSequenceKeypoint.new(1, 0.32499998807907104)
}
UIGradient.Parent = Lock

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Lock

local Reason = Instance.new("TextLabel")
Reason.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Reason.TextTransparency = 1
Reason.AnchorPoint = Vector2.new(0.5, 0.5)
Reason.ZIndex = 5
Reason.TextSize = 13
Reason.Size = UDim2.new(0, 0, 1, 0)
Reason.AutoLocalize = false
Reason.TextColor3 = Color3.fromRGB(175, 175, 175)
Reason.BorderColor3 = Color3.fromRGB(27, 42, 53)
Reason.Text = "Locked Reason"
Reason.BackgroundTransparency = 1
Reason.Position = UDim2.new(0.5, 0, 0.5, 0)
Reason.Name = "Reason"
Reason.AutomaticSize = Enum.AutomaticSize.X
Reason.BorderSizePixel = 0
Reason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reason.Parent = Lock

local Icon = Instance.new("ImageLabel")
Icon.ImageColor3 = Color3.fromRGB(175, 175, 175)
Icon.ImageTransparency = 1
Icon.BorderColor3 = Color3.fromRGB(27, 42, 53)
Icon.Name = "Icon"
Icon.Size = UDim2.new(0, 16, 0, 16)
Icon.AnchorPoint = Vector2.new(0, 0.5)
Icon.Image = "rbxassetid://5743022869"
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(1, 20, 0.5, 0)
Icon.ImageContent = Content
Icon.ZIndex = 5
Icon.BorderSizePixel = 0
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.Parent = Reason

local Switch = Instance.new("Frame")
Switch.AnchorPoint = Vector2.new(1, 0.5)
Switch.Name = "Switch"
Switch.Position = UDim2.new(1, -10, 0, 20)
Switch.BorderColor3 = Color3.fromRGB(27, 42, 53)
Switch.Size = UDim2.new(0, 43, 0, 21)
Switch.BorderSizePixel = 0
Switch.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Switch.Parent = Speed-toggle

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Switch

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(65, 65, 65)
UIStroke.Parent = Switch

local Shadow = Instance.new("ImageLabel")
Shadow.ImageColor3 = Color3.fromRGB(20, 20, 20)
Shadow.ImageTransparency = 0.6000000238418579
Shadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow.Name = "Shadow"
Shadow.Size = UDim2.new(1, 2, 1, 2)
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.Image = "rbxassetid://3602733521"
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.ImageContent = Content
Shadow.ZIndex = 3
Shadow.BorderSizePixel = 0
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.Parent = Switch

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Shadow

local Indicator = Instance.new("Frame")
Indicator.AnchorPoint = Vector2.new(0, 0.5)
Indicator.Name = "Indicator"
Indicator.Position = UDim2.new(1, -40, 0.5, 0)
Indicator.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator.Size = UDim2.new(0, 17, 0, 17)
Indicator.BorderSizePixel = 0
Indicator.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Indicator.Parent = Switch

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Indicator

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 1.2000000476837158
UIStroke.Color = Color3.fromRGB(125, 125, 125)
UIStroke.Parent = Indicator

local Interact = Instance.new("TextButton")
Interact.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Interact.TextColor3 = Color3.fromRGB(0, 0, 0)
Interact.TextTransparency = 1
Interact.Text = ""
Interact.Name = "Interact"
Interact.BorderColor3 = Color3.fromRGB(27, 42, 53)
Interact.AnchorPoint = Vector2.new(0.5, 0.5)
Interact.Size = UDim2.new(1, 0, 1, 0)
Interact.BackgroundTransparency = 1
Interact.Position = UDim2.new(0.5, 0, 0.5, 0)
Interact.BorderSizePixel = 0
Interact.ZIndex = 5
Interact.TextSize = 14
Interact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interact.Parent = Speed-toggle

local Title = Instance.new("TextLabel")
Title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Title.AnchorPoint = Vector2.new(1, 0.5)
Title.TextSize = 14
Title.Size = UDim2.new(0, 385, 0, 14)
Title.AutoLocalize = false
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.Text = "Speed toggle"
Title.Name = "Title"
Title.TextWrapped = true
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Position = UDim2.new(1, -63, 0.5, 0)
Title.BorderSizePixel = 0
Title.TextScaled = true
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = Speed-toggle

local Input = Instance.new("Frame")
Input.LayoutOrder = 1
Input.ClipsDescendants = true
Input.BorderColor3 = Color3.fromRGB(27, 42, 53)
Input.Name = "Input"
Input.Position = UDim2.new(0.010526316240429878, 0, 0.669211208820343, 0)
Input.Size = UDim2.new(0, 465, 0, 40)
Input.BorderSizePixel = 0
Input.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Input.Parent = list
Input:SetAttribute(Input, "")

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Input

local Title = Instance.new("TextLabel")
Title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.TextSize = 14
Title.Size = UDim2.new(0, 200, 0, 14)
Title.AutoLocalize = false
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.Text = "Speed Value"
Title.Name = "Title"
Title.TextWrapped = true
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Position = UDim2.new(0, 115, 0.5, 0)
Title.BorderSizePixel = 0
Title.TextScaled = true
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = Input

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(50, 50, 50)
UIStroke.Parent = Input

local InputFrame = Instance.new("Frame")
InputFrame.AnchorPoint = Vector2.new(1, 0.5)
InputFrame.Name = "InputFrame"
InputFrame.Position = UDim2.new(0, 458, 0, 20)
InputFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
InputFrame.Size = UDim2.new(0, 120, 0, 30)
InputFrame.BorderSizePixel = 0
InputFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
InputFrame.Parent = Input

local InputBox = Instance.new("TextBox")
InputBox.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
InputBox.TextColor3 = Color3.fromRGB(240, 240, 240)
InputBox.BorderColor3 = Color3.fromRGB(27, 42, 53)
InputBox.Text = ""
InputBox.Name = "InputBox"
InputBox.Size = UDim2.new(1, -15, 0, 14)
InputBox.AnchorPoint = Vector2.new(0.5, 0.5)
InputBox.BorderSizePixel = 0
InputBox.BackgroundTransparency = 1
InputBox.Position = UDim2.new(0.5, 0, 0.5, 0)
InputBox.ClearTextOnFocus = false
InputBox.PlaceholderText = "16"
InputBox.TextSize = 14
InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox.Parent = InputFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(65, 65, 65)
UIStroke.Parent = InputFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = InputFrame

local Lock = Instance.new("Frame")
Lock.BorderColor3 = Color3.fromRGB(27, 42, 53)
Lock.AnchorPoint = Vector2.new(1, 0)
Lock.Name = "Lock"
Lock.BackgroundTransparency = 1
Lock.Position = UDim2.new(1, 0, 0, 0)
Lock.Size = UDim2.new(1, 0, 1, 0)
Lock.ZIndex = 5
Lock.BorderSizePixel = 0
Lock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Lock.Parent = Input

local UIGradient = Instance.new("UIGradient")
UIGradient.Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0.32499998807907104),
	NumberSequenceKeypoint.new(0.5, 0.10000000149011612),
	NumberSequenceKeypoint.new(1, 0.32499998807907104)
}
UIGradient.Parent = Lock

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Lock

local Reason = Instance.new("TextLabel")
Reason.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Reason.TextTransparency = 1
Reason.AnchorPoint = Vector2.new(0.5, 0.5)
Reason.ZIndex = 5
Reason.TextSize = 13
Reason.Size = UDim2.new(0, 0, 1, 0)
Reason.AutoLocalize = false
Reason.TextColor3 = Color3.fromRGB(175, 175, 175)
Reason.BorderColor3 = Color3.fromRGB(27, 42, 53)
Reason.Text = "Locked Reason"
Reason.BackgroundTransparency = 1
Reason.Position = UDim2.new(0.5, 0, 0.5, 0)
Reason.Name = "Reason"
Reason.AutomaticSize = Enum.AutomaticSize.X
Reason.BorderSizePixel = 0
Reason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reason.Parent = Lock

local Icon = Instance.new("ImageLabel")
Icon.ImageColor3 = Color3.fromRGB(175, 175, 175)
Icon.ImageTransparency = 1
Icon.BorderColor3 = Color3.fromRGB(27, 42, 53)
Icon.Name = "Icon"
Icon.Size = UDim2.new(0, 16, 0, 16)
Icon.AnchorPoint = Vector2.new(0, 0.5)
Icon.Image = "rbxassetid://5743022869"
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(1, 20, 0.5, 0)
Icon.ImageContent = Content
Icon.ZIndex = 5
Icon.BorderSizePixel = 0
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.Parent = Reason

local box = Instance.new("LocalScript")
box.Name = "box"
box.Source = "local Players = game:GetService("Players")
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
	if Bo.Value == true then
		for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
			if player ~= LocalPlayer and player.Character then
				AddESP(player.Character)
			end
		end
	else
		RemoveAllESP()
	end
end)"
box.Parent = m0th

local line = Instance.new("LocalScript")
line.Name = "line"
line.Source = "local Players = game:GetService("Players")
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
"
line.Parent = m0th

local aim = Instance.new("LocalScript")
aim.Name = "aim"
aim.Disabled = true
aim.Source = "-- FOV Aimbot (AUTO-STARTS ON SCRIPT LOAD - No Keybind Needed!)
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
"
aim.Parent = m0th

local Main = Instance.new("LocalScript")
Main.Name = "Main"
Main.Source = "script.Parent.Frame.Active = true
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
"
Main.Parent = m0th

local Lines = Instance.new("BoolValue")
Lines.Name = "Lines"
Lines.Parent = m0th

local Box = Instance.new("BoolValue")
Box.Name = "Box"
Box.Parent = m0th

