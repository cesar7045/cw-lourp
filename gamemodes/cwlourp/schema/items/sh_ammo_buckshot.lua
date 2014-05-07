
local ITEM = Clockwork.item:New("ammo_base")
	ITEM.cost = 80;
	ITEM.name = "Buckshot Rounds";
	ITEM.batch = 1;
	ITEM.model = "models/items/boxbuckshot.mdl";
	ITEM.weight = 0.5;
	ITEM.access = "T";
	ITEM.business = true;
	ITEM.uniqueID = "ammo_buckshot";
	ITEM.ammoClass = "buckshot";
	ITEM.ammoAmount = 12;
	ITEM.description = "A small red box filled with Buckshot on the side.";
Clockwork.item:Register(ITEM);
