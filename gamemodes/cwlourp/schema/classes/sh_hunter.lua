
local CLASS = Clockwork.class:New("Hunter");
	CLASS.color = Color(255, 255, 0, 255); -- The color of this class.
	CLASS.factions = {FACTION_SURVIVOR}; -- Which factions can select this class.
	CLASS.isDefault = false; -- Is this the default class for these factions?
	CLASS.description = "Hunters are hostile survivors so named due to their tendency to brutally kill anyone entering their territory (referred to by hunters as 'tourists') in order to steal their clothes, supplies, and food."; -- A short description of the class.
CLASS_HUNTER = CLASS:Register();
