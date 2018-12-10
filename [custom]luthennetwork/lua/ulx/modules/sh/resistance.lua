local CATEGORY_NAME = "LuthenNetwork - SWRP"

name = { "Johnson", "Harry", "Jeverson", "Henry", "George", "James", "Robert", "William", "Edward"  }

function ulx.rebel( calling_ply, target_plys )
	for i=1, #target_plys do
		target_plys[ i ]:SetHealth( 1500 )
		local player = target_plys[ i ]
		local actwep = player:GetActiveWeapon()
		local curammo = actwep:GetPrimaryAmmoType()
		player:SetAmmo( 9999, curammo)
		player:Give( "tfa_rt97c_extended")
		player:SetModel( "models/player/sgg/starwars/rebels/r_trooper/male_07.mdl" )
		player:setRPName("Rebel Trooper " .. table.Random( name ) .. " " )
	end
end



local rebel = ulx.command( CATEGORY_NAME, "ulx rebel", ulx.rebel,
"!rebel" )
rebel:addParam{ type=ULib.cmds.PlayersArg }
rebel:defaultAccess( ULib.ACCESS_ADMIN )
rebel:help( "Sets a player to a Rebel Member")
