
--[[ This is where you might add any functions for your schema. --]]
function Schema:PrintConsole(text)
	MsgC(text, Color(255, 0, 0, 255));
end;

-- To get whether a player is U.S. Military.
function Schema:PlayerIsUSMilitary(player, bHuman)
	if (!IsValid(player)) then
		return;
	end;

	local faction = player:GetFaction();
	
	if (self:IsUSMilitaryFaction(faction)) then
		if (bHuman) then
			if (faction == FACTION_USMILITARY) then
				return true;
			end;
		elseif (bHuman == false) then
			if (faction == FACTION_USMILITARY) then
				return false;
			else
				return true;
			end;
		else
			return true;
		end;
	end;
end;
