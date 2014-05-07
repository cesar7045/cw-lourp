
Clockwork.kernel:IncludePrefixed("cl_schema.lua");
Clockwork.kernel:IncludePrefixed("sv_schema.lua");
Clockwork.kernel:IncludePrefixed("sh_hooks.lua");
Clockwork.kernel:IncludePrefixed("sv_hooks.lua");
Clockwork.kernel:IncludePrefixed("cl_hooks.lua");
Clockwork.kernel:IncludePrefixed("cl_theme.lua");

Schema.customPermits = {};

Clockwork.animation:AddUSMilitaryModel("");
Clockwork.animation:AddUSMilitaryModel("");
Clockwork.animation:AddUSMilitaryModel("");
Clockwork.animation:AddUSMilitaryModel("");
Clockwork.animation:AddUSMilitaryModel("");

Clockwork.option:SetKey("default_date", {month = 1, year = 2034, day = 12});
Clockwork.option:SetKey("default_time", {minute = 0, hour = 0, day = 1});
Clockwork.option:SetKey("format_singular_cash", "%a");
Clockwork.option:SetKey("model_shipment", "models/items/item_item_crate.mdl");
Clockwork.option:SetKey("name_cash", "Dollars");
Clockwork.option:SetKey("model_cash", "models/props_lab/box01a.mdl");
-- Need to make logo and music!
Clockwork.option:SetKey("intro_image", "needlogo/needlogo");
Clockwork.option:SetKey("schema_logo", "needlogo/needlogo");
Clockwork.option:SetKey("menu_music", "music/needmusic.mp3");

-- Asked to player when first joins.

Clockwork.quiz:SetEnabled(true);
Clockwork.quiz:AddQuestion("Do you understand that roleplaying is slow paced and relaxed?", 1, "Yes.", "No.");
Clockwork.quiz:AddQuestion("Can you type properly, using capital letters and full-stops?", 2, "yes i can", "Yes, I can.");
Clockwork.quiz:AddQuestion("You do not need weapons to roleplay, do you understand?", 1, "Yes.", "No.");
Clockwork.quiz:AddQuestion("You do not need items to roleplay, do you understand?", 1, "Yes.", "No.");
Clockwork.quiz:AddQuestion("What do you think serious roleplaying is about?", 2, "Collecting items and upgrades.", "Developing your character.");
Clockwork.quiz:AddQuestion("What is this roleplaying gamemode about?", 2, "Real Life.", "Half-Life 2.", "Fallout: New Vegas.", "The Last of Us.");

Clockwork.flag:Add("v", "Light Blackmarket", "Access to Light Blackmarket goods.");
Clockwork.flag:Add("V", "Heavy Blackmarket", "Access to heavy blackmarket goods.");
Clockwork.flag:Add("m", "Fire Fly Manager", "Access to the Fire Fly's manager's goods.");

-- To get if a faction is US Military.
function Schema:IsUSMilitaryFaction(faction)
	return (faction == FACTION_USMILITARY);
end;

-- A function to get a player's U.S. Military rank.
function Schema:GetPlayerUSMilitaryRank(player)
	local faction = player:GetFaction();
	
	if (faction == FACTION_USMILITARY) then
		if (self:IsPlayerUSMilitaryRank(player, "")) then
		return 1;
	elseif (self:IsPlayerUSMilitaryRank(player, "")) then
		return 2;
	elseif (self:IsPlayerUSMilitaryRank(player, "")) then
		return 3;
	elseif (self:IsPlayerUSMilitaryRank(player, "")) then
		return 4;
	elseif (self:IsPlayerUSMilitaryRank(player, "")) then
		return 3;
	elseif (self:IsPlayerUSMilitaryRank(player, "")) then
		return 4;
	elseif (self:IsPlayerUSMilitaryRank(player, "")) then
		return 5;
	elseif (self:IsPlayerUSMilitaryRank(player, "", true)) then
		return 6;
		end;
	end;
end;
