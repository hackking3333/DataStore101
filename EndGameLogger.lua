game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Results:GetPropertyChangedSignal("Visible"):Connect(function()
    if getgenv().EndGameLogger == true and readfile("TDS_AutoStrat/Webhook (Logs).txt") ~= "WEBHOOK HERE" then
        function P(a)
            if a <= 9 then
                local a = "0" .. a
                return a
            else
                return a
            end
        end
        i = readfile("TDS_AutoStrat/Webhook (Logs).txt")
        descput = "**		------------ ERROR MATCH ------------**\n**If you found this message DM Pum#8619**"
        colorput = tonumber(16724736)
        maincontentgui = game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Results.Content
        if maincontentgui.Titles.Triumph.Visible == true then
            descput = "**		------------ WIN MATCH ------------**\n**Coin Earned : **"..maincontentgui.Rewards.Coins.TextLabel.Text.."\n**Gem Earned : **"..maincontentgui.Rewards.Gems.TextLabel.Text.."\n**Exp Earned : **"..maincontentgui.Rewards.Experience.TextLabel.Text.."\n**Time Used : **"..maincontentgui.Stats.Duration.Text
            colorput = tonumber(3394611)
        elseif maincontentgui.Titles.Lose.Visible == true then
            descput = "**		------------ LOSE MATCH ------------**\n**Coin Earned : **"..maincontentgui.Rewards.Coins.TextLabel.Text.."\n**Gem Earned : **"..maincontentgui.Rewards.Gems.TextLabel.Text.."\n**Exp Earned : **"..maincontentgui.Rewards.Experience.TextLabel.Text.."\n**Time Used : **"..maincontentgui.Stats.Duration.Text
            colorput = tonumber(16724736)
        elseif maincontentgui.HiddenWave.Lose.Visible == true then
            descput = "**		------------ HIDDEN MATCH ------------**\n**Coin Earned : **"..maincontentgui.Rewards.Coins.TextLabel.Text.."\n**Gem Earned : **"..maincontentgui.Rewards.Gems.TextLabel.Text.."\n**Exp Earned : **"..maincontentgui.Rewards.Experience.TextLabel.Text.."\n**Time Used : **"..maincontentgui.Stats.Duration.Text
            colorput = tonumber(16724736)
        end
        local a = {
            ["username"] = "TDS AutoStrat LOGGER",
            ["embeds"] = {
                {
                    ["title"] = "**LOG ("..P(os.date("*t").year).."-"..P(os.date("*t").month).."-"..P(os.date("*t").day).." "..P(os.date("*t").hour)..":"..P(os.date("*t").min)..":"..P(os.date("*t").sec)..")**",
                    ["description"] = descput,
                    ["type"] = "rich",
                    ["color"] = colorput
                }
            }
        }
        local a = game:GetService("HttpService"):JSONEncode(a)
        local b = {["content-type"] = "application/json"}
        v = http_request or v or HttpPost or syn.request
        local a = {Url = i, Body = a, Method = "POST", Headers = b}
        v(a)
    end
end)
