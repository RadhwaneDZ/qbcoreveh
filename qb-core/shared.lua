QBShared = {}

local StringCharset = {}
local NumberCharset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
for i = 65,  90 do table.insert(StringCharset, string.char(i)) end
for i = 97, 122 do table.insert(StringCharset, string.char(i)) end

QBShared.RandomStr = function(length)
	if length > 0 then
		return QBShared.RandomStr(length-1) .. StringCharset[math.random(1, #StringCharset)]
	else
		return ''
	end
end

QBShared.RandomInt = function(length)
	if length > 0 then
		return QBShared.RandomInt(length-1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

QBShared.SplitStr = function(str, delimiter)
	local result = { }
	local from  = 1
	local delim_from, delim_to = string.find( str, delimiter, from  )
	while delim_from do
		table.insert( result, string.sub( str, from , delim_from-1 ) )
		from  = delim_to + 1
		delim_from, delim_to = string.find( str, delimiter, from  )
	end
	table.insert( result, string.sub( str, from  ) )
	return result
end

QBShared.Items = {
-- New Craft Items
-- AK47 Pistol _ Components: AK47_P Trigger _ AK47_P Spring _ AK47_P Piston _ AK47_P Bolt _ AK47_P Handle _ AK47_P Sight _ AK47_P Barrel _ AK47_P Frame _ AK47_P Assembly Parts

["ak47_p_trigger"] = {["name"] = "ak47_p_trigger", ["label"] = "AK47 Compact Trigger", ["weight"] = 0.1, ["type"] = "item", ["image"] = "AK47_P_Trigger.png", ["unique"] = true, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "AK47 Pistol Trigger Component"},

["ak47_p_spring"] = {["name"] = "ak47_p_spring", ["label"] = "AK47 Compact Spring", ["weight"] = 0.2, ["type"] = "item", ["image"] = "AK47_P_Spring.png", ["unique"] = true, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "AK47 Pistol Spring Component"},

["ak47_p_piston"] = {["name"] = "ak47_p_piston", ["label"] = "AK47 Compact Piston", ["weight"] = 0.4, ["type"] = "item", ["image"] = "AK47_P_Piston.png", ["unique"] = true, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "AK47 Pistol Piston Component"},

["ak47_p_bolt"] = {["name"] = "ak47_p_bolt", ["label"] = "AK47 Compact Bolt", ["weight"] = 0.6, ["type"] = "item", ["image"] = "AK47_P_Bolt.png", ["unique"] = true, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "AK47 Pistol Bolt Component"},

["ak47_p_handle"] = {["name"] = "ak47_p_handle", ["label"] = "AK47 Compact Handle", ["weight"] = 0.9, ["type"] = "item", ["image"] = "AK47_P_Handle.png", ["unique"] = true, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "AK47 Pistol Handle Component"},

["ak47_p_sight"] = {["name"] = "ak47_p_sight", ["label"] = "AK47 Compact Sight", ["weight"] = 0.4, ["type"] = "item", ["image"] = "AK47_P_Sight.png", ["unique"] = true, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "AK47 Pistol Sight Component"},

["ak47_p_barrel"] = {["name"] = "ak47_p_barrel", ["label"] = "AK47 Compact Barrel", ["weight"] = 0.5, ["type"] = "item", ["image"] = "AK47_P_Barrel.png", ["unique"] = true, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "AK47 Pistol Barrel Component"},

["ak47_p_frame"] = {["name"] = "ak47_p_frame", ["label"] = "AK47 Compact Frame", ["weight"] = 1.0, ["type"] = "item", ["image"] = "AK47_P_Frame.png", ["unique"] = true, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "AK47 Pistol Frame Component"},

["ak47_p_assembly"] = {["name"] = "ak47_p_assembly", ["label"] = "AK47 Compact Assembly Parts", ["weight"] = 0.4, ["type"] = "item", ["image"] = "AK47_P_Assembly.png", ["unique"] = true, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "AK47 Pistol Assembly parts Component"},




	-- // WEAPONS
	["weapon_unarmed"] 				 = {["name"] = "weapon_unarmed", 		 	  	["label"] = "Hands", 					["weight"] = 1000, 		["type"] = "weapon",	["ammotype"] = nil, 					["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_flashlight"] 			 = {["name"] = "weapon_flashlight", 		 	["label"] = "Flashlight", 				["weight"] = 1000, 		["type"] = "weapon",	["ammotype"] = nil, 					["image"] = "flashlight.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_knife"] 				 = {["name"] = "weapon_knife", 			 	  	["label"] = "Knife", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "knife.png", 				["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_nightstick"] 			 = {["name"] = "weapon_nightstick", 		 	["label"] = "Nightstick", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "nightstick.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_hammer"] 				 = {["name"] = "weapon_hammer", 			 	["label"] = "Hammer", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "weapon_hammer.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bat"] 					 = {["name"] = "weapon_bat", 			 	  	["label"] = "Bat", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "baseballbat.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_golfclub"] 			 = {["name"] = "weapon_golfclub", 		 	  	["label"] = "Golfclub", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_crowbar"] 				 = {["name"] = "weapon_crowbar", 		 	  	["label"] = "Crowbar", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_pistol"] 				 = {["name"] = "weapon_pistol", 			 	["label"] = "Walther P99", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "pistol.png", 				["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_pistol_mk2"] 			 = {["name"] = "weapon_pistol_mk2", 			["label"] = "Pistol Mk II", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "pistolmk2.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_combatpistol"] 		 = {["name"] = "weapon_combatpistol", 	 	  	["label"] = "Combat Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "combatpistol.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_appistol"] 			 = {["name"] = "weapon_appistol", 		 	  	["label"] = "AP Pistol", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "appistol.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_pistol50"] 			 = {["name"] = "weapon_pistol50", 		 	  	["label"] = "Pistol .50 Cal", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "weapon_pistol50.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_microsmg"] 			 = {["name"] = "weapon_microsmg", 		 	  	["label"] = "Micro SMG", 				["weight"] = 2200, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "microsmg.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_smg"] 				 	 = {["name"] = "weapon_smg", 			 	  	["label"] = "SMG", 						["weight"] = 3000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "smg.png", 					["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_specialcarbine_mk2"] 					 = {["name"] = "weapon_specialcarbine_mk2", 			      	["label"] = "specialcarbine mk2", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	["weapon_carbinerifle_mk2"] 					 = {["name"] = "weapon_carbinerifle_mk2", 			      	["label"] = "carbinerifle mk2", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	["weapon_bullpuprifle_mk2"] 					 = {["name"] = "weapon_bullpuprifle_mk2", 			      	["label"] = "bullpuprifle mk2", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	["weapon_assaultrifle_mk2"] 					 = {["name"] = "weapon_assaultrifle_mk2", 			      	["label"] = "assaultrifle mk2", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	["weapon_assaultsmg"] 			 = {["name"] = "weapon_assaultsmg", 		 	["label"] = "Assault SMG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_assaultrifle"] 		 = {["name"] = "weapon_assaultrifle", 	 	  	["label"] = "Assault Rifle", 			["weight"] = 5000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "assaultrifle.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_carbinerifle"] 		 = {["name"] = "weapon_carbinerifle", 	 	  	["label"] = "Carbine Rifle", 			["weight"] = 4000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "carbinerifle.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_advancedrifle"] 		 = {["name"] = "weapon_advancedrifle", 	 	  	["label"] = "Advanced Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_mg"] 					 = {["name"] = "weapon_mg", 				 	["label"] = "Machinegun", 				["weight"] = 20000, 	["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_combatmg"] 			 = {["name"] = "weapon_combatmg", 		 	  	["label"] = "Combat MG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_pumpshotgun"] 			 = {["name"] = "weapon_pumpshotgun", 	 	  	["label"] = "Pump Shotgun", 			["weight"] = 3800, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "pumpshotgun.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_sawnoffshotgun"] 		 = {["name"] = "weapon_sawnoffshotgun", 	 	["label"] = "Sawn-off Shotgun", 		["weight"] = 2000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "sawoffshotgun.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_assaultshotgun"] 		 = {["name"] = "weapon_assaultshotgun", 	 	["label"] = "Assault Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bullpupshotgun"] 		 = {["name"] = "weapon_bullpupshotgun", 	 	["label"] = "Bullpup Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_stungun"] 				 = {["name"] = "weapon_stungun", 		 	  	["label"] = "Taser", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "stungun.png", 				["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_sniperrifle"] 			 = {["name"] = "weapon_sniperrifle", 	 	  	["label"] = "Sniper Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_heavysniper"] 			 = {["name"] = "weapon_heavysniper", 	 	  	["label"] = "Heavy Sniper", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_remotesniper"] 		 = {["name"] = "weapon_remotesniper", 	 	  	["label"] = "Remote Sniper", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER_REMOTE",	["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_grenadelauncher"] 		 = {["name"] = "weapon_grenadelauncher", 	  	["label"] = "Grenade Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_GRENADELAUNCHER",	["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_grenadelauncher_smoke"] = {["name"] = "weapon_grenadelauncher_smoke", 	["label"] = "Smoke Grenade Launcher", 	["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_GRENADELAUNCHER",	["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_rpg"] 					 = {["name"] = "weapon_rpg", 			      	["label"] = "RPG", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RPG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_minigun"] 				 = {["name"] = "weapon_minigun", 		      	["label"] = "Minigun", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MINIGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_grenade"] 				 = {["name"] = "weapon_grenade", 		      	["label"] = "Grenade", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_stickybomb"] 			 = {["name"] = "weapon_stickybomb", 		    ["label"] = "C4", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "stickybomb.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_smokegrenade"] 		 = {["name"] = "weapon_smokegrenade", 	      	["label"] = "Smoke Grenade", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bzgas"] 				 = {["name"] = "weapon_bzgas", 			      	["label"] = "BZ Gas", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_molotov"] 				 = {["name"] = "weapon_molotov", 		      	["label"] = "Molotov", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_fireextinguisher"] 	 = {["name"] = "weapon_fireextinguisher",      	["label"] = "Fire Extinguisher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "fireext.png", 				["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_petrolcan"] 			 = {["name"] = "weapon_petrolcan", 		 	  	["label"] = "Petrol Can", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PETROLCAN",		["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_briefcase"] 			 = {["name"] = "weapon_briefcase", 		 	  	["label"] = "Briefcase", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_briefcase_02"] 		 = {["name"] = "weapon_briefcase_02", 	 	  	["label"] = "Briefcase", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_ball"] 				 = {["name"] = "weapon_ball", 			 	  	["label"] = "Bal", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_BALL",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_flare"] 				 = {["name"] = "weapon_flare", 			 	  	["label"] = "Flare pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_FLARE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_snspistol"] 			 = {["name"] = "weapon_snspistol", 		 	  	["label"] = "SNS Pistol", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "weapon_snspistol.png", 	["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bottle"] 				 = {["name"] = "weapon_bottle", 			 	["label"] = "Broken Bottle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_gusenberg"] 			 = {["name"] = "weapon_gusenberg", 		 	  	["label"] = "Thompson MG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_specialcarbine"] 		 = {["name"] = "weapon_specialcarbine", 	 	["label"] = "Special Carbine", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_heavypistol"] 			 = {["name"] = "weapon_heavypistol", 	 	  	["label"] = "Heavy Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "weapon_heavypistol.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bullpuprifle"] 		 = {["name"] = "weapon_bullpuprifle", 	 	  	["label"] = "Bullpup Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_dagger"] 				 = {["name"] = "weapon_dagger", 			 	["label"] = "Dagger", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_vintagepistol"] 		 = {["name"] = "weapon_vintagepistol", 	 	  	["label"] = "Vintage Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "weapon_vintagepistol.png", ["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_firework"] 			 = {["name"] = "weapon_firework", 		 	  	["label"] = "Firework Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_musket"] 			     = {["name"] = "weapon_musket", 			 	["label"] = "Musket", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_heavyshotgun"] 		 = {["name"] = "weapon_heavyshotgun", 	 	  	["label"] = "Heavy Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_marksmanrifle"] 		 = {["name"] = "weapon_marksmanrifle", 	 	  	["label"] = "Marksman Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_hominglauncher"] 		 = {["name"] = "weapon_hominglauncher", 	 	["label"] = "Homing Launcher", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_STINGER",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_proxmine"] 			 = {["name"] = "weapon_proxmine", 		 	  	["label"] = "Proxmine Grenade", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_snowball"] 		     = {["name"] = "weapon_snowball", 		 	  	["label"] = "Snowball", 				["weight"] = 0, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "snowball.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_flaregun"] 			 = {["name"] = "weapon_flaregun", 		 	  	["label"] = "Flare Gun", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_FLARE",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_garbagebag"] 			 = {["name"] = "weapon_garbagebag", 		 	["label"] = "Garbage Bag", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_handcuffs"] 			 = {["name"] = "weapon_handcuffs", 		 	  	["label"] = "Handcuffs", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_combatpdw"] 			 = {["name"] = "weapon_combatpdw", 		 	  	["label"] = "Combat PDW", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_marksmanpistol"] 		 = {["name"] = "weapon_marksmanpistol", 	 	["label"] = "Marksman Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_knuckle"] 				 = {["name"] = "weapon_knuckle", 		 	  	["label"] = "Knuckle", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_hatchet"] 				 = {["name"] = "weapon_hatchet", 		 	  	["label"] = "Hatchet", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "weapon_hatchet.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_railgun"] 				 = {["name"] = "weapon_railgun", 		 	  	["label"] = "Railgun", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_machete"] 				 = {["name"] = "weapon_machete", 		 	  	["label"] = "Machete", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_machinepistol"] 		 = {["name"] = "weapon_machinepistol", 	 	  	["label"] = "Tec-9", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "tec9.png", 				["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_switchblade"] 			 = {["name"] = "weapon_switchblade", 	 	  	["label"] = "Switchblade", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "weapon_switchblade.png",	["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_revolver"] 			 = {["name"] = "weapon_revolver", 		 	  	["label"] = "Revolver", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_dbshotgun"] 			 = {["name"] = "weapon_dbshotgun", 		 	  	["label"] = "Double-barrel Shotgun", 	["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_compactrifle"] 		 = {["name"] = "weapon_compactrifle", 	 	  	["label"] = "Compact Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "weapon_compactrifle.png", 	["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_autoshotgun"] 			 = {["name"] = "weapon_autoshotgun", 	 	  	["label"] = "Auto Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_battleaxe"] 			 = {["name"] = "weapon_battleaxe", 		 	  	["label"] = "Battle Axe", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_compactlauncher"] 		 = {["name"] = "weapon_compactlauncher",  	  	["label"] = "Compact Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_minismg"] 				 = {["name"] = "weapon_minismg", 		 	  	["label"] = "Mini SMG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "weapon_minismg.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_pipebomb"] 			 = {["name"] = "weapon_pipebomb", 		 	  	["label"] = "Pipe bom", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_poolcue"] 				 = {["name"] = "weapon_poolcue", 		 	  	["label"] = "Poolcue", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "weapon_poolcue.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_wrench"] 				 = {["name"] = "weapon_wrench", 			 	["label"] = "Wrench", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "weapon_wrench.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_autoshotgun"] 		 	 = {["name"] = "weapon_autoshotgun", 	 		["label"] = "Sweeper Shotgun", 			["weight"] = 3000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "sweepershotgun.png", 		["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},
	["weapon_bread"] 				 = {["name"] = "weapon_bread", 		 			["label"] = "Baquette", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "baquette.png", 			["unique"] = true, 		["useable"] = false, 	["combinable"] = nil, ["description"] = "This is a placeholder description"},


	-- // ITEMS //
	["bag"]                            = {["name"] = "bag",                             ["label"] = "حقيبة",                        ["weight"] = 5000,         ["type"] = "item",         ["image"] = "duffel.png",                 ["unique"] = true,         ["useable"] = true,     ["shouldClose"] = true,       ["combinable"] = nil,    ["description"] = "حقيبة يمكنك تخزين اللي تبيه فيها وممنوع تتصادر او تنسرق"},
	["id_card"] 					 = {["name"] = "id_card", 			 	  	  	["label"] = "الهوية", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "id_card.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "بطاقة تحمل كل معلوماتك الشخصية"},
	["driver_license"] 				 = {["name"] = "driver_license", 			  	["label"] = "رخصة القيادة", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "driver_license.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "بطاقة حكومية تثبت تأهيلك للقيادة"},
	["lawyerpass"] 					 = {["name"] = "lawyerpass", 			 	  	["label"] = "تصريح المحاماة", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "lawyerpass.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "تصريح خاص للمحامين لإظهار قدرتهم على تمثيل المشتبه بهم"},
	["tosti"] 						 = {["name"] = "tosti", 			 	  	  	["label"] = "شطيرة", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "tosti.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "جيد للأكل"},
	["water_bottle"] 				 = {["name"] = "water_bottle", 			  	  	["label"] = "ماء", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "water_bottle.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "بارد ومنعش"},
	["beer"] 				 		 = {["name"] = "beer", 			  	  			["label"] = "بيرة", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "beer.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "بارد ومنعش"},
	["whiskey"] 				 	 = {["name"] = "whiskey", 			  	  		["label"] = "ويكسي", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "whiskey.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "بارد ومنعش"},
	["vodka"] 				 		 = {["name"] = "vodka", 			  	  		["label"] = "فودكا", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "vodka.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "بارد ومنعش"},
	["coffee"] 				 		 = {["name"] = "coffee", 			  	  		["label"] = "قهوة", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "coffee.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "قهوة ساخنة خالية من الكافين"},
	["kurkakola"] 				 	 = {["name"] = "kurkakola", 			  	  	["label"] = "كولا", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "cola.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "بارد ومنعش"},
	["twerks_candy"] 				 = {["name"] = "twerks_candy", 			  	  	["label"] = "تويكس", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "twerks_candy.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "حلوة لذيذة :O"},
	["snikkel_candy"] 				 = {["name"] = "snikkel_candy", 			  	["label"] = "سنيكرز", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "snikkel_candy.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "حلوة لذيذة :O"},
	["joint"] 						 = {["name"] = "joint", 			  	  		["label"] = "زقارة حشيش", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "joint.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "سيدني ستكون فخورة جدا بك"},
	["cokebaggy"] 					 = {["name"] = "cokebaggy", 			  	  	["label"] = "كيس كوكاين", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "cocaine_baggy.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "سيجعلك سعيدا في لحظات"},
	["crack_baggy"] 				 = {["name"] = "crack_baggy", 			  	  	["label"] = "كيس كراك", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "crack_baggy.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "سيجعلك سعيدا في لحظات"},
	["xtcbaggy"] 					 = {["name"] = "xtcbaggy", 			  	  		["label"] = "كيس مهلوسات", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "xtc_baggy.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "خذل حبه وإستسمتع"},
	["plastic"] 					 = {["name"] = "plastic", 			  	  	  	["label"] = "بلاستيك", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "plastic.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "بلاستيك"},
	["metalscrap"] 					 = {["name"] = "metalscrap", 			  	  	["label"] = "خردة", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "metalscrap.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "ربما يمكنك صنع شيء لطيف من هذا"},
	["copper"] 					 	 = {["name"] = "copper", 			  	  		["label"] = "نحاس", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "copper.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "قطعة جيدة يمكنك إستخدامها في شيء ما"},
    ["s_tool"] 					 	 = {["name"] = "s_tool", 			  	  		["label"] = "سكين ذبح", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "s_tool.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "عدة ذبح تستخدمها في وظيفة الدواجن"},		
	["m_tool"] 					 	 = {["name"] = "m_tool", 			  	  		["label"] = "عدة معادن", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "m_tool.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "معدات تساعدك في وظيفة المعادن"},
	["stones"] 					 	 = {["name"] = "stones", 			  	  		["label"] = "حجر", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "stones.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "معدات تساعدك في وظيفة المعادن"},
	["washedstones"] 				 = {["name"] = "washedstones", 			  	  	["label"] = "حجر مطحون", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "washedstones.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "معدات تساعدك في وظيفة المعادن"},
	["diamond"] 				 = {["name"] = "diamond", 			  	  	["label"] = "ألماس", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "diamond.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "معدات تساعدك في وظيفة المعادن"},	
	["aluminum"] 					 = {["name"] = "aluminum", 			  	  		["label"] = "ألمنيوم", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "aluminum.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "قطعة جيدة يمكنك إستخدامها في شيء ما"},
	["aluminumoxide"] 				 = {["name"] = "aluminumoxide", 			  	["label"] = "مسحوق الألومنيوم", 		["weight"] = 100, 		["type"] = "item", 		["image"] = "aluminumoxide.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "مسحوق جيد للعمليات السحرية"},
	["wetbud"] 				 	 	 = {["name"] = "wetbud", 			  			["label"] = "Wet Bud 2 Oz", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "wetbud.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "What you waiting for go sell it.."},
	["drybud"] 				 	 	 = {["name"] = "drybud", 			  			["label"] = "Dry Bud 2 Oz", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "drybud.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ummm how about you go dry it??"},
	["iron"] 				 	     = {["name"] = "iron", 			  				["label"] = "حديد", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "ironplate.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "قطعة جيدة يمكنك إستخدامها في شيء ما"},
	["fish"] 				 	     = {["name"] = "fish", 			  				["label"] = "سمك", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "fish.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "سمك"},
	["kbrit"] 				 	     = {["name"] = "kbrit", 			  				["label"] = "كبريت", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "matches.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "مادة تصنع بها اشياء"},	
		["coal"] 				 	     = {["name"] = "coal", 			  				["label"] = "فحم", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "coal.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "مادة تصنع بها اشياء"},
		["gold"] 				 	     = {["name"] = "gold", 			  				["label"] = "ذهب", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "gold.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "مادة تصنع بها اشياء"},		
	["shark"] 				 	     = {["name"] = "shark", 			  				["label"] = "قرش", 					["weight"] = 5000, 		["type"] = "item", 		["image"] = "shark.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "قرش"},
	["fishbait"] 				 	     = {["name"] = "fishbait", 			  				["label"] = "طعم سمك", 					["weight"] = 5000, 		["type"] = "item", 		["image"] = "fishbait.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "طعم سمك"},
	["fishingrod"] 				 	     = {["name"] = "fishingrod", 			  				["label"] = "صنارة", 					["weight"] = 5000, 		["type"] = "item", 		["image"] = "fishingrod.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "صنارة"},	
	["turtle"] 				 	     = {["name"] = "turtle", 			  				["label"] = "سلحفاة", 					["weight"] = 5000, 		["type"] = "item", 		["image"] = "turtle.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "سلحفاة"},
	["turtlebait"] 				 	     = {["name"] = "turtlebait", 			  				["label"] = "طعم سلحفاة", 					["weight"] = 5000, 		["type"] = "item", 		["image"] = "turtlebait.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "طعم سلحفاة"},	
	["acetone"] 				 	     = {["name"] = "acetone", 			  				["label"] = "إيفيدرين", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "acetone.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "مادة كيميائية خطيرة يمكنها أن تصنع لك سعادة مطلقة"},
	["lithium"] 				 	     = {["name"] = "lithium", 			  				["label"] = "الفوسفور الأحمر", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "lithium.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "مادة كيميائية خطيرة يمكنها أن تصنع لك سعادة مطلقة"},
	["methlab"] 				 	     = {["name"] = "methlab", 			  				["label"] = "كيس فارغ", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "methlab.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "كيس فارغ تحتاجه لتخزين منتاجاتك"},
	["meth"] 				 	     = {["name"] = "meth", 			  				["label"] = "ميث", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "meth.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "مادة سحرية ستجعلك تتغلغل من السعادة"},	
	["ironoxide"] 				 	 = {["name"] = "ironoxide", 			  		["label"] = "مسحوق الحديد", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "ironoxide.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = {accept = {"aluminumoxide"}, reward = "thermite", anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Mixing powder..", ["timeOut"] = 10000}},   ["description"] = "مسحوق جيد للعمليات السحرية"},
	["steel"] 				 	 	 = {["name"] = "steel", 			  			["label"] = "فولاذ", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "steel.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "قطعة جيدة يمكنك إستخدامها في شيء ما"},
	["rubber"] 				 	 	 = {["name"] = "rubber", 			  			["label"] = "مطاط", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "rubber.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "المطاط ، أعتقد أنه يمكنك صنع المطاط الخاص بك معه :D"},
	["glass"] 				 	 	 = {["name"] = "glass", 			  			["label"] = "زجاج", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "glassplate.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "إحذر يمكن أن ينكسر في اي لحظة."},
	["rpg_ammo"] 				 	 = {["name"] = "rpg_ammo", 			  	  		["label"] = "رصاص ار بي جي", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "placeholder.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "رصاص للمتفجرات"},
	["pistol_ammo"] 				 = {["name"] = "pistol_ammo", 			  	  	["label"] = "رصاص مسدس", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "pistol_ammo.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "رصاص للمسدس"},
	["rifle_ammo"] 				 	 = {["name"] = "rifle_ammo", 			  	  	["label"] = "رصاص ريفل", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "rifle_ammo.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "رصاص للرشاشات"},
	["smg_ammo"] 				 	 = {["name"] = "smg_ammo", 			  	  		["label"] = "رصاص أس م جي", 				["weight"] = 500, 		["type"] = "item", 		["image"] = "smg_ammo.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "رصاص أس م جي."},
	["shotgun_ammo"] 				 = {["name"] = "shotgun_ammo", 			  	  	["label"] = "رصاص شتغن", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "shotgun_ammo.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "رصاص للشتغن"},
	["mg_ammo"] 				 	 = {["name"] = "mg_ammo", 			  	  		["label"] = "رصاص أم جي", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "mg_ammo.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "رصاص للخلاطات"},
	["lockpick"] 					 = {["name"] = "lockpick", 			 	  	  	["label"] = "فاتح أقفال",	["weight"] = 300, 		["type"] = "item", 		["image"] = "lockpick.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = {accept = {"screwdriverset"}, reward = "advancedlockpick", anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Crafting lockpick", ["timeOut"] = 7500,}},   ["description"] = "مفيد جدًا إذا فقدت مفاتيحك كثيرًا .. أو إذا كنت تريد استخدامها لشيء آخر..."},
	["advancedlockpick"] 			 = {["name"] = "advancedlockpick", 			 	["label"] = "فاتح أقفال متقدم", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "advancedlockpick.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "مفيد جدًا إذا فقدت مفاتيحك كثيرًا .. أو إذا كنت تريد استخدامها لشيء آخر"},
	["repairkit"] 					 = {["name"] = "repairkit", 			 	  	["label"] = "عدة تصليح", 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "repairkit.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A nice toolbox with stuff to repair your vehicle."},
	["advancedrepairkit"] 			 = {["name"] = "advancedrepairkit", 			["label"] = "عدة تصليح أفضل", 		["weight"] = 4000, 		["type"] = "item", 		["image"] = "advancedkit.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A nice toolbox with stuff to repair your vehicle.. a little better.."},
	["cleaningkit"] 				 = {["name"] = "cleaningkit", 			 	  	["label"] = "عدة غسيل مركبة", 			["weight"] = 250, 		["type"] = "item", 		["image"] = "cleaningkit.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A microfiber cloth with some soap will let your car sparkle again!"},
	["screwdriverset"] 				 = {["name"] = "screwdriverset", 			    ["label"] = "أدوات", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "screwdriverset.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Very useful to screw... screws.."},
	["drill"] 				 		 = {["name"] = "drill", 			    		["label"] = "دريل", 					["weight"] = 20000, 	["type"] = "item", 		["image"] = "drill.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "The real deal.."},
	["weed_white-widow"] 			 = {["name"] = "weed_white-widow", 			 	["label"] = "مخدر ابيض", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g White Widow"},
	["weed_skunk"] 				  	 = {["name"] = "weed_skunk", 			 		["label"] = "حشيش شرنك", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g Skunk"},
	["weed_purple-haze"] 			 = {["name"] = "weed_purple-haze", 			 	["label"] = "حشيش نوع فاخر", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g Purple Haze"},
	["weed_og-kush"] 				 = {["name"] = "weed_og-kush", 			 		["label"] = "حشيش كوش", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g OG Kush"},
	["weed_amnesia"] 				 = {["name"] = "weed_amnesia", 			 		["label"] = "امنيسيا", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g Amnesia"},
	["weed_ak47"] 				     = {["name"] = "weed_ak47", 			 		["label"] = "AK47 2g", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g AK47"},
	["weed_white-widow_seed"] 		 = {["name"] = "weed_white-widow_seed", 		["label"] = "White Widow Seed", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed seed of White Widow"},
	["weed_skunk_seed"] 			 = {["name"] = "weed_skunk_seed", 			    ["label"] = "Skunk Seed", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of Skunk"},
	["weed_purple-haze_seed"] 		 = {["name"] = "weed_purple-haze_seed", 		["label"] = "Purple Haze Seed", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of Purple Haze"},
	["weed_og-kush_seed"] 			 = {["name"] = "weed_og-kush_seed", 			["label"] = "OGKush Seed", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of OG Kush"},
	["weed_amnesia_seed"] 			 = {["name"] = "weed_amnesia_seed", 			["label"] = "Amnesia Seed", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of Amnesia"},
	["weed_ak47_seed"] 				 = {["name"] = "weed_ak47_seed", 			    ["label"] = "بذور حشيش", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of AK47"},
	["empty_weed_bag"] 				 = {["name"] = "empty_weed_bag", 			    ["label"] = "كيس حشيش فارغ", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-empty-bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A empty bag for weed buds"},
	["weed_nutrition"] 				 = {["name"] = "weed_nutrition", 			    ["label"] = "ماء للحشيش", 		["weight"] = 2000, 		["type"] = "item", 		["image"] = "weed_nutrition.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Plant nutrition"},
	["handcuffs"] 				 	 = {["name"] = "handcuffs", 			    	["label"] = "كلبشات", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "handcuffs.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Comes in handy when people misbehave. Maybe it can be used for something else?"},
	["tunerlaptop"] 				 = {["name"] = "tunerlaptop", 			    	["label"] = "لابتوب برمجة", 				["weight"] = 2000, 		["type"] = "item", 		["image"] = "tunerlaptop.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "With this tunerchip you can get your car on steroids... If you know what you're doing lol"},
	["empty_evidence_bag"] 			 = {["name"] = "empty_evidence_bag", 			["label"] = "كيس أدلة فارغ", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "evidence.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Used a lot to keep evidence. Think about DNA from blood, bullet shells etc."},
	["filled_evidence_bag"] 		 = {["name"] = "filled_evidence_bag", 			["label"] = "كيس ادلة", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "evidence.png", 			["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A filled evidence bag to see who committed the crime >:("},
	["armor"] 		 				 = {["name"] = "armor", 						["label"] = "درع", 					["weight"] = 5000, 	    ["type"] = "item", 		["image"] = "armor.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Some protection won't hurt.. right? (One-time use)"},
	["heavyarmor"] 		 			 = {["name"] = "heavyarmor", 					["label"] = "درع ثقيل", 				["weight"] = 5000, 	    ["type"] = "item", 		["image"] = "armor.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Some protection won't hurt.. right?"},
	["weed_brick"] 		 			 = {["name"] = "weed_brick", 					["label"] = "قطعة حشيش", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "weed_brick.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "1KG Weed Brick to sell to large customers."},
	["coke_brick"] 		 			 = {["name"] = "coke_brick", 					["label"] = "قطعة كوك", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "coke_brick.png", 			["unique"] = true, 		["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Heavy package of cocaine, mostly used for deals and takes a lot of space."},
	["coke_small_brick"] 		 	 = {["name"] = "coke_small_brick", 				["label"] = "صندوق كوك", 			["weight"] = 350, 		["type"] = "item", 		["image"] = "coke_small_brick.png", 	["unique"] = true, 		["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A lot of grams cocaine, mostly used for deals and takes a lot of space."},
	["sandwich"] 				 	 = {["name"] = "sandwich", 			  	  		["label"] = "ساندويتش", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "sandwich.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Nice bread for your stomach."},
	["electronickit"] 				 = {["name"] = "electronickit", 			  	["label"] = "لوح إلكتروني", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "electronickit.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = {accept = {"gatecrack"}, reward = "trojan_usb", anim = nil}, ["description"] = "If you've always wanted to build a robot you can maybe start here.. Maybe you'll be.. The new Elon Musk?"},
	["gatecrack"] 				 	 = {["name"] = "gatecrack", 			  	  	["label"] = "فلاش تهكير بيبان", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "usb_device.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Handy software to tear down some fences."},
	["rolex"] 				 	 	 = {["name"] = "rolex", 			  	  		["label"] = "ساعة ذهبية", 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "rolex_watch.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A golden watch seems like the jackpot to me!"},
	["diamond_ring"] 				 = {["name"] = "diamond_ring", 			  	  	["label"] = "خاتم الماس", 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "diamond_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A diamond ring seems like the jackpot to me!"},
	["goldchain"] 				 	 = {["name"] = "goldchain", 			  	  	["label"] = "سلسلة ذهبية", 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "goldchain.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A golden chain seems like the jackpot to me!"},
	["10kgoldchain"] 				 = {["name"] = "10kgoldchain", 			  	  	["label"] = "10k سلسلة ذهبية", 			["weight"] = 2000, 		["type"] = "item", 		["image"] = "10kgoldchain.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "10 carat golden chain."},
	["trojan_usb"] 				 	 = {["name"] = "trojan_usb", 			  	  	["label"] = "يو اس بي تهكير", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "usb_device.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Handy software to shut down some systems."},
	["security_card_01"] 			 = {["name"] = "security_card_01", 			  	["label"] = "بطاقة الحماية أ", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "security_card_01.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security card belonging to the Blaine County Savings Bank."},
	["security_card_02"] 			 = {["name"] = "security_card_02", 			  	["label"] = "بطاقة الحماية ب", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "security_card_02.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security card belonging to the Pacific Savings Bank."},
	["airport_card"] 			 = {["name"] = "airport_card", 			  	["label"] = "بطاقة أمن المطار", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "airport_card.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "حامل البطاقة مسموح له دخول المطار السري"},
	["airport_card2"] 			 = {["name"] = "airport_card2", 			  	["label"] = "بطاقة أمن المطار 2", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "airport_card2.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "حامل البطاقة مسموح له دخول المطار السري"},
	["police_stormram"] 			 = {["name"] = "police_stormram", 			  	["label"] = "كسر البيبان", 				["weight"] = 18000, 	["type"] = "item", 		["image"] = "police_stormram.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A nice tool to break into doors."},
	["rolling_paper"] 			 	 = {["name"] = "rolling_paper", 			  	["label"] = "ورقة لف", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "rolling_paper.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = {accept = {"weed_white-widow", "weed_skunk", "weed_purple-haze", "weed_og-kush", "weed_amnesia", "weed_ak47"}, reward = "joint", anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Rolling joint", ["timeOut"] = 5000,}},   ["description"] = "This is a placeholder description"},
	["radio"] 			 	 		 = {["name"] = "radio", 			  			["label"] = "راديو", 					["weight"] = 2000, 		["type"] = "item", 		["image"] = "radio.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "You can communicat with this through a signaal"},
	["radiobreaker"] 			 	 		 = {["name"] = "radiobreaker", 			  			["label"] = "جهاز اختراق الراديو", 					["weight"] = 2000, 		["type"] = "item", 		["image"] = "radiobreaker.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "جهاز يستخدم لاختراق ترددات الراديو"},
	["stickynote"] 			 	 	 = {["name"] = "stickynote", 			  		["label"] = "ملاحظة", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "stickynote.png", 			["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Sometimes handy to remember something :)"},
	["phone"] 			 	 	 	 = {["name"] = "phone", 			  			["label"] = "هاتف", 					["weight"] = 700, 		["type"] = "item", 		["image"] = "phone.png", 				["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Neat phone ya got there"},
	["fitbit"] 			 	 	 	 = {["name"] = "fitbit", 			  			["label"] = "ساعة", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "fitbit.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "I like fitbit"},
	["thermite"] 			 	 	 = {["name"] = "thermite", 			  			["label"] = "مشعلة نار", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "thermite.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sometimes you'd want everything to burn.."},
	["goldbar"] 			 	 	 = {["name"] = "goldbar", 			  			["label"] = "سبيكة ذهب", 				["weight"] = 7000, 	    ["type"] = "item", 		["image"] = "goldbar.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Looks expensive to me o.o"},
    ["cryptostick"] 			 	 = {["name"] = "cryptostick", 			  		["label"] = "عملة الكريبتو", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "cryptostick.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Why would someone ever buy money that doesn't exist.. How many would it contain..?"},
    ["radioscanner"] 			 	 = {["name"] = "radioscanner", 			  		["label"] = "كاشف راديو", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "radioscanner.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "With this you can get some police alerts. Not 100% effective.."},
    ["dendrogyra_coral"] 			 = {["name"] = "dendrogyra_coral", 			  	["label"] = "دندروغرام", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "dendrogyra_coral.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "#Coral yow"},
    ["pearl"] 		             	 = {["name"] = "pearl", 			         	["label"] = "لؤلؤ", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "pearl.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "يا لك من محظوظ لديك لؤلؤ"},
    ["antipatharia_coral"] 			 = {["name"] = "antipatharia_coral", 			["label"] = "مرجان", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "antipatharia_coral.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "#Coral yow"},
    ["jerry_can"] 			 		 = {["name"] = "jerry_can", 					["label"] = "تنك وقود", 			["weight"] = 20000, 	["type"] = "item", 		["image"] = "jerry_can.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "#Fuel like #YOLO"},
	["moneybag"] 			 		 = {["name"] = "moneybag", 						["label"] = "حقيبة أموال", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "moneybag.png", 			["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A bag with cash."},
	["washkey"] 			 		 = {["name"] = "washkey", 						["label"] = "مفتاح C", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "washkey.png", 			["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "مفتاح لاغراض غسيل الاموال"},
	["diving_gear"] 			     = {["name"] = "diving_gear", 					["label"] = "عدة غوص", 				["weight"] = 30000, 	["type"] = "item", 		["image"] = "diving_gear.png", 			["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hmm lets dive lol yay."},
	["parachute"] 			   		 = {["name"] = "parachute", 					["label"] = "مظلة", 				["weight"] = 30000, 	["type"] = "item", 		["image"] = "parachute.png", 			["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "The sky is the limit! Woohoo!"},
	-- ["smoketrailred"] 			   	 = {["name"] = "smoketrailred", 				["label"] = "Smoke Trail Red", 		["weight"] = 50,	 	["type"] = "item", 		["image"] = "smoketrailred.png",		["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Leaves a red trail when flying. Woot!"},
	["snspistol_part_1"] 			 = {["name"] = "snspistol_part_1", 				["label"] = "حلقة السلاح", 				["weight"] = 1500, 		["type"] = "item", 		["image"] = "snspistol_part_1.png", 	["unique"] = false, 	    ["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Loop of a SNS Pistol"},
	["snspistol_part_2"] 			 = {["name"] = "snspistol_part_2", 				["label"] = "زناد السلاح", 				["weight"] = 1500, 		["type"] = "item", 		["image"] = "snspistol_part_2.png", 	["unique"] = false, 	    ["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Trigger of a SNS Pistol"},
	["snspistol_part_3"] 			 = {["name"] = "snspistol_part_3", 				["label"] = "مشط السلاح", 				["weight"] = 1500, 		["type"] = "item", 		["image"] = "snspistol_part_3.png", 	["unique"] = false, 	    ["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = {accept = {"snspistol_part_1"}, reward = "snspistol_stage_1", anim = {["dict"] = "anim@amb@business@weed@weed_inspecting_high_dry@", ["lib"] = "weed_inspecting_high_base_inspector", ["text"] = "Atttaching attachments", ["timeOut"] = 15000,}},   ["description"] = "Clip of a SNS Pistol"},
	["snspistol_stage_1"] 			 = {["name"] = "snspistol_stage_1", 			["label"] = "جسم السلاح", 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "snspistol_stage_1.png", 	["unique"] = false, 	    ["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil, ["description"] = "SNS w/ Loop & Clip"},
	["bandage"] 			 		 = {["name"] = "bandage", 						["label"] = "ضمادات", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "bandage.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil, ["description"] = "A bandage works every time"},
	["painkillers"] 			 	 = {["name"] = "painkillers", 					["label"] = "باندول", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "painkillers.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil, ["description"] = "For pain you can't stand anymore, take this pill that'd make you feel great again"},
	["binoculars"] 			 	 	 = {["name"] = "binoculars", 					["label"] = "منظار", 				["weight"] = 600, 		["type"] = "item", 		["image"] = "binoculars.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil, ["description"] = "Sneaky Breaky.."},
	["snowball"] 		     		 = {["name"] = "snowball", 		 	  			["label"] = "ثلج", 				["weight"] = 0, 		["type"] = "item", 	 	["image"] = "snowball.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil, ["description"] = "Should have catched it :D"},
	["firework1"] 				 	 = {["name"] = "firework1", 			  	  	["label"] = "العاب نارية 1", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "firework1.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Happy and healthy 2020 <3 Lua Leaks"},
	["firework2"] 				 	 = {["name"] = "firework2", 			  	  	["label"] = "العاب نارية 2", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "firework2.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Happy and healthy 2020 <3 Lua Leaks"},
	["firework3"] 				 	 = {["name"] = "firework3", 			  	  	["label"] = "العاب نارية 3", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "firework3.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Happy and healthy 2020 <3 Lua Leaks"},
	["firework4"] 				 	 = {["name"] = "firework4", 			  	  	["label"] = "العاب نارية 4", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "firework4.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Happy and healthy 2020 <3 Lua Leaks"},
	["iphone"] 				 	 	 = {["name"] = "iphone", 			  	  		["label"] = "ايفون", 				    ["weight"] = 1000, 		["type"] = "item", 		["image"] = "iphone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Very expensive phone"},
	["samsungphone"] 				 = {["name"] = "samsungphone", 			  	  	["label"] = "سامسونغ", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "samsungphone.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Very expensive phone"},
	["laptop"] 				 		 = {["name"] = "laptop", 			  	  		["label"] = "لابتوب", 					["weight"] = 4000, 		["type"] = "item", 		["image"] = "laptop.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Expensive game right?"},
	["tablet"] 				 		 = {["name"] = "tablet", 			  	  		["label"] = "تابلت", 					["weight"] = 2000, 		["type"] = "item", 		["image"] = "tablet.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Expensive game right?"},
	["lighter"] 				 	 = {["name"] = "lighter", 			  	  		["label"] = "ولاعة", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "lighter.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "On new years eve a nice fire to stand next to"},
	["certificate"] 				 = {["name"] = "certificate", 			  	  	["label"] = "شهادة", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "certificate.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Certificate that proves you own certain stuff"},
	["nitrous"] 				 	 = {["name"] = "nitrous", 			  	  		["label"] = "نيتروس", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "nitrous.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Speed up, gas pedal! :D"},
	["walkstick"] 				 	 = {["name"] = "walkstick", 			  	  	["label"] = "عصا", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "walkstick.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Walking stick for ya'll grannies out there.. HAHA"},
	["harness"] 				 	 = {["name"] = "harness", 			  	  		["label"] = "طقم للسباق", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "harness.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Racing Harness so no matter what you stay in the caaaaaaaaaaaaaar.."},
	["markedbills"] 				 = {["name"] = "markedbills", 			  	  	["label"] = "اموال مسروقة", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "markedbills.png", 			["unique"] = true, 		["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["pistol_suppressor"] 			 = {["name"] = "pistol_suppressor", 			["label"] = "كاتم صوت", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "pistol_suppressor.png", 	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["pistol_extendedclip"] 		 = {["name"] = "pistol_extendedclip", 			["label"] = "مشط اضافي", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "pistol_extendedclip.png", 	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["smg_extendedclip"] 		 	 = {["name"] = "smg_extendedclip", 				["label"] = "مشط اضافي", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "smg_extendedclip.png", 	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["smg_flashlight"] 		 	 	 = {["name"] = "smg_flashlight", 				["label"] = "فلاش لايت", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "smg_flashlight.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["smg_scope"] 		 	 		 = {["name"] = "smg_scope", 					["label"] = "سكوب", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "smg_scope.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["smg_suppressor"] 			 	 = {["name"] = "smg_suppressor", 				["label"] = "كاتم صوت", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "smg_suppressor.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["rifle_extendedclip"] 		 	 = {["name"] = "rifle_extendedclip", 			["label"] = "مشط اضافي", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "rifle_extendedclip.png", 	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["rifle_drummag"] 		 	 	 = {["name"] = "rifle_drummag", 				["label"] = "رشاش درم", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "rifle_drummag.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["rifle_suppressor"] 			 = {["name"] = "rifle_suppressor", 				["label"] = "كاتم صوت", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "rifle_suppressor.png", 	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Money?"},
	["labkey"] 			 			 = {["name"] = "labkey", 						["label"] = "مفتاح", 						["weight"] = 500, 		["type"] = "item", 		["image"] = "labkey.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Key for a lock..?"},
	["pinger"] 			 			 = {["name"] = "pinger", 						["label"] = "جهاز استقبال", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "pinger.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "With a pinger and your phone you can send out your location"},
	["policecard"] 					 = {["name"] = "policecard", 			 	  	  	["label"] = "البطاقه العسكريه", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "policecard.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "police card"},
	["firstaid"] 			 		 = {["name"] = "firstaid", 						["label"] = "اسعافات اولية", 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "firstaid.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "You can use this First Aid kit to get people back on their feet."},
	["printerdocument"] 			 = {["name"] = "printerdocument", 				["label"] = "ملف", 				["weight"] = 500, 		["type"] = "item", 		["image"] = "printerdocument.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A nice document"},
	
	    ["cpbarrel"]                  = {["name"] = "cpbarrel",                   ["label"] = "CP Barrel",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "cpbarrel.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Combat Pistol barrel part"},
    ["cpcomponents"]                  = {["name"] = "cpcomponents",                   ["label"] = "CP Components",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "compo.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Combat Pistol components"},
    ["cptrigger"]                  = {["name"] = "cptrigger",                   ["label"] = "CP Trigger",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "cptrigger.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Combat Pistol trigger"},
    ["cpspring"]                  = {["name"] = "cpspring",                   ["label"] = "CP Springs",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "cpspring.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Combat Pistol springs"},
    ["cphandle"]                  = {["name"] = "cphandle",                   ["label"] = "CP Handle",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "cphandle.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Combat Pistol handle"},
	
	    ["vpbarrel"]                  = {["name"] = "vpbarrel",                   ["label"] = "VP Barrel",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "vpbarrel.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Vintage Pistol barrel part"},
    ["vpcomponents"]                  = {["name"] = "vpcomponents",                   ["label"] = "VP Components",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "compo.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Vintage Pistol components"},
    ["vptrigger"]                  = {["name"] = "vptrigger",                   ["label"] = "VP Trigger",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "vptrigger.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Vintage Pistol trigger"},
    ["vpspring"]                  = {["name"] = "vpspring",                   ["label"] = "VP Springs",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "vpspring.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Vintage Pistol springs"},
    ["vphandle"]                  = {["name"] = "vphandle",                   ["label"] = "VP Handle",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "vphandle.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Vintage Pistol handle"},

    ["hpbarrel"]                  = {["name"] = "hpbarrel",                   ["label"] = "HP Barrel",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "hpbarrel.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Heavy Pistol barrel part"},
    ["hpcomponents"]                  = {["name"] = "hpcomponents",                   ["label"] = "HP Components",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "compo.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Heavy Pistol components"},
    ["hptrigger"]                  = {["name"] = "hptrigger",                   ["label"] = "HP Trigger",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "hptrigger.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Heavy Pistol trigger"},
    ["hpspring"]                  = {["name"] = "hpspring",                   ["label"] = "HP Springs",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "hpspring.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Heavy Pistol springs"},
    ["hphandle"]                  = {["name"] = "hphandle",                   ["label"] = "HP Handle",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "hphandle.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Heavy Pistol handle"},
    ["hpaim"]                  = {["name"] = "hpaim",                   ["label"] = "HP Aim",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "hpaim.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Heavy Pistol handle"},

    ["dpbarrel"]                  = {["name"] = "dpbarrel",                   ["label"] = "DP Barrel",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "dpbarrel.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "50. Cal Pistol barrel part"},
    ["dpcomponents"]                  = {["name"] = "dpcomponents",                   ["label"] = "DP Components",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "compo.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "50. Cal Pistol components"},
    ["dptrigger"]                  = {["name"] = "dptrigger",                   ["label"] = "DP Trigger",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "dptrigger.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "50. Cal Pistol trigger"},
    ["dpspring"]                  = {["name"] = "dpspring",                   ["label"] = "DP Springs",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "dpspring.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "50. Cal Pistol springs"},
    ["dphandle"]                  = {["name"] = "dphandle",                   ["label"] = "DP Handle",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "dphandle.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "50. Cal Pistol handle"},  
["ak47frame"]                  = {["name"] = "ak47frame",                   ["label"] = "AK47 Frame",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "ak47frame.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ak47 Frame part"},
["ak47barrel"]                  = {["name"] = "ak47barrel",                   ["label"] = "AK47 Barrel",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "ak47barrel.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "AK47 Barrel part"},
["ak47buttstock"]                  = {["name"] = "ak47buttstock",                   ["label"] = "AK47 Buttstock",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "ak47buttstock.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "AK47 Buttstock part"},
["ak47grip"]                  = {["name"] = "ak47grip",                   ["label"] = "AK47 Grip",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "ak47grip.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "AK47 Grip part"},
["ak47forend"]                  = {["name"] = "ak47forend",                   ["label"] = "AK47 Forend",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "ak47forend.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "AK47 Forend part"},
["ak47spring"]                  = {["name"] = "ak47spring",                   ["label"] = "AK47 Springs",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "ak47spring.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "AK47 Spring part"},
["ak47piston"]                  = {["name"] = "ak47piston",                   ["label"] = "AK47 Piston",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "ak47piston.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "AK47 Piston part"},
["ak47gastube"]                  = {["name"] = "ak47gastube",                   ["label"] = "AK47 Gas tube",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "ak47gastube.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "AK47 Gas Tube part"},
	
	
	
	["mdt"] 		 	         	 = {["name"] = "mdt", 			            	["label"] = "نظام الشرطة", 				["weight"] = 500, 		["type"] = "item", 		["image"] = "mdt.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "تابلت يستعمل للشرطة في تسجيل اخر البلاغات الخ"},
	["ruinedradio"] 		 	         	 = {["name"] = "ruinedradio", 			["label"] = "راديو متعطل", 				["weight"] = 1, 		["type"] = "item", 		["image"] = "ruinedradio.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "راديو متعطل بسبب تعرضه للماء"},
	["ruinedphone"] 		 	         	 = {["name"] = "ruinedphone", 			["label"] = "هاتف متعطل", 				["weight"] = 1, 		["type"] = "item", 		["image"] = "ruinedphone.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "هاتف متعطل بسبب تعرضه للماء"},
	["jewelrycard"]                  = {["name"] = "jewelrycard",                   ["label"] = "مفتاج المجهورات",              ["weight"] = 1,         ["type"] = "item",      ["image"] = "jewelrycard.png",          ["unique"] = true,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "مفتاح لفتح باب محل المجوهرات"},
    ["fleecacard"]                  = {["name"] = "fleecacard",                   ["label"] = "بطاقة المصرف أ",              ["weight"] = 1,         ["type"] = "item",      ["image"] = "fleecacard.png",          ["unique"] = true,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "بطاقة امنية لبنك فليسا المركزي."},
    ["fleecacard2"]                  = {["name"] = "fleecacard2",                   ["label"] = "بطاقة مصرف ب",              ["weight"] = 1,         ["type"] = "item",      ["image"] = "fleecacard2.png",          ["unique"] = true,     ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "بطاقة بنك امنية لبنك فليسا المركزي."},
    ["inkedmoney"]                  = {["name"] = "inkedmoney",                   ["label"] = "اموال مسروقة",	["weight"] = 0.0001,  ["type"] = "item",      ["image"] = "inkedmoney.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "اموال قابلة للغسيل"},
    ["inkedmoney_new"]                  = {["name"] = "inkedmoney_new",                   ["label"] = "Inked Money",	["weight"] = 0.0001,  ["type"] = "item",      ["image"] = "inkedmoney.png",          ["unique"] = true,     ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "اموال قابلة للغسيل"},
	["stethoscope"]                  = {["name"] = "stethoscope",                   ["label"] = "سماعة الخزنات",              ["weight"] = 2,         ["type"] = "item",      ["image"] = "stethoscope.png",          ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "تستخدم لفتح الخزنات المقفلة بإحكام"},
	["d_cigar"] 			 	 = {["name"] = "d_cigar", 			  		["label"] = "سيجار", 			["weight"] = 0.1, 		["type"] = "item", 		["image"] = "d_cigar.png", 			["unique"] = false, 		["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "سيجار لتقليل التوتر."},
    ["d_cigarette"] 			 	 = {["name"] = "d_cigarette", 			  		["label"] = "سيجارة", 			["weight"] = 0.1, 		["type"] = "item", 		["image"] = "d_cigarette.png", 			["unique"] = false, 		["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "سيجارة للتقليل من التوتر."},
	["fishingrod"] 		 		     = {["name"] = "fishingrod",           		    ["label"] = "صنارة للصيد",	 		    ["weight"] = 3000, 		["type"] = "item", 		["image"] = "fishingrod.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "صنارة صيد"},
	["fishingbait"] 		 		 = {["name"] = "fishingbait",           		["label"] = "طعم للسمك",	 		    ["weight"] = 100, 		["type"] = "item", 		["image"] = "fishingbait.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "طعم للسمك"},
	["fish"] 		 		         = {["name"] = "fish",           		        ["label"] = "سمكة",	 		    ["weight"] = 1000, 		["type"] = "item", 		["image"] = "fish.png", 			    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["seatrout"] 		 		     = {["name"] = "seatrout",           		    ["label"] = "السلمون البحري",	 		    ["weight"] = 1000, 		["type"] = "item", 		["image"] = "fish.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["mahi"] 		 		         = {["name"] = "mahi",           		        ["label"] = "ماهي",	 		    		["weight"] = 1000, 		["type"] = "item", 		["image"] = "mahi.png", 			    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["stripedbass"] 		 		 = {["name"] = "stripedbass",           		["label"] = "باس مخطط",	 		    ["weight"] = 1000, 		["type"] = "item", 		["image"] = "fish.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["bluefish"] 		 		     = {["name"] = "bluefish",           		    ["label"] = "سمكة زرقاء",	 		    ["weight"] = 1000, 		["type"] = "item", 		["image"] = "bluefish.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["redfish"] 		 		     = {["name"] = "redfish",           		    ["label"] = "سمكة حمراء",	 		    	["weight"] = 1000, 		["type"] = "item", 		["image"] = "fish.png", 			    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["pacifichalibut"] 		 		 = {["name"] = "pacifichalibut",           		["label"] = "سمك الهلبوت الهادئ",	 		["weight"] = 1000, 		["type"] = "item", 		["image"] = "fish.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["goldfish"] 		 		     = {["name"] = "goldfish",           		    ["label"] = "سمكة ذهبية",	 		    	["weight"] = 1000, 		["type"] = "item", 		["image"] = "fish.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["largemouthbass"] 		 		 = {["name"] = "largemouthbass",           		["label"] = "ارجموث باس",	 		["weight"] = 1000, 		["type"] = "item", 		["image"] = "fish.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["salmon"] 		 		         = {["name"] = "salmon",           		        ["label"] = "سالمون",	 		    	["weight"] = 1000, 		["type"] = "item", 		["image"] = "fish.png", 			    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["catfish"] 		 		     = {["name"] = "catfish",           		    ["label"] = "سمك السلور",	 		    	["weight"] = 1000, 		["type"] = "item", 		["image"] = "fish.png", 			    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["tigersharkmeat"] 		 		 = {["name"] = "tigersharkmeat",           		["label"] = "لحم القرش",	 		["weight"] = 5000,  	["type"] = "item", 		["image"] = "fish.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["stingraymeat"] 		 		 = {["name"] = "stingraymeat",           		["label"] = "لحم الراي اللاسع",	 		["weight"] = 5000,  	["type"] = "item", 		["image"] = "fish.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["killerwhalemeat"] 		 	 = {["name"] = "killerwhalemeat",           	["label"] = "لحم الحوت القاتل",	 	["weight"] = 5000, 	    ["type"] = "item", 		["image"] = "fish.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "اسماك"},
	["taco"] 				 	 = {["name"] = "taco", 			  	  		["label"] = "وجبة تاكو", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "hero_box01.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "وجبة تاكو."},
    ["lhm"] 		 			 	 = {["name"] = "lhm",       		    		["label"] = "لحم ني",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "meat2.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Some big taco brother"},
	["lettuce"] 	 			 	 = {["name"] = "lettuce",       			    ["label"] = "خس",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "lettuce.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Some big taco brother"},
	["taco-box"] 	 			 	 = {["name"] = "taco-box",       			    ["label"] = "كيس توصيل تاكو",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "taco-box.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Some big taco brother"},
	["taco-bag"] 	 			 	 = {["name"] = "taco-bag",       			    ["label"] = "كيس توصيل تاكو",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "taco-bag.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Some big taco brother"},
	["meat"] 		 			 	 = {["name"] = "meat",       		    		["label"] = "لحم",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "meat.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Some big taco brother"},
	["alive_chicken"] 		 		 = {["name"] = "alive_chicken",       		    		["label"] = "دجاج حي",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "alive_chicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "دجاج حي غير صالح للاكل"},
	["slaughtered_chicken"] 		 = {["name"] = "slaughtered_chicken",       		    		["label"] = "دجاج مذبوح",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "slaughtered_chicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "دجاج مذبوح جاهز للتغليف"},
	["packaged_chicken"] 		 			 	 = {["name"] = "packaged_chicken",       		    		["label"] = "صندوق دجاج",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "packaged_chicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "دجاج مغلف"},
	["casinochips"] 		 	 	 = {["name"] = "casinochips",           		["label"] = "كوينز",	 			["weight"] = 1, 		["type"] = "item", 		["image"] = "casino_chips.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "شيبس الكازينو"},
	["headbag"] 			 	 	 = {["name"] = "headbag", 			  			["label"] = "خيشة", 					["weight"] = 70, 	    ["type"] = "item", 		["image"] = "headbag.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Headbag"},
	["hifi"] 			   	         = {["name"] = "hifi", 			 	  	  	    ["label"] = "مشغل موسيقى", 		            ["weight"] = 2, 		["type"] = "item", 		["image"] = "hifi.png", 				["unique"] = false,     ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ghettoblaster"},
}

-- // HASH WEAPON ITEMS, NEED SOMETIMES TO GET INFO FOR CLIENT

QBShared.Weapons = {
	-- // WEAPONS
	[GetHashKey("weapon_unarmed")] 				 = {["name"] = "weapon_unarmed", 		 	  	["label"] = "Fists", 					["weight"] = 1000, 		["type"] = "weapon",	["ammotype"] = nil, 					["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_knife")] 				 = {["name"] = "weapon_knife", 			 	  	["label"] = "Knife", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_nightstick")] 			 = {["name"] = "weapon_nightstick", 		 	["label"] = "Nightstick", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_hammer")] 				 = {["name"] = "weapon_hammer", 			 	["label"] = "Hammer", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_bat")] 					 = {["name"] = "weapon_bat", 			 	  	["label"] = "Bat", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_golfclub")] 			 = {["name"] = "weapon_golfclub", 		 	  	["label"] = "Golfclub", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_crowbar")] 				 = {["name"] = "weapon_crowbar", 		 	  	["label"] = "Crowbar", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_pistol")] 				 = {["name"] = "weapon_pistol", 			 	["label"] = "Walther P99", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_pistol_mk2")] 			 = {["name"] = "weapon_pistol_mk2", 			["label"] = "Pistol Mk II", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "pistolmk2.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_combatpistol")] 		 = {["name"] = "weapon_combatpistol", 	 	  	["label"] = "Combat Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "combatpistol.png", 	["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_appistol")] 			 = {["name"] = "weapon_appistol", 		 	  	["label"] = "AP Pistol", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_pistol50")] 			 = {["name"] = "weapon_pistol50", 		 	  	["label"] = "Pistol .50 Cal", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_microsmg")] 			 = {["name"] = "weapon_microsmg", 		 	  	["label"] = "Micro SMG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_smg")] 				 	 = {["name"] = "weapon_smg", 			 	  	["label"] = "SMG", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_assaultsmg")] 			 = {["name"] = "weapon_assaultsmg", 		 	["label"] = "Assault SMG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_assaultrifle")] 		 = {["name"] = "weapon_assaultrifle", 	 	  	["label"] = "Assault Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_carbinerifle")] 		 = {["name"] = "weapon_carbinerifle", 	 	  	["label"] = "Carbine Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "carbinerifle.png", 	["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_advancedrifle")] 		 = {["name"] = "weapon_advancedrifle", 	 	  	["label"] = "Advanced Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_mg")] 					 = {["name"] = "weapon_mg", 				 	["label"] = "Machinegun", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_combatmg")] 			 = {["name"] = "weapon_combatmg", 		 	  	["label"] = "Combat MG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_pumpshotgun")] 			 = {["name"] = "weapon_pumpshotgun", 	 	  	["label"] = "Pump Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_sawnoffshotgun")] 		 = {["name"] = "weapon_sawnoffshotgun", 	 	["label"] = "Sawn-off Shotgun", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_assaultshotgun")] 		 = {["name"] = "weapon_assaultshotgun", 	 	["label"] = "Assault Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_bullpupshotgun")] 		 = {["name"] = "weapon_bullpupshotgun", 	 	["label"] = "Bullpup Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_stungun")] 				 = {["name"] = "weapon_stungun", 		 	  	["label"] = "Taser", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_sniperrifle")] 			 = {["name"] = "weapon_sniperrifle", 	 	  	["label"] = "Sniper Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_heavysniper")] 			 = {["name"] = "weapon_heavysniper", 	 	  	["label"] = "Heavy Sniper", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_remotesniper")] 		 = {["name"] = "weapon_remotesniper", 	 	  	["label"] = "Remote Sniper", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER_REMOTE",	["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_grenadelauncher")] 		 = {["name"] = "weapon_grenadelauncher", 	  	["label"] = "Grenade Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_GRENADELAUNCHER",	["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_grenadelauncher_smoke")] = {["name"] = "weapon_grenadelauncher_smoke", 	["label"] = "Smoke Grenade Launcher", 	["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_GRENADELAUNCHER",	["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_specialcarbine_mk2")] 					 = {["name"] = "weapon_specialcarbine_mk2", 			      	["label"] = "specialcarbine mk2", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_carbinerifle_mk2")] 					 = {["name"] = "weapon_carbinerifle_mk2", 			      	["label"] = "carbinerifle mk2", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_bullpuprifle_mk2")] 					 = {["name"] = "weapon_bullpuprifle_mk2", 			      	["label"] = "bullpuprifle mk2", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_assaultrifle_mk2")] 					 = {["name"] = "weapon_assaultrifle_mk2", 			      	["label"] = "assaultrifle mk2", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_minigun")] 				 = {["name"] = "weapon_minigun", 		      	["label"] = "Minigun", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MINIGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_grenade")] 				 = {["name"] = "weapon_grenade", 		      	["label"] = "Grenade", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_stickybomb")] 			 = {["name"] = "weapon_stickybomb", 		    ["label"] = "C4", 						["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "stickybomb.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_smokegrenade")] 		 = {["name"] = "weapon_smokegrenade", 	      	["label"] = "Smoke Grenade", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_bzgas")] 				 = {["name"] = "weapon_bzgas", 			      	["label"] = "BZ Gas", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_molotov")] 				 = {["name"] = "weapon_molotov", 		      	["label"] = "Molotov", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_fireextinguisher")] 	 = {["name"] = "weapon_fireextinguisher",      	["label"] = "Fire Extinguisher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_petrolcan")] 			 = {["name"] = "weapon_petrolcan", 		 	  	["label"] = "Petrol Can", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PETROLCAN",		["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_briefcase")] 			 = {["name"] = "weapon_briefcase", 		 	  	["label"] = "Briefcase", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_briefcase_02")] 		 = {["name"] = "weapon_briefcase_02", 	 	  	["label"] = "Briefcase", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_ball")] 				 = {["name"] = "weapon_ball", 			 	  	["label"] = "Ball", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_BALL",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_flare")] 				 = {["name"] = "weapon_flare", 			 	  	["label"] = "Flare pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_FLARE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_snspistol")] 			 = {["name"] = "weapon_snspistol", 		 	  	["label"] = "SNS Pistol", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_bottle")] 				 = {["name"] = "weapon_bottle", 			 	["label"] = "Broken Bottle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_gusenberg")] 			 = {["name"] = "weapon_gusenberg", 		 	  	["label"] = "Thompson SMG", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_MG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_specialcarbine")] 		 = {["name"] = "weapon_specialcarbine", 	 	["label"] = "Special Carbine", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_heavypistol")] 			 = {["name"] = "weapon_heavypistol", 	 	  	["label"] = "Heavy Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_bullpuprifle")] 		 = {["name"] = "weapon_bullpuprifle", 	 	  	["label"] = "Bullpup Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_dagger")] 				 = {["name"] = "weapon_dagger", 			 	["label"] = "Dagger", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_vintagepistol")] 		 = {["name"] = "weapon_vintagepistol", 	 	  	["label"] = "Vintage Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "weapon_vintagepistol.png", ["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_firework")] 			 = {["name"] = "weapon_firework", 		 	  	["label"] = "Firework Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_musket")] 			     = {["name"] = "weapon_musket", 			 	["label"] = "Musket", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_heavyshotgun")] 		 = {["name"] = "weapon_heavyshotgun", 	 	  	["label"] = "Heavy Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_marksmanrifle")] 		 = {["name"] = "weapon_marksmanrifle", 	 	  	["label"] = "Marksman Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SNIPER",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_hominglauncher")] 		 = {["name"] = "weapon_hominglauncher", 	 	["label"] = "Homing Launcher", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_STINGER",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_proxmine")] 			 = {["name"] = "weapon_proxmine", 		 	  	["label"] = "Proxmine Grenade", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_snowball")] 		     = {["name"] = "weapon_snowball", 		 	  	["label"] = "Snowball", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_flaregun")] 			 = {["name"] = "weapon_flaregun", 		 	  	["label"] = "Flare Gun", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_FLARE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_garbagebag")] 			 = {["name"] = "weapon_garbagebag", 		 	["label"] = "Garbage Bag", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_handcuffs")] 			 = {["name"] = "weapon_handcuffs", 		 	  	["label"] = "Handcuffs", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_combatpdw")] 			 = {["name"] = "weapon_combatpdw", 		 	  	["label"] = "Combat PDW", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_marksmanpistol")] 		 = {["name"] = "weapon_marksmanpistol", 	 	["label"] = "Marksman Pistol", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_knuckle")] 				 = {["name"] = "weapon_knuckle", 		 	  	["label"] = "Knuckle", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_hatchet")] 				 = {["name"] = "weapon_hatchet", 		 	  	["label"] = "Hatchet", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_railgun")] 				 = {["name"] = "weapon_railgun", 		 	  	["label"] = "Railgun", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_machete")] 				 = {["name"] = "weapon_machete", 		 	  	["label"] = "Machete", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_machinepistol")] 		 = {["name"] = "weapon_machinepistol", 	 	  	["label"] = "Tec-9", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_switchblade")] 			 = {["name"] = "weapon_switchblade", 	 	  	["label"] = "Switchblade", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_revolver")] 			 = {["name"] = "weapon_revolver", 		 	  	["label"] = "Revolver", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_PISTOL",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_dbshotgun")] 			 = {["name"] = "weapon_dbshotgun", 		 	  	["label"] = "Double-barrel Shotgun", 	["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_compactrifle")] 		 = {["name"] = "weapon_compactrifle", 	 	  	["label"] = "Compact Rifle", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_RIFLE",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_autoshotgun")] 			 = {["name"] = "weapon_autoshotgun", 	 	  	["label"] = "Auto Shotgun", 			["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_battleaxe")] 			 = {["name"] = "weapon_battleaxe", 		 	  	["label"] = "Battle Axe", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_compactlauncher")] 		 = {["name"] = "weapon_compactlauncher",  	  	["label"] = "Compact Launcher", 		["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_minismg")] 				 = {["name"] = "weapon_minismg", 		 	  	["label"] = "Mini SMG", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SMG",				["image"] = "weapon_minismg.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_pipebomb")] 			 = {["name"] = "weapon_pipebomb", 		 	  	["label"] = "Pipe bom", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_poolcue")] 				 = {["name"] = "weapon_poolcue", 		 	  	["label"] = "Poolcue", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_wrench")] 				 = {["name"] = "weapon_wrench", 			 	["label"] = "Wrench", 					["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "placeholder.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_autoshotgun")] 		 	 = {["name"] = "weapon_autoshotgun", 	 		["label"] = "Sweeper Shotgun", 			["weight"] = 3000, 		["type"] = "weapon", 	["ammotype"] = "AMMO_SHOTGUN",			["image"] = "sweepershotgun.png", 	["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
	[GetHashKey("weapon_bread")] 				 = {["name"] = "weapon_bread", 				 	["label"] = "Baquette", 				["weight"] = 1000, 		["type"] = "weapon", 	["ammotype"] = nil,						["image"] = "baquette.png", 		["unique"] = true, 		["useable"] = false, 	["description"] = "This is a placeholder description"},
}

-- // VEHICLES
QBShared.Vehicles = {
	[GetHashKey("blista")] = {
		["name"] = "R4",
		["brand"] = "R4",
		["model"] = "blista",
		["price"] = 8000,
		["category"] = "compacts",
		["hash"] = GetHashKey("blista"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/c/c0/Blista-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "pdm",
	},
	[GetHashKey("205")] = {
		["name"] = "205",
		["brand"] = "Renault",
		["model"] = "205",
		["price"] = 8000,
		["category"] = "compacts",
		["hash"] = GetHashKey("205"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/c/c0/Blista-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "pdm",
	},
	[GetHashKey("futo")] = {
		["name"] = "Super5",
		["brand"] = "Renault",
		["model"] = "futo",
		["price"] = 20000,
		["category"] = "compacts",
		["hash"] = GetHashKey("futo"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/6/67/Futo-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "pdm",
	},
	[GetHashKey("moonbeam")] = {
		["name"] = "Kangoo",
		["brand"] = "Renault",
		["model"] = "moonbeam",
		["price"] = 20000,
		["category"] = "compacts",
		["hash"] = GetHashKey("moonbeam"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/6/67/Futo-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "pdm",
	},	
	[GetHashKey("sultan")] = {
		["name"] = "Symbol",
		["brand"] = "Renault",
		["model"] = "sultan",
		["price"] = 56500,
		["category"] = "compacts",
		["hash"] = GetHashKey("sultan"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/b/bb/Sultan-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "pdm",
	},
	[GetHashKey("issi2")] = {
		["name"] = "Stepway",
		["brand"] = "Renault",
		["model"] = "issi2",
		["price"] = 56500,
		["category"] = "compacts",
		["hash"] = GetHashKey("issi2"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/b/bb/Sultan-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "pdm",
	},	
	[GetHashKey("17octavia")] = {
		["name"] = "Octavia",
		["brand"] = "Skoda",
		["model"] = "17octavia",
		["price"] = 56500,
		["category"] = "compacts",
		["hash"] = GetHashKey("17octavia"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/b/bb/Sultan-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "pdm",
	},	
	[GetHashKey("boxville")] = {
		["name"] = "Master",
		["brand"] = "Renault",
		["model"] = "boxville",
		["price"] = 56500,
		["category"] = "compacts",
		["hash"] = GetHashKey("boxville"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/b/bb/Sultan-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "pdm",
	},	
	[GetHashKey("17cliofl")] = {
		["name"] = "Clio3",
		["brand"] = "Renault",
		["model"] = "17cliofl",
		["price"] = 56500,
		["category"] = "compacts",
		["hash"] = GetHashKey("17cliofl"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/b/bb/Sultan-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "pdm",
	},	
	
	[GetHashKey("17octavia")] = {
		["name"] = "Octavia",
		["brand"] = "Skoda",
		["model"] = "17octavia",
		["price"] = 56500,
		["category"] = "compacts",
		["hash"] = GetHashKey("17octavia"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/b/bb/Sultan-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "custom",
	},	
	[GetHashKey("17octavia")] = {
		["name"] = "Octavia",
		["brand"] = "Skoda",
		["model"] = "17octavia",
		["price"] = 56500,
		["category"] = "compacts",
		["hash"] = GetHashKey("17octavia"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/b/bb/Sultan-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "nfs",
	},	

	[GetHashKey("17octavia")] = {
		["name"] = "Octavia",
		["brand"] = "Skoda",
		["model"] = "17octavia",
		["price"] = 56500,
		["category"] = "compacts",
		["hash"] = GetHashKey("17octavia"),
		["image"] = "https://vignette.wikia.nocookie.net/gtawiki/images/b/bb/Sultan-GTAV-front.png",
		["trunkspace"] = 100000,
		["trunkslots"] = 80,
		["shop"] = "notforsale",
	},


}

QBShared.Gangs = {
	["romario"] = {
		label = "Thugs"
	},
	["ballas"] = {
		label = "Thugs"
	},
	["thefamily"] = {
		label = "Demon gang"
	},
	["vagos"] = {
		label = "Red Devil’s"
	},
	["marabunta"] = {
		label = "Black Death"
	},
}

QBShared.Jobs = {
	["unemployed"] = {
		label = "غير موظف",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'غير موظف',
				payment = 10,
			},
		}
	},
	["police"] = {
		label = "وزارة الداخلية",
		defaultDuty = true,
		grades = {
			[0] = {
				label = "عون شرطة",
				payment = 200,
			},
			[1] = {
				label = "حافظ شرطة",
				payment = 220,
			},

			[2] = {
				label = 'حافظ أول للشرطة',
				payment = 250,
			},

			[3] = {
				label = 'مفتش شرطة',
				payment = 280,
			},

			[4] = {
				label = 'مفتش رئيسي',
				payment = 310,
			},

			[5] = {
				label = 'ملازم أول',
				payment = 350,
			},

			[6] = {
				label = 'محافظ شرطة',
				payment = 400,
			},

			[7] = {
				label = 'عميد شرطة',
				payment = 450,
			},
			[8] = {
				label = 'عميد أول',
				payment = 500,
			},
			[9] = {
				label = 'مراقب شرطة',
				payment = 550,
			},
			[10] = {
				label = 'مراقب أول',
				payment = 600,
			},
			[11] = {
				label = 'BMPJ مدير',
				payment = 800,
			},
			[12] = {
				label = 'BRI مدير',
				payment = 800,
			},
			[13] = {
				label = 'المدير العام للشرطة',
				payment = 1000,
			},
			[14] = {
				label = 'نائب الوزير',
				payment = 1250,
			},
			[15] = {
				label = ' وزير الداخلية',
				payment = 1450,
			},
		}
	},
	["doctor"] = {
		label = "دكتور",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'ممرض',
				payment = 475,
			},
			[1] = {
				label = 'دكتور',
				payment = 525,
			},
			[2] = {
				label = 'بروفيسور',
				payment = 575,
			},
			[3] = {
				label = 'رئيس الأطباء',
				payment = 625,
			},
			[4] = {
				label = 'مدير مستشفى',
				payment = 1000,
			},
			[5] = {
				label = 'نائب وزير الصحة',
				payment = 1200,
			},
			[6] = {
				label = 'وزير الصحة',
				payment = 1400,
			},
		}
	},
	["ambulance"] = {
		label = "مسعف",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'مسعف',
				payment = 325,
			},
	
			[1] = {
				label = 'اخصائي طب طوارئ',
				payment = 375,
			},
	
			[2] = {
				label = 'مسعف متقدم',
				payment = 425,
			},
		}
	},
	["trucker"] = {
		label = "سائق شاحنة",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'سائق شاحنة',
				payment = 10,
			},
		}
	},
	["taxi"] = {
		label = "تاكسي",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'تاكسي',
				payment = 50,
			},
		}
	},
	["realestate"] = {
		label = "عقاري",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'وكيل العقارات',
				payment = 250,
			},
		}
	},
	["tow"] = {
		label = "سائق سطحة",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'سائق سطحة',
				payment = 10,
			},
		}
	},
	["reporter"] = {
		label = "صحفي",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'صحفي',
				payment = 10,
			},
		}
	},
	["judge"] = {
		label = "قاضي",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'قاضي',
				payment = 500,
			},
		}
	},
	["lawyer"] = {
		label = "محامي",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'محامي',
				payment = 250,
			},
		}
	},
	["cardealer"] = {
		label = "بائع سيارات",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'بائع سيارات',
				payment = 150,
			},
		}
	},
	["mechanic"] = {
		label = "ميكانيكي",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'ميكانيكي مبتدئ',
				payment = 50,
			},
	
			[1] = {
				label = 'ميكانيكي',
				payment = 100,
			},
	
			[2] = {
				label = 'ميكانيكي محترف',
				payment = 150,
			},
	
			[3] = {
				label = 'مهندس ميكانيكي',
				payment = 175,
			},
	
			[4] = {
				label = 'نائب رئيس الميكانيكي',
				payment = 200,
			},
	
			[5] = {
				label = 'رئيس الميكانيكي',
				payment = 250,
			},
		}
	},
	["garbage"] = {
		label = "عامل نظافة",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'عامل نظافة',
				payment = 12,
			},
		}
	},
	["miner"] = {
		label = "عامل منجم",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'عامل منجم',
				payment = 12,
			},
		}
	},
	["chicken"] = {
		label = "عامل دواجن",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'عامل دواجن',
				payment = 12,
			},
		}
	},
	["hotdog"] = {
		label = "بائع النقانق",
		defaultDuty = true,
		grades = {
			[0] = {
				label = 'بائع النقانق',
				payment = 12,
			},
		}
	},
	["taco"] = {
		label = "تاكو",
		defaultDuty = true,
		grades = {
				[0] = {
					label = 'تاكو',
					payment = 50,
				},
			}
		},	
	["skydive"] = {
	label = "سكاي دايف",
	defaultDuty = true,
	grades = {
			[0] = {
				label = 'سكاي دايف',
				payment = 12,
			},
		}
    },
}

QBShared.StarterItems = {
    ["phone"] = {amount = 1, item = "phone"},
    ["id_card"] = {amount = 1, item = "id_card"},
 --   ["lockpick"] = {amount = 1, item = "lockpick"},
    ["driver_license"] = {amount = 1, item = "driver_license"},
}