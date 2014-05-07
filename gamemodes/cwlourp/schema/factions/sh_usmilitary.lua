
local FACTION = Clockwork.faction:New("U.S. Military");

FACTION.isUSMilitaryFaction = true;
FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.material = "path/to/material";
FACTION.models = {
	female = {" "},
	male = {" "}
};

-- Called when a player's name should be assigned for the faction.
function FACTION:GetName(player, character)
	return "Rct."..Clockwork.kernel:Name ..FullName..);
end;

FACTION_USMILITARY = FACTION:Register();
