QBCore.Commands = {}
QBCore.Commands.List = {}

QBCore.Commands.Add = function(name, help, arguments, argsrequired, callback, permission) -- [name] = command name (ex. /givemoney), [help] = help text, [arguments] = arguments that need to be passed (ex. {{name="id", help="ID of a player"}, {name="amount", help="amount of money"}}), [argsrequired] = set arguments required (true or false), [callback] = function(source, args) callback, [permission] = rank or job of a player
	QBCore.Commands.List[name:lower()] = {
		name = name:lower(),
		permission = permission ~= nil and permission:lower() or "user",
		help = help,
		arguments = arguments,
		argsrequired = argsrequired,
		callback = callback,
	}
end

QBCore.Commands.Refresh = function(source)
	local Player = QBCore.Functions.GetPlayer(tonumber(source))
	if Player ~= nil then
		for command, info in pairs(QBCore.Commands.List) do
			if QBCore.Functions.HasPermission(source, "god") or QBCore.Functions.HasPermission(source, QBCore.Commands.List[command].permission) then
				TriggerClientEvent('chat:addSuggestion', source, "/"..command, info.help, info.arguments)
			end
		end
	end
end

QBCore.Commands.Add("tp", "الإنتقال الى مكان أو لاعب", {{name="id/x", help=" X المعرف أو إحداثيات"}, {name="y", help="Y"}, {name="z", help="Z"}}, false, function(source, args)
	if (args[1] ~= nil and (args[2] == nil and args[3] == nil)) then
		-- tp to player
		local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
		if Player ~= nil then
			TriggerClientEvent('QBCore:Command:TeleportToPlayer', source, Player.PlayerData.source)
		else
			TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
		end
	else
		-- tp to location
		if args[1] ~= nil and args[2] ~= nil and args[3] ~= nil then
			local x = tonumber(args[1])
			local y = tonumber(args[2])
			local z = tonumber(args[3])
			TriggerClientEvent('QBCore:Command:TeleportToCoords', source, x, y, z)
		else
			TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Not every argument has been entered (x, y, z)")
		end
	end
end, "admin")

QBCore.Commands.Add("addpermission", "إعطاء رتبة (god/admin)", {{name="id", help="المعرف"}, {name="permission", help="إسم الرتبة"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	local permission = tostring(args[2]):lower()
	if Player ~= nil then
		QBCore.Functions.AddPermission(Player.PlayerData.source, permission)
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")	
	end
end, "god")

QBCore.Commands.Add("removepermission", "إزالة رتبة", {{name="id", help="المعرف"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if Player ~= nil then
		QBCore.Functions.RemovePermission(Player.PlayerData.source)
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")	
	end
end, "god")

QBCore.Commands.Add("car", "ريسباون مركبة", {{name="model", help="إسم المركبة"}}, true, function(source, args)
	TriggerClientEvent('QBCore:Command:SpawnVehicle', source, args[1])
end, "admin")

QBCore.Commands.Add("debug", "Turn debug mode on / off", {}, false, function(source, args)
	TriggerClientEvent('koil-debug:toggle', source)
end, "admin")

QBCore.Commands.Add("dv", "ديسباونن مركبة", {}, false, function(source, args)
	TriggerClientEvent('QBCore:Command:DeleteVehicle', source)
end, "admin")

QBCore.Commands.Add("tpm", "إنتقال الى تحديد", {}, false, function(source, args)

	TriggerClientEvent('QBCore:Command:GoToMarker', source)

end, "admin")

QBCore.Commands.Add("givemoney", "إعطاء أموال", {{name="id", help="المعرف"},{name="moneytype", help="نوع الأموال (cash, bank, crypto)"}, {name="amount", help="القيمة"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if Player ~= nil then
		Player.Functions.AddMoney(tostring(args[2]), tonumber(args[3]))
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
	end
end, "admin")

QBCore.Commands.Add("setmoney", "جعل مال شخص", {{name="id", help="المعرف"},{name="moneytype", help="نوع الأموال (cash, bank, crypto)"}, {name="amount", help="القيمة"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if Player ~= nil then
		Player.Functions.SetMoney(tostring(args[2]), tonumber(args[3]))
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
	end
end, "admin")


QBCore.Commands.Add("setjob", "توظيف لاعب", {{name="id", help="المعرف"}, {name="job", help="الوظيفة"}, {name="grade", help="الرتبة"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if Player ~= nil then
		Player.Functions.SetJob(tostring(args[2]), tonumber(args[3]))
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Speler is niet online!")
	end
end, "admin")

QBCore.Commands.Add("job", "رؤية وظيفتي", {}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
	TriggerClientEvent('chatMessage', source, "SYSTEM", "warning", "الوظيفة : "..Player.PlayerData.job.name.." الرتبة : "..Player.PlayerData.job.label)
end)

QBCore.Commands.Add("setgang", "إدخال لاعب الى عصابة", {{name="id", help="المعرف"}, {name="job", help="إسم العصابة"}}, true, function(source, args)
	local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if Player ~= nil then
		Player.Functions.SetGang(tostring(args[2]))
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
	end
end, "admin")

QBCore.Commands.Add("gang", "رؤية عصابتي", {}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)

	if Player.PlayerData.gang.name ~= "geen" then
		TriggerClientEvent('chatMessage', source, "SYSTEM", "warning", "عصابتي: "..Player.PlayerData.gang.label)
	else
		TriggerClientEvent('QBCore:Notify', source, "You're not in a gang!", "error")
	end
end)

QBCore.Commands.Add("testnotify", "تجربة تنبيه", {{name="text", help="الكلام"}}, true, function(source, args)
	TriggerClientEvent('QBCore:Notify', source, table.concat(args, " "), "success")
end, "god")

QBCore.Commands.Add("clearinv", "تصفير حقيبة لاعب", {{name="id", help="المعرف"}}, false, function(source, args)
	local playerId = args[1] ~= nil and args[1] or source 
	local Player = QBCore.Functions.GetPlayer(tonumber(playerId))
	if Player ~= nil then
		Player.Functions.ClearInventory()
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Player is not online!")
	end
end, "admin")

QBCore.Commands.Add("ooc", "التحدث خارج الرول بلاي", {}, false, function(source, args)
	local message = table.concat(args, " ")
	TriggerClientEvent("QBCore:Client:LocalOutOfCharacter", -1, source, GetPlayerName(source), message)
	local Players = QBCore.Functions.GetPlayers()
	local Player = QBCore.Functions.GetPlayer(source)

	for k, v in pairs(QBCore.Functions.GetPlayers()) do
		if QBCore.Functions.HasPermission(v, "admin") then
			if QBCore.Functions.IsOptin(v) then
				TriggerClientEvent('chatMessage', v, "OOC " .. GetPlayerName(source), "normal", message)
				TriggerEvent("qb-log:server:CreateLog", "ooc", "OOC", "white", "**"..GetPlayerName(source).."** (CitizenID: "..Player.PlayerData.citizenid.." | ID: "..source..") **Message:** " ..message, false)
			end
		end
	end
end)