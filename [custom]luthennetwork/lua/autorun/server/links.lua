
hook.Add("PlayerSay", "steam", function( ply, text )if ( text:lower() == "!steam" ) then 
		ply:SendLua([[gui.OpenURL("https://steamcommunity.com/groups/luthengaming")]]) 
end end)
hook.Add("PlayerSay", "forum", function( ply, text )if ( text:lower() == "!forum" ) then 
		ply:SendLua([[gui.OpenURL("https://www.luthen.uk/forum/")]]) 
end end)
hook.Add("PlayerSay", "discord", function( ply, text )if ( text:lower() == "!discord" ) then 
		ply:SendLua([[gui.OpenURL("https://discord.gg/SQPkYC2")]]) 
end end)
hook.Add("PlayerSay", "rules", function( ply, text )if ( text:lower() == "!rules" ) then 
		ply:SendLua([[gui.OpenURL("https://www.luthen.uk/forum/threads/rules.64/")]]) 
end end)
hook.Add("PlayerSay", "jobrules", function( ply, text )if ( text:lower() == "!jobrules" ) then 
		ply:SendLua([[gui.OpenURL("https://www.luthen.uk/forum/threads/rules-jobs-regiments.68/")]]) 
end end)
hook.Add("PlayerSay", "twitter", function( ply, text )if ( text:lower() == "!twitter" ) then 
		ply:SendLua([[gui.OpenURL("https://twitter.com/luthennetwork")]]) 
end end)
hook.Add("PlayerSay", "content", function( ply, text )if ( text:lower() == "!content" ) then 
		ply:SendLua([[gui.OpenURL("https://www.luthen.uk/forum/index.php?threads/download-content.37/")]]) 
end end)