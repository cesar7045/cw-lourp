

local CLASS = Clockwork.class:New("Hunter");
	CLASS.color = Color(255, 255, 0, 255); -- The color of this class.
	CLASS.factions = {FACTION_SURVIVOR}; -- Which factions can select this class.
	CLASS.isDefault = false; -- Is this the default class for these factions?
	CLASS.description = "This is an example class."; -- A short description of the class.
	CLASS.defaultPhysDesc = "Wearing dusty and dirty clothing."; -- The default physical description for this class.
CLASS_HUNTER = CLASS:Register();
