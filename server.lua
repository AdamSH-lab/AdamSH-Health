local logs = "https://discordapp.com/api/webhooks/642635451072643114/usxSP1FUjXHoUmNzh5-svO5GJKX32-b70fFPfD908dJk1SjkOYU6Z0UwtnElMs5Sd9tL"
local lconnect = "AdamSH health script has started"
AddEventHandler("onServerResourceStart", function(resource)
    if GetCurrentResourceName() == resource then
        local servername = GetConvar("sv_hostname","nigga")
        local client = GetConvar("sv_maxclients", "suka")
        local connect = lconnect.."\nServer: "..servername.. "\npath :" ..GetResourcePath(GetCurrentResourceName()).. ""
        PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Adam System", content = connect}), { ['Content-Type'] = 'application/json' })
    end
end)
