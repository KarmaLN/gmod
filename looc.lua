if SERVER then
	util.AddNetworkString('looc') -- Whenever you are networking, you need to add the string like so or you will get an error.
	hook.Add('PlayerSay', 'LOOCcommand', function(ply, text, public)if text:sub(1,5) == '/looc' then for _, e in pairs(ents.FindInSphere(ply:GetPos(), 250)) do if e:IsPlayer() then
					net.Start('looc')
						net.WriteEntity(ply) -- Write the sender
						net.WriteString(text:sub(7)) -- Write the text
					net.Send(e) end end return '' end end)
else
	net.Receive('looc', function(len) local ply = net.ReadEntity() local text = net.ReadString()
		chat.AddText(team.GetColor(ply:Team()), '(LOOC) ', team.GetColor(ply:Team()), ply:Name(), Color(255,255,255), ': ' .. text  ) end)
end