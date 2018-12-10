local CATEGORY_NAME = "LuthenNetwork - SWRP"

function ulx.mech( calling_ply, target_plys )
	for i=1, #target_plys do
		target_plys[ i ]:SetHealth( 1500 )
		local player = target_plys[ i ]
		local actwep = player:GetActiveWeapon()
		local curammo = actwep:GetPrimaryAmmoType()
		player:SetAmmo( 9999, curammo)
		player:Give( "tfa_rt97c_extended")
		player:SetModel( "models/mass effect 2/player/loki_mech.mdl" )
		player:setRPName("Mech Trooper " .. math.random( 1, 8000 ) )
	end
end



local mech = ulx.command( CATEGORY_NAME, "ulx mech", ulx.mech,
"!mech" )
mech:addParam{ type=ULib.cmds.PlayersArg }
mech:defaultAccess( ULib.ACCESS_ADMIN )
mech:help( "Sets a player to a Mech Member")
