local SoundActive = true

RegisterCommand('notifysound', function()
    SoundActive = not SoundActive
    SendNUIMessage({
        nui = "sound",
        sound = SoundActive
    })
end)

AddEventHandler('4u-notify:client:ShowNotify', function(text, type, time)
    type = type or "primary"
    time = time or 5000
    SendNUIMessage({
        nui = "true",
        data = {
            type = type,
            text = text,
            length = time
        }
    })
end)