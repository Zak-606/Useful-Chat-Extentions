local function hideInvalidCommands()
    AddEventHandler('chatMessage', function(source, name, message)
        if string.sub(message, 1, 1) == '/' then
            local command = string.lower(string.sub(message, 2))
            if not IsCommandRegistered(command) then
                CancelEvent()
            end
        end
    end)
end

Citizen.CreateThread(hideInvalidCommands)