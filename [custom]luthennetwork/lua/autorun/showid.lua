if (SERVER) then

	if (bKeycardScanner) then bKeycardScanner:print("You are already running bKeycardScanner, there is no need for you to be using the /showid workshop adoon...","bad") return end

	util.AddNetworkString("bkeycardscanner_workshop_showid")

	CreateConVar("showid_command","/showid",{FCAR_ARCHIVE,FCVAR_SERVER_CAN_EXECUTE},"The command that shows the player's ID in chat.")
	CreateConVar("showid_distance",100,{FCAR_ARCHIVE,FCVAR_SERVER_CAN_EXECUTE},"The distance in source units that players can \"hear\" a keycard identification.")

	hook.Add("PlayerSay","bkeycardscanner_workshop_showid",function(ply,txt)
		if (txt:lower() == GetConVar("showid_command"):GetString()) then
			for _,v in pairs(player.GetHumans()) do
				if (v == ply or v:GetPos():Distance(ply:GetPos()) <= GetConVar("showid_distance"):GetInt()) then
					net.Start("bkeycardscanner_workshop_showid")
						net.WriteEntity(ply)
					net.Send(v)
				end
			end
			return ""
		end
	end)

else

	net.Receive("bkeycardscanner_workshop_showid",function()
		local ply      = net.ReadEntity()
		local t_name   = team.GetName(ply:Team())
		local t_color  = team.GetColor(ply:Team())
		local override = hook.Run("bkeycardscanner_get_presentation_message",ply)
		if (not override) then
			local msg = {}
			local msg_str_i = 1
			local white_needed = true
			local s = GetConVar("showid_message"):GetString()
			local i = 0
			while (i < #s) do
				i = i + 1
				local v = s[i]
				if (v == "%" and s[i + 1] == "n" and s[i + 2] == "a" and s[i + 3] == "m" and s[i + 4] == "e" and s[i + 5] == "%") then
					msg[#msg + 1] = t_color
					msg[#msg + 1] = ply:Nick()
					msg_str_i = msg_str_i + 1
					i = i + 5
					white_needed = true
				elseif (v == "%" and s[i + 1] == "t" and s[i + 2] == "e" and s[i + 3] == "a" and s[i + 4] == "m" and s[i + 5] == "%") then
					msg[#msg + 1] = t_color
					msg[#msg + 1] = t_name
					msg_str_i = msg_str_i + 1
					i = i + 5
					white_needed = true
				else
					if (white_needed) then
						msg[#msg + 1] = Color(255,255,255)
						msg_str_i = msg_str_i + 1
						white_needed = false
					end
					while (msg[msg_str_i] ~= nil and type(msg[msg_str_i]) ~= "string") do
						msg_str_i = msg_str_i + 1
					end
					if (not msg[msg_str_i]) then
						msg[msg_str_i] = ""
					end
					msg[msg_str_i] = msg[msg_str_i] .. v
				end
			end
			chat.AddText(unpack(msg))
		else
			chat.AddText(unpack(override))
		end
	end)

end

CreateConVar("showid_message","%name% shows his ID: %team%",{FCVAR_REPLICATED,FCAR_ARCHIVE,FCVAR_SERVER_CAN_EXECUTE},"The message in chat that will appear when someone shows their ID. Use %name% for the player's name and %team% for their team.")