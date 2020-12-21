RegisterNetEvent('notifications:notify')

function Notify(title, text, duration)
	if not duration then
		duration = Config.DefaultDuration
	end

	SendNUIMessage({
		type = 'showNotification',
		title = title,
		text = text,
		duration = duration
	})
end

AddEventHandler('notifications:notify', function(title, text, duration)
	Notify(title, text, duration)
end)

RegisterCommand('notify', function(source, args, raw)
	Notify(args[1], args[2])
end, false)

exports('notify', Notify)
