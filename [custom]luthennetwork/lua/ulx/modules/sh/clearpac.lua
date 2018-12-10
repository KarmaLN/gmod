local CATEGORY_NAME = "LuthenNetwork - SWRP"
 
function ulx.clearpac( calling_ply, target_plys )
    local affected_plys = {}
 
    for i=1, #target_plys do
        local v = target_plys[ i ]
       
        if v:Alive() then
            v:SendLua( "RunConsoleCommand( 'pac_clear_parts' )" )
            table.insert( affected_plys, v )
        end
    end
   
    ulx.fancyLogAdmin( calling_ply, "#A cleared #T PAC3", affected_plys )
end
local clearpac = ulx.command( CATEGORY_NAME, "ulx clearpac", ulx.clearpac, "!clearpac" )
clearpac:addParam{ type=ULib.cmds.PlayersArg }
clearpac:defaultAccess( ULib.ACCESS_ADMIN )
clearpac:help( "Clears target(s) PAC3" )