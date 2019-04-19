RegisterCommand("announce", function(source, args)
    local announceMessage = table.concat(args, " ", 1)
    
    if IsPlayerAceAllowed(source, "administrator") then -- pass permission check
        print("[^1Announcement^7]" .. announceMessage )
        TriggerClientEvent("chatMessage", -1, "^7[^4---------^1Announcement^5---------^7]" .. announceMessage)
    else -- Don't pass permission check
        TriggerClientEvent("chatMessage", source, "[Error]", {255,0,0}, "Sorry our system sees your not an admin and can not use this")
    end
end)