
--Context Menu Button--
list.Set(
    "DesktopWindows",
    "KarmaMenu",
    {
        title = "Options",
        icon = "icon16/wrench.png",
        width = 300,
        height = 170,
        onewindow = true,
        init = function(icn, pnl)
            KarmaContextMenu(pnl) --Init for "frame"
        end
    }
)
 
 
function KarmaContextMenu(pnl)
   
    if pnl != nil then
            pnl:Remove()
    end
    local frame = vgui.Create("DFrame" )
    frame:SetSize( 500, 500 )
    frame:SetTitle( "LuthenNetwork Options" )
    frame:SetVisible( true )
    frame:SetDraggable( true )
    frame:Center()
    frame:ShowCloseButton( true )
    frame:MakePopup()
    frame.Paint = function(s, w, h)
        draw.RoundedBox(5,0,0, w,h, Color(0,0,0,200))
    end
	
--Panel Tabs--
local sheet = vgui.Create( "DPropertySheet", frame )
sheet:Dock( FILL )

local panel1 = vgui.Create( "DPanel", sheet )
sheet:AddSheet( "Settings", panel1, "icon16/wrench.png" )

    panel1.Paint = function(s, w, h)
        draw.RoundedBox(5,0,0, w,h, Color(0,0,0,225))
    end

	
local panel4 = vgui.Create( "DPanel", sheet )
sheet:AddSheet( "Menus", panel4, "icon16/user.png" )

    panel4.Paint = function(s, w, h)
        draw.RoundedBox(5,0,0, w,h, Color(0,0,0,225))
    end
	
 
local Scroll = vgui.Create( "DScrollPanel", panel3 ) 
Scroll:Dock( FILL )

 
 	    local dlabelmulticore = vgui.Create( "DLabel", panel1 )
		dlabelmulticore:SetPos(40,10)
		dlabelmulticore:SetText("—————————————————[Multicore}—————————————————")
		dlabelmulticore:SizeToContents() 
 
 
 
 --Multicore Button--
 
    local button = vgui.Create("DButton" , panel1)
    button:SetPos(60,40)
    button:SetSize(100,45)
    button:SetText( "Multicore" ) 
	button:SetTextColor( Color (200, 200, 200) )
    button.Paint = function(s, w, h) 
         draw.RoundedBox(5,0,0, w,h, Color(25,25,25,255))
    end
 
 
    local checkboxmc = vgui.Create("DCheckBoxLabel", panel1)
    checkboxmc:SetPos(40, 55)
    checkboxmc:SetText("")
    checkboxmc:SetTextColor(Color(255,255,255))
    checkboxmc:SetMouseInputEnabled(true)
   
   --Status Check for Multicore Checkbox--
   
    local multicoreStatus = GetConVar( "gmod_mcore_test" ):GetBool()
    if multicoreStatus then
        checkboxmc:SetChecked(true)
    else
        checkboxmc:SetChecked(false)
    end
   
    --Checkbox for Multicore--
   
    function checkboxmc:OnChange()
        if checkboxmc:GetChecked() then
            RunConsoleCommand("gmod_mcore_test", "1")
            RunConsoleCommand("mat_queue_mode", "-1")
            RunConsoleCommand("cl_threaded_bone_setup", "1")
			RunConsoleCommand("r_queued_ropes", "1")
			RunConsoleCommand("cl_threaded_client_leaf_system", "1")
			RunConsoleCommand("r_threaded_renderables", "1")
			RunConsoleCommand("r_threaded_particles", "1")
			button:SetText("Multicore Enabled!")
			button:SetTextColor(Color(0,150,0))
        else
            RunConsoleCommand("gmod_mcore_test", "0")
            RunConsoleCommand("mat_queue_mode", "0")
            RunConsoleCommand("cl_threaded_bone_setup", "0")
			RunConsoleCommand("r_queued_ropes", "0")
			RunConsoleCommand("cl_threaded_client_leaf_system", "0")
			RunConsoleCommand("r_threaded_renderables", "0")
			RunConsoleCommand("r_threaded_particles", "0")
			button:SetText("Multicore Disabled!")
			button:SetTextColor(Color(150,0,0))
        end
    end
   
    frame.OnClose = function()
        if checkboxmc:GetChecked() then
            RunConsoleCommand("gmod_mcore_test", "1")
            RunConsoleCommand("mat_queue_mode", "-1")
            RunConsoleCommand("cl_threaded_bone_setup", "1")
			RunConsoleCommand("r_queued_ropes", "1")
			RunConsoleCommand("cl_threaded_client_leaf_system", "1")
			RunConsoleCommand("r_threaded_renderables", "1")
			RunConsoleCommand("r_threaded_particles", "1")
        else
            RunConsoleCommand("gmod_mcore_test", "0")
            RunConsoleCommand("mat_queue_mode", "0")
            RunConsoleCommand("cl_threaded_bone_setup", "0")
			RunConsoleCommand("r_queued_ropes", "0")
			RunConsoleCommand("cl_threaded_client_leaf_system", "0")
			RunConsoleCommand("r_threaded_renderables", "0")
			RunConsoleCommand("r_threaded_particles", "0")
        end
    end
	
	
	
end