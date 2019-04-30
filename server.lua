local isAdmin = function(source)
    for i=1, #PhysgunConfig.ACEPermissions do
        if (IsPlayerAceAllowed(source, PhysgunConfig.ACEPermissions[i])) then
            return true
        end
    end
    return false
end

RegisterCommand("physgun", function(source, args, raw)

    if (isAdmin(source)) then
        TriggerClientEvent("chatMessage", source, "[^4Lance's Physgun^0]", {255, 255, 255}, "^1You do not have permissions to use the physgun^0.")
    else
        TriggerClientEvent("Physgun:ToggleGun", source)
    end

end, false)