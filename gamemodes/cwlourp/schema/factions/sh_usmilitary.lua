
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

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (faction.name == FACTION_USMILITARY) then
		if (name) then
			Clockwork.player:SetName(player, string.gsub(player:QueryCharacter("name"), ".   ", "Rct."), true);
		else
			return false, "You need to specify a name as the third argument!";
		end;
	else
		Clockwork.player:SetName( player, self:GetName( player, player:GetCharacter() ) );
	end;
	
	if (player:QueryCharacter("gender") == GENDER_MALE) then
		player:SetCharacterData("model", self.models.male[1], true);
	else
		player:SetCharacterData("model", self.models.female[1], true);
	end;
end;

FACTION_USMILITARY = FACTION:Register();
