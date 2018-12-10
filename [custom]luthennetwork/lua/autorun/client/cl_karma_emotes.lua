local IsButtonDown 

function KarmaEmoteMenu() if IsButtonDown then
    frameemote = vgui.Create("DFrame" )
    frameemote:SetSize( 180, 220 )
    frameemote:SetTitle( "Emotes" )
    frameemote:SetVisible( true )
    frameemote:SetDraggable( false )
    frameemote:SetPos( 10, 625 )
    frameemote:ShowCloseButton( false )
	
    frameemote.Paint = function(s, w, h)
    draw.RoundedBox(0,0,0, w,h, Color(40,40,40,240))
	end
	
	
	title = {}
	
for i = 1, 6 do
	title[i] = {}
end 


title[1].Name = 'Wave'
title[2].Name = 'Salute'
title[3].Name = 'Signal Halt'
title[4].Name = 'Signal Forward'
title[5].Name = 'Signal Regroup'
title[6].Name = 'Signal Follow'

 
    local emote1 = vgui.Create("DButton" , frameemote)
    emote1:SetPos(0,30)
    emote1:SetSize(180,30)
	emote1:SetFont( "DermaDefaultBold" )
    emote1:SetText( ""..title[1].Name.."" )
	emote1:CenterHorizontal()
	emote1:SetTextColor( Color (200, 200, 200) )
    emote1.Paint = function(s, w, h) 
         draw.RoundedBox(0,0,0, w,h, Color(25,25,25,255))
    end


	
	function emote1:DoClick()
	RunConsoleCommand("act", "wave")
	RunConsoleCommand("say", "/me Waves")
    end
	
	local emote1 = vgui.Create("DButton" , frameemote)
    emote1:SetPos(0,62) --40+-- 
    emote1:SetSize(180,30)
	emote1:SetFont( "DermaDefaultBold" )
    emote1:SetText( ""..title[2].Name.."" )
	emote1:SetTextColor( Color (200, 200, 200) )
    emote1.Paint = function(s, w, h) 
         draw.RoundedBox(0,0,0, w,h, Color(25,25,25,255))
    end
	
function emote1:DoClick()
	RunConsoleCommand("act", "salute")
	RunConsoleCommand("say", "/me salutes")
	
end
	
local emote1 = vgui.Create("DButton" , frameemote)
    emote1:SetPos(0,94) --40+-- 
    emote1:SetSize(180,30)
	emote1:SetFont( "DermaDefaultBold" )
    emote1:SetText( ""..title[3].Name.."" )
	emote1:SetTextColor( Color (200, 200, 200) )
    emote1.Paint = function(s, w, h) 
         draw.RoundedBox(0,0,0, w,h, Color(25,25,25,255))
end
	
function emote1:DoClick()
	RunConsoleCommand("act", "halt")
	RunConsoleCommand("say", "/me signals to Halt")
end
	
local emote1 = vgui.Create("DButton" , frameemote)
    emote1:SetPos(0,126) --40+-- 
    emote1:SetSize(180,30)
	emote1:SetFont( "DermaDefaultBold" )
    emote1:SetText( ""..title[4].Name.."" )
	emote1:SetTextColor( Color (200, 200, 200) )
    emote1.Paint = function(s, w, h) 
         draw.RoundedBox(0,0,0, w,h, Color(25,25,25,255))
end
	
function emote1:DoClick()
	RunConsoleCommand("act", "forward")
		RunConsoleCommand("say", "/me signals Forward")
end

local emote1 = vgui.Create("DButton" , frameemote)
    emote1:SetPos(0,158) --40+-- 
    emote1:SetSize(180,30)
	emote1:SetFont( "DermaDefaultBold" )
    emote1:SetText( ""..title[5].Name.."" ) 
	emote1:SetTextColor( Color (200, 200, 200) )
    emote1.Paint = function(s, w, h) 
         draw.RoundedBox(0,0,0, w,h, Color(25,25,25,255))
end

	
function emote1:DoClick()
	RunConsoleCommand("act", "group")
		RunConsoleCommand("say", "/me signals to Regroup")
end

local emote1 = vgui.Create("DButton" , frameemote)
    emote1:SetPos(0,190) --40+-- 
    emote1:SetSize(180,30)
	emote1:SetFont( "DermaDefaultBold" )
    emote1:SetText( ""..title[6].Name.."" ) 
	emote1:SetTextColor( Color (200, 200, 200) )
    emote1.Paint = function(s, w, h) 
         draw.RoundedBox(0,0,0, w,h, Color(25,25,25,255))
end

	
function emote1:DoClick()
	RunConsoleCommand("act", "becon")
	RunConsoleCommand("say", "/me signals to Follow")
end
	
    frameemote:MakePopup() else
	frameemote:Close() 

end 
end

hook.Add("OnContextMenuOpen", "contextmenuopen", function()

IsButtonDown = true
KarmaEmoteMenu()

end)
hook.Add("OnContextMenuClose", "contextmenuclose", function()

IsButtonDown = false
KarmaEmoteMenu()

end)