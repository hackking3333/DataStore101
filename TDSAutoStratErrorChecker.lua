if not isfolder("./TDS_AutoStrat") then
    makefolder("./TDS_AutoStrat")
end
if not isfile("./TDS_AutoStrat/LastLog.txt") then
    writefile("./TDS_AutoStrat/LastLog.txt", "")
end
if not isfile("./TDS_AutoStrat/LastPrintLog.txt") then
    writefile("./TDS_AutoStrat/LastPrintLog.txt", "")
end
if not isfile("./TDS_AutoStrat/LastStrat.txt") then
    writefile("./TDS_AutoStrat/LastStrat.txt", "")
end
if not isfile("./TDS_AutoStrat/UseCount.txt") then
    writefile("./TDS_AutoStrat/UseCount.txt", "0")
end
if not isfile("./TDS_AutoStrat/Webhook (Logs).txt") then
    writefile("./TDS_AutoStrat/Webhook (Logs).txt", "WEBHOOK HERE")
end
if not isfile("./TDS_AutoStrat/PrivateServer.txt") then
    writefile("./TDS_AutoStrat/PrivateServer.txt", "PRIVATE SERVER LINK HERE")
end
if tonumber(readfile("./TDS_AutoStrat/UseCount.txt")) == nil then
    writefile("./TDS_AutoStrat/UseCount.txt", "0")
end