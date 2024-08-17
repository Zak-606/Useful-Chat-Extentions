local chatVisible = true

RegisterCommand('togglechat', function()
    chatVisible = not chatVisible
    ExecuteCommand(chatVisible and 'chat on' or 'chat off')
    TriggerEvent('chat:addMessage', {
        color = {255, 255, 0},
        multiline = true,
        args = {"System", chatVisible and "Chat visibility turned on." or "Chat visibility turned off."}
    })
end, false)

-- Optional: Add a keybind to toggle chat visibility
RegisterKeyMapping('togglechat', 'Toggle chat visibility', 'keyboard', 'F6')