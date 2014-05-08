
local CLASS = Clockwork.class:New("Survivor");
	CLASS.color = Color(255, 255, 0, 255); -- The color of this class.
	CLASS.factions = {FACTION_SURVIVOR}; -- Which factions can select this class.
	CLASS.isDefault = true; -- Is this the default class for these factions?
	CLASS.description = "Survivors are human characters who are not infected by the Cordyceps Brain Infection (CBI), or simply haven't reached stage one of the infection yet. Most survivors outside of the FEDRA-controlled Quarantine Zones are hostile towards others."; -- A short description of the class.
CLASS_SURVIVOR = CLASS:Register();
