RegisterCommand('clearchat', function(source, args, rawCommand)
    if IsPlayerAceAllowed(source, "chat.clear") then
        TriggerClientEvent('chat:clear', -1)
        TriggerClientEvent('chat:addMessage', -1, {
            color = {255, 0, 0},
            multiline = true,
            args = {"System", "The chat has been cleared by an administrator."}
        })
    else
        TriggerClientEvent('chat:addMessage', source, {
            color = {255, 0, 0},
            multiline = true,
            args = {"System", "You don't have permission to clear the chat."}
        })
    end
end, false)