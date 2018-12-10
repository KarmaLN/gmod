local CATEGORY_NAME = "LuthenNetwork - SWRP"

name = { "Johnson", "Harry", "Jeverson", "Henry", "George", "James", "Robert", "William", "Edward" }

function ulx.tusken( calling_ply, target_plys )
	for i=1, #target_plys do
		target_plys[ i ]:SetHealth( 3000 )
		local player = target_plys[ i ]
		local actwep = player:GetActiveWeapon()
		local curammo = actwep:GetPrimaryAmmoType()
		player:SetAmmo( 9999, curammo)
		player:Give( "pack_swswep_tusken", "tfa_sw_cissnip")
		player:SetModel( "models/player/b4p/b4p_tusken.mdl" )
		player:setRPName("Tusken Raider " .. table.Random( name ) .. " " )
	end
end



local tusken = ulx.command( CATEGORY_NAME, "ulx tusken", ulx.tusken,
"!tusken" )
tusken:addParam{ type=ULib.cmds.PlayersArg }
tusken:defaultAccess( ULib.ACCESS_ADMIN )
tusken:help( "Sets a player to a tusken Member")
