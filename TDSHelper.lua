-- First Fate --
local HoverUI = Instance.new("ScreenGui")
HoverUI.Name = "HoverUI"

local Frame = Instance.new("Frame")
Frame.Name = "1"
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Parent = HoverUI

local Top = Instance.new("Frame")
Top.Name = "Top"
Top.Size = UDim2.new(1, 0, 0, 1)
Top.BorderSizePixel = 0
Top.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
Top.Parent = Frame

local Right = Instance.new("Frame")
Right.Name = "Right"
Right.AnchorPoint = Vector2.new(1, 0)
Right.Size = UDim2.new(0, 1, 1, 0)
Right.Position = UDim2.new(1, 0, 0, 0)
Right.BorderSizePixel = 0
Right.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
Right.Parent = Frame

local Left = Instance.new("Frame")
Left.Name = "Left"
Left.Size = UDim2.new(0, 1, 1, 0)
Left.BorderSizePixel = 0
Left.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
Left.Parent = Frame

local Bottom = Instance.new("Frame")
Bottom.Name = "Bottom"
Bottom.AnchorPoint = Vector2.new(0, 1)
Bottom.Size = UDim2.new(1, 0, 0, 1)
Bottom.Position = UDim2.new(0, 0, 1, 0)
Bottom.BorderSizePixel = 0
Bottom.BackgroundColor3 = Color3.fromRGB(178, 178, 178)
Bottom.Parent = Frame

HoverUI.Parent = game:GetService("CoreGui")










-- Second Fate --
local MainGui = Instance.new("ScreenGui")
MainGui.Name = "MainGui"
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local LabelTS = Instance.new("TextLabel")
LabelTS.Name = "LabelTS"
LabelTS.Size = UDim2.new(0.1940994, 0, 0.0443131, 0)
LabelTS.BackgroundTransparency = 1
LabelTS.Position = UDim2.new(0.0015528, 0, 0.3559823, 0)
LabelTS.BorderSizePixel = 0
LabelTS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LabelTS.FontSize = Enum.FontSize.Size14
LabelTS.TextStrokeTransparency = 0
LabelTS.TextSize = 14
LabelTS.TextColor3 = Color3.fromRGB(234, 255, 0)
LabelTS.Text = "0 Troops Selected"
LabelTS.TextWrap = true
LabelTS.Font = Enum.Font.SourceSans
LabelTS.TextWrapped = true
LabelTS.TextScaled = true
LabelTS.Parent = MainGui

local ButtonUpgrade = Instance.new("TextButton")
ButtonUpgrade.Name = "ButtonUpgrade"
ButtonUpgrade.Size = UDim2.new(0.1948758, 0, 0.0443131, 0)
ButtonUpgrade.BackgroundTransparency = 1
ButtonUpgrade.Position = UDim2.new(0, 0, 0.4113737, 0)
ButtonUpgrade.BorderSizePixel = 0
ButtonUpgrade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonUpgrade.FontSize = Enum.FontSize.Size14
ButtonUpgrade.TextStrokeTransparency = 0
ButtonUpgrade.TextSize = 14
ButtonUpgrade.TextColor3 = Color3.fromRGB(0, 0, 0)
ButtonUpgrade.Text = "Upgrade (0$)"
ButtonUpgrade.TextWrap = true
ButtonUpgrade.Font = Enum.Font.SourceSans
ButtonUpgrade.TextWrapped = true
ButtonUpgrade.TextStrokeColor3 = Color3.fromRGB(38, 255, 0)
ButtonUpgrade.TextScaled = true
ButtonUpgrade.Parent = MainGui

local ButtonSell = Instance.new("TextButton")
ButtonSell.Name = "ButtonSell"
ButtonSell.Size = UDim2.new(0.1948758, 0, 0.0443131, 0)
ButtonSell.BackgroundTransparency = 1
ButtonSell.Position = UDim2.new(0, 0, 0.4556869, 0)
ButtonSell.BorderSizePixel = 0
ButtonSell.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonSell.FontSize = Enum.FontSize.Size14
ButtonSell.TextStrokeTransparency = 0
ButtonSell.TextSize = 14
ButtonSell.TextColor3 = Color3.fromRGB(0, 0, 0)
ButtonSell.Text = "Sell (0$)"
ButtonSell.TextWrap = true
ButtonSell.Font = Enum.Font.SourceSans
ButtonSell.TextWrapped = true
ButtonSell.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
ButtonSell.TextScaled = true
ButtonSell.Parent = MainGui

