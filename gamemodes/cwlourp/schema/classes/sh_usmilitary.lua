
local CLASS = Clockwork.class:New("U.S. Military");
	CLASS.color = Color(51, 153, 51, 255);
	CLASS.wages = 20;
	CLASS.factions = {FACTION_USMILITARY};
	CLASS.isDefault = true;
	CLASS.wagesName = "Supplies";
	CLASS.description = "The United States Armed Forces, often simply referred to as The Military, And They are controlled by FEDRA, the last remnant of the U.S. government after the worldwide outbreak of cordyceps brain infection. They remain at Quarantine Zones to ensure that all uninfected persons are under watch, and are given protection from the plague outside. The military ensures that nobody leaves the zones to prevent further infection, if so they may use deadly force.";
CLASS_USMILITARY = CLASS:Register();
