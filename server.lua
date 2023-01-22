local whitelist =
{
    "steam:11000010ef4d32f",
    "steam:steamhex2",
    "steam:steamhex3",
    "steam:steamhex4"
}


RegisterCommand("ggein", function(source, ID)
    local identifier = GetPlayerIdentifiers(source)[1]
    if checkWhitelist(identifier) then
      if ID[1] == nil then
        print("Gebe eine Player ID ein")
      end
      local target = ID[1]
      TriggerClientEvent("jumpscare:toggleNUI", target, true)
      FreezeEntityPosition(target, true)
    end
end)

RegisterCommand("ggaus", function(source, ID)

    local identifier = GetPlayerIdentifiers(source)[1]
    if checkWhitelist(identifier) then
        if ID[1] == nil then
        print("Gebe eine Player ID ein.")
        end
        local target = ID[1]
        TriggerClientEvent("jumpscare:toggleNUI", target, false)
        FreezeEntityPosition(target, false)
    end
end)


function checkWhitelist(id)
	for k, v in pairs(whitelist) do
		if id == v then
			return true
		end
    end
    
	return false
end