local ScrollingFrameAblity = Instance.new("ScrollingFrame")
ScrollingFrameAblity.Name = "ScrollingFrameAblity"
ScrollingFrameAblity.Size = UDim2.new(0.1746894, 0, 0.1432792, 0)
ScrollingFrameAblity.BorderColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrameAblity.BackgroundTransparency = 1
ScrollingFrameAblity.Position = UDim2.new(0, 0, 0.499099, 0)
ScrollingFrameAblity.Active = true
ScrollingFrameAblity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrameAblity.CanvasSize = UDim2.new(0, 0, 0, 485)
ScrollingFrameAblity.Parent = MainGui

local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 97, 0, 97)
UIGridLayout.Parent = ScrollingFrameAblity

local ClonePath = Instance.new("Folder")
ClonePath.Name = "ClonePath"
ClonePath.Parent = MainGui

local ButtonAblity = Instance.new("TextButton")
ButtonAblity.Name = "ButtonAblity"
ButtonAblity.Visible = false
ButtonAblity.Size = UDim2.new(0.4311111, 0, 0.9999999, 0)
ButtonAblity.Position = UDim2.new(0, 0, -0.0824742, 0)
ButtonAblity.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonAblity.FontSize = Enum.FontSize.Size14
ButtonAblity.TextSize = 14
ButtonAblity.TextColor3 = Color3.fromRGB(0, 0, 0)
ButtonAblity.Text = "Ablity1"
ButtonAblity.Font = Enum.Font.SourceSans
ButtonAblity.Parent = ClonePath

local UICorner = Instance.new("UICorner")
UICorner.Parent = ButtonAblity

MainGui.Parent = game:GetService("CoreGui")



-- Script Fate --
local AreadyHoldClick = false
local StartMouseUDim2 = nil
local TableCheckInPart = {}
local TableOldTimeOut = {}
local MouseClickTableFunction = {}
local CtrlHold = false
local HoldNowEKey = false

function checkcurrentupgrade(troop)
    if isgame() then
    local theTroop = troop
    local troopUpgrade = 0
    for _1,a1 in pairs(theTroop.Upgrades:GetChildren()) do
        local isUpgrade = true
        for _2,a2 in pairs(a1:GetDescendants()) do
            if a2:IsA("BasePart") and a2.Transparency == 1 then
                isUpgrade = false
            end
        end
        if isUpgrade and troopUpgrade <= tonumber(a1.Name) then troopUpgrade = tonumber(a1.Name) end
    end
    return troopUpgrade
    end
end

function ReallyGetNumberTable(table2)
	local CurrentNum = 0
	for _1,a1 in next,table2 do
		CurrentNum = CurrentNum + 1
	end
	return CurrentNum
end

game:GetService("UserInputService").InputBegan:Connect(function(Input)
	if Input.KeyCode == Enum.KeyCode.LeftControl then
		HoldNowEKey = Enum.KeyCode.LeftControl
		CtrlHold = true
	elseif Input.KeyCode == Enum.KeyCode.RightControl then
		HoldNowEKey = Enum.KeyCode.RightControl
		CtrlHold = true
	end
end)

game:GetService("UserInputService").InputEnded:Connect(function(Input)
	if Input.KeyCode == HoldNowEKey then
		HoldNowEKey = false
		CtrlHold = false
	end
end)

game:GetService("Players").LocalPlayer:GetMouse().Button1Down:Connect(function()
	if CtrlHold == true then
		StartMouseUDim2 = UDim2.new(0,game:GetService("Players").LocalPlayer:GetMouse().X,0,game:GetService("Players").LocalPlayer:GetMouse().Y)
		HoverUI[1].Position = UDim2.new(0,0,0,0)
		HoverUI[1].Size = UDim2.new(0,0,0,0)
		AreadyHoldClick = true
	end
end)

game:GetService("Players").LocalPlayer:GetMouse().Button1Up:Connect(function()
	HoverUI[1].Size = UDim2.new(0,0,0,0)
	HoverUI[1].Position = UDim2.new(0,0,0,0)
	AreadyHoldClick = false
end)

local UpgradeCountMoneyOutter = 0
local SellCountMoneyOutter = 0
local HaveAbilitiesOutter = {}

