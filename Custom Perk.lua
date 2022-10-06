local plus = 1
local plusStart = 1.35

local isCooldown = false
local isSkill = false

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local Args = {...}
    local method = getnamecallmethod()
    if tostring(self) == 'Communicator' and method == "InvokeServer" and Args[1] == "update" then
        if isSkill then
            return (1500 * plus), 3
        else
            return 1500, 3
        end
    end
    return old(self,...)
end))

local SyringSPEEDDDDDDDD = Instance.new("ScreenGui")
local Speeddddddddd = Instance.new("ImageLabel")
local ShowPerk = Instance.new("ImageLabel")
local ShowCooldown = Instance.new("TextLabel")

SyringSPEEDDDDDDDD.Name = "SyringSPEEDDDDDDDD"
SyringSPEEDDDDDDDD.Parent = game:GetService("CoreGui")
SyringSPEEDDDDDDDD.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Speeddddddddd.Name = "Speeddddddddd"
Speeddddddddd.Parent = SyringSPEEDDDDDDDD
Speeddddddddd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Speeddddddddd.BackgroundTransparency = 1.000
Speeddddddddd.BorderSizePixel = 0
Speeddddddddd.Position = UDim2.new(0, 0, 0, -40)
Speeddddddddd.Size = UDim2.new(1, 0, 1, 40)
Speeddddddddd.Image = "rbxassetid://7464710175"
Speeddddddddd.ImageColor3 = Color3.fromRGB(0, 255, 0)
Speeddddddddd.ImageTransparency = 1.000

ShowPerk.Name = "ShowPerk"
ShowPerk.Parent = SyringSPEEDDDDDDDD
ShowPerk.AnchorPoint = Vector2.new(0.5, 0.5)
ShowPerk.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ShowPerk.BackgroundTransparency = 1.000
ShowPerk.BorderSizePixel = 0
ShowPerk.Position = UDim2.new(0.930599391, 0, 0.895734549, 0)
ShowPerk.Size = UDim2.new(0, 100, 0, 100)
ShowPerk.Image = "rbxassetid://153959806"

ShowCooldown.Name = "ShowCooldown"
ShowCooldown.Parent = ShowPerk
ShowCooldown.AnchorPoint = Vector2.new(0.5, 0.5)
ShowCooldown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShowCooldown.BackgroundTransparency = 1.000
ShowCooldown.BorderSizePixel = 0
ShowCooldown.Position = UDim2.new(0.5, 0, 0.425000012, 0)
ShowCooldown.Size = UDim2.new(0.899999976, 0, 0.319999993, 0)
ShowCooldown.Font = Enum.Font.SourceSans
ShowCooldown.Text = "999 sec"
ShowCooldown.TextColor3 = Color3.fromRGB(255, 255, 255)
ShowCooldown.TextScaled = true
ShowCooldown.TextSize = 30.000
ShowCooldown.TextStrokeTransparency = 0.000
ShowCooldown.TextWrapped = true

local SyringSoundBoost = Instance.new("Sound")
SyringSoundBoost.Name = "SyringSoundBoost"
SyringSoundBoost.Volume = 0.25
SyringSoundBoost.SoundId = "rbxassetid://187137496"

SyringSoundBoost.Parent = workspace

ShowCooldown.Text = "Ready!"

function NewValueTweens(unptweens, callback)
    -- unptweens [1] = "Twins Time" [2] = "Start Value" [3] = "End Value"
    local NewTweens = Instance.new("NumberValue")
    NewTweens.Parent = game
    NewTweens.Value = unptweens[2]
    NewTweens:GetPropertyChangedSignal("Value"):Connect(function()
        callback(NewTweens.Value)
    end)
    local NewTwins = {NewTweens, TweenInfo.new(unptweens[1]), {Value = unptweens[3]}}
    game:GetService("TweenService"):Create(unpack(NewTwins)):Play()
    spawn(function()
        wait(unptweens[1])
        NewTweens:Destroy()
    end)
end

game:GetService("UserInputService").InputBegan:Connect(function(input, _gameProcessed)
    if input.KeyCode == Enum.KeyCode.G then
        if isCooldown == false then
            game:GetService("TweenService"):Create(Speeddddddddd, TweenInfo.new(1.5), {ImageTransparency = 0.85}):Play()
            NewValueTweens({1.5, plus, plusStart}, function(ValNow)
                plus = ValNow
            end)
            SyringSoundBoost:Play()
            isCooldown = true
            isSkill = true
            spawn(function()
                for i = 1,35,1 do
                    ShowCooldown.Text = (35 - i).." sec"
                    wait(1)
                end
                ShowCooldown.Text = "Ready!"
            end)
            spawn(function()
                wait(7)
                game:GetService("TweenService"):Create(Speeddddddddd, TweenInfo.new(3), {ImageTransparency = 1}):Play()
                NewValueTweens({3, plusStart, 1}, function(ValNow)
                    plus = ValNow
                end)
            end)
            spawn(function()
                wait(10)
                isSkill = false
            end)
            spawn(function()
                wait(35)
                isCooldown = false
            end)
        end
    end
end)