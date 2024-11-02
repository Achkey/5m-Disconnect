
local webhook = "ADDYOURDISCORDWEBHOOK"

RegisterCommand("combat", function(source, args, rawcmd)
    TriggerClientEvent("NHdisconnect:show", source)
end)

AddEventHandler("playerDropped", function(reason)
    local crds = GetEntityCoords(GetPlayerPed(source))
    local id = source
    local identifier = ""
    local discordName = nil
    
    -- Loop through all identifiers to find Discord
    for i = 0, GetNumPlayerIdentifiers(id) - 1 do
        local iden = GetPlayerIdentifier(id, i)
        if string.sub(iden, 1, 8) == "discord:" then
            discordName = iden  -- Save the discord identifier
            break
        end
    end

    -- Fallback if Discord identifier not found
    if discordName then
        identifier = discordName
    else
        identifier = "Discord not linked"
    end

    TriggerClientEvent("NHdisconnect", -1, id, crds, identifier, reason)
    
    if Config.LogSystem then
        SendLog(id, crds, identifier, reason)
    end
end)

function SendLog(id, crds, identifier, reason)
    local name = GetPlayerName(id)
    local date = os.date('*t')
    print("id:"..id)
    print("X: "..crds.x..", Y: "..crds.y..", Z: "..crds.z)
    print("identifier:"..identifier)
    print("reason:"..reason)
    
    -- Additional logging or webhook send code here
end