spawn(function()
	while wait() do
		spawn(function()
			if AreadyHoldClick == true then
				for _1,a1 in next,TableOldTimeOut do
					if a1:FindFirstChild("SelectionBox") then
						a1:FindFirstChild("SelectionBox"):Destroy()
					end
				end
				HoverUI[1].Position = StartMouseUDim2
				HoverUI[1].Size = UDim2.new(0,game:GetService("Players").LocalPlayer:GetMouse().X - StartMouseUDim2.X.Offset,0,game:GetService("Players").LocalPlayer:GetMouse().Y - StartMouseUDim2.Y.Offset)
				local NewTableSle = {}
				for _1,a1 in next,game:GetService("Workspace").Towers:GetChildren() do
					if a1.Owner.Value == game:GetService("Players").LocalPlayer then
						if a1:IsA("BasePart") then
							local InstancePosition = a1.Position
							local wtvpl = game:GetService("Workspace").CurrentCamera:worldToViewportPoint(InstancePosition)
							local GuiFrame = HoverUI[1]
							local checkandfirst = false
							local checkandsecond = false
							if (#tostring(GuiFrame.Size.X.Offset):split("-") == 1) then
								checkandfirst = wtvpl.X >= GuiFrame.Position.X.Offset and wtvpl.X <= GuiFrame.Position.X.Offset + (GuiFrame.Size.X.Offset)
							else
								checkandfirst = wtvpl.X <= GuiFrame.Position.X.Offset and wtvpl.X >= GuiFrame.Position.X.Offset + (GuiFrame.Size.X.Offset)
							end
							if (#tostring(GuiFrame.Size.Y.Offset):split("-") == 1) then
								checkandsecond = wtvpl.Y >= GuiFrame.Position.Y.Offset and wtvpl.Y <= GuiFrame.Position.Y.Offset + (GuiFrame.Size.Y.Offset)
							else
								checkandsecond = wtvpl.Y <= GuiFrame.Position.Y.Offset and wtvpl.Y >= GuiFrame.Position.Y.Offset + (GuiFrame.Size.Y.Offset)
							end
							if checkandfirst and checkandsecond then
								NewTableSle[_1] = a1
							end
						elseif a1:IsA("Model") then
							if a1.PrimaryPart ~= nil then
								local InstancePosition = a1:GetPrimaryPartCFrame().p
								local wtvpl = game:GetService("Workspace").CurrentCamera:worldToViewportPoint(InstancePosition)
								local GuiFrame = HoverUI[1]
								local checkandfirst = false
								local checkandsecond = false
								if (#tostring(GuiFrame.Size.X.Offset):split("-") == 1) then
									checkandfirst = wtvpl.X >= GuiFrame.Position.X.Offset and wtvpl.X <= GuiFrame.Position.X.Offset + (GuiFrame.Size.X.Offset)
								else
									checkandfirst = wtvpl.X <= GuiFrame.Position.X.Offset and wtvpl.X >= GuiFrame.Position.X.Offset + (GuiFrame.Size.X.Offset)
								end
								if (#tostring(GuiFrame.Size.Y.Offset):split("-") == 1) then
									checkandsecond = wtvpl.Y >= GuiFrame.Position.Y.Offset and wtvpl.Y <= GuiFrame.Position.Y.Offset + (GuiFrame.Size.Y.Offset)
								else
									checkandsecond = wtvpl.Y <= GuiFrame.Position.Y.Offset and wtvpl.Y >= GuiFrame.Position.Y.Offset + (GuiFrame.Size.Y.Offset)
								end
								if checkandfirst and checkandsecond then
									NewTableSle[_1] = a1
								end
							end
						end
					end
				end
				TableCheckInPart = NewTableSle
				for _1,a1 in next,TableCheckInPart do
					local SBoxNew = Instance.new("SelectionBox")
					SBoxNew.Parent = a1
					SBoxNew.Adornee = a1
					SBoxNew.LineThickness = 0.025
				end

				for _1,a1 in next,MouseClickTableFunction do
					a1["functionstored"]:Disconnect()
					a1["instanceui"]:Destroy()
					MouseClickTableFunction[_1] = nil
				end
				local UpgradeCountMoney = 0
				local SellCountMoney = 0
				local HaveAbilities = {}
				for _1,a1 in next,TableCheckInPart do
					pcall(function()
						local reqstatus = require(game:GetService("ReplicatedStorage").Assets.Troops:FindFirstChild(tostring(a1.Type.Value)).Stats)
						UpgradeCountMoney = UpgradeCountMoney + reqstatus.Upgrades[tonumber(a1.Upgrade.Value) + 1].Cost
						SellCountMoney = SellCountMoney + math.floor(tonumber(a1.Worth.Value) / 3)
						if reqstatus.Abilities then
							for _2,a2 in next,reqstatus.Abilities do
								if HaveAbilities[tostring(a1.Type.Value)] == nil then
									if tonumber(a1.Upgrade.Value) >= a2.Level then
										a2["TowerName"] = tostring(a1.Type.Value)
										HaveAbilities[tostring(a1.Type.Value)] = a2
									end
								end
							end
						end
					end)
				end
				for _1,a1 in next,HaveAbilities do
					local CCGuiAb = MainGui.ClonePath.ButtonAblity:Clone()
					CCGuiAb.Parent = MainGui.ScrollingFrameAblity
					CCGuiAb.Visible = true
					CCGuiAb.Text = a1.Name
					MouseClickTableFunction[game:GetService("HttpService"):GenerateGUID(false)] = {["functionstored"] = CCGuiAb.MouseButton1Click:Connect(function()
						for _2,a2 in next,TableCheckInPart do
							if tostring(a2.Type.Value) == a1["TowerName"] then
								if tonumber(a2.Upgrade.Value) >= a1.Level then
									local args = {
										[1] = "Troops",
										[2] = "Abilities",
										[3] = "Activate",
										[4] = {
											["Name"] = a1.Name,
											["Troop"] = a2
										}
									}
									game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
								end
							end
						end
					end),["instanceui"] = CCGuiAb}
				end
				MainGui.ButtonUpgrade.Text = "Upgrade ("..UpgradeCountMoney.."$)"
				MainGui.ButtonSell.Text = "Sell ("..SellCountMoney.."$)"
				MainGui.LabelTS.Text = ReallyGetNumberTable(TableCheckInPart).." Troops Selected"

				TableOldTimeOut = TableCheckInPart
			end
			UpgradeCountMoneyOutter = UpgradeCountMoney
			SellCountMoneyOutter = SellCountMoney
			HaveAbilitiesOutter = HaveAbilities
		end)

	end
end)

MainGui.ButtonUpgrade.MouseButton1Click:Connect(function()
	if TableCheckInPart then
		for _1,a1 in next,TableCheckInPart do
			local args = {
				[1] = "Troops",
				[2] = "Upgrade",
				[3] = "Set",
				[4] = {
					["Troop"] = a1
				}
			}
			game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
		end
		local UpgradeCountMoney = 0
		local SellCountMoney = 0
		local HaveAbilities = {}
		for _1,a1 in next,TableCheckInPart do
			pcall(function()
				local reqstatus = require(game:GetService("ReplicatedStorage").Assets.Troops:FindFirstChild(tostring(a1.Type.Value)).Stats)
				UpgradeCountMoney = UpgradeCountMoney + reqstatus.Upgrades[tonumber(a1.Upgrade.Value) + 1].Cost
				SellCountMoney = SellCountMoney + math.floor(tonumber(a1.Worth.Value) / 3)
				if reqstatus.Abilities then
					for _2,a2 in next,reqstatus.Abilities do
						if HaveAbilities[tostring(a1.Type.Value)] == nil then
							if tonumber(a1.Upgrade.Value) >= a2.Level then
								a2["TowerName"] = tostring(a1.Type.Value)
								HaveAbilities[tostring(a1.Type.Value)] = a2
							end
						end
					end
				end
			end)
		end

    for _1,a1 in next,MouseClickTableFunction do
			a1["functionstored"]:Disconnect()
			a1["instanceui"]:Destroy()
			MouseClickTableFunction[_1] = nil
		end
    for _1,a1 in next,HaveAbilities do
			local CCGuiAb = MainGui.ClonePath.ButtonAblity:Clone()
			CCGuiAb.Parent = MainGui.ScrollingFrameAblity
			CCGuiAb.Visible = true
			CCGuiAb.Text = a1.Name
			MouseClickTableFunction[game:GetService("HttpService"):GenerateGUID(false)] = {["functionstored"] = CCGuiAb.MouseButton1Click:Connect(function()
				for _2,a2 in next,TableCheckInPart do
					if tostring(a2.Type.Value) == a1["TowerName"] then
						if tonumber(a2.Upgrade.Value) >= a1.Level then
							local args = {
								[1] = "Troops",
								[2] = "Abilities",
								[3] = "Activate",
								[4] = {
									["Name"] = a1.Name,
									["Troop"] = a2
								}
							}
							game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
						end
					end
				end
			end),["instanceui"] = CCGuiAb}
		end
		MainGui.ButtonUpgrade.Text = "Upgrade ("..UpgradeCountMoney.."$)"
		MainGui.ButtonSell.Text = "Sell ("..SellCountMoney.."$)"
		MainGui.LabelTS.Text = ReallyGetNumberTable(TableCheckInPart).." Troops Selected"
	end
end)

MainGui.ButtonSell.MouseButton1Click:Connect(function()
	if TableCheckInPart then
		for _1,a1 in next,TableCheckInPart do
			local args = {
				[1] = "Troops",
				[2] = "Sell",
				[3] = {
					["Troop"] = a1
				}
			}
			game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
		end
		MainGui.ButtonUpgrade.Text = "Upgrade (0$)"
		MainGui.ButtonSell.Text = "Sell (0$)"
		MainGui.LabelTS.Text = "0 Troops Selected"
    for _1,a1 in next,MouseClickTableFunction do
			a1["functionstored"]:Disconnect()
			a1["instanceui"]:Destroy()
			MouseClickTableFunction[_1] = nil
		end
	end
end)
