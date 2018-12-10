local CATEGORY_NAME = "LuthenNetwork - SWRP"

name = { "Johnson", "Harry", "Jeverson", "Henry", "George", "James", "Robert", "William", "Edward" }

function ulx.jedi( calling_ply, target_plys )
	for i=1, #target_plys do
		target_plys[ i ]:SetHealth( 3000 )
		local player = target_plys[ i ]
		local actwep = player:GetActiveWeapon()
		local curammo = actwep:GetPrimaryAmmoType()
		player:SetAmmo( 9999, curammo)
		player:Give( "weapon_lightsaber_event")
		player:SetModel( "models/grealms/characters/jedibattlelord/jedibattlelord.mdl" )
		player:setRPName("Jedi " .. table.Random( name ) .. " " )
	end
end



local jedi = ulx.command( CATEGORY_NAME, "ulx jedi", ulx.jedi,
"!jedi" )
jedi:addParam{ type=ULib.cmds.PlayersArg }
jedi:defaultAccess( ULib.ACCESS_ADMIN )
jedi:help( "Sets a player to a Jedi Member")
