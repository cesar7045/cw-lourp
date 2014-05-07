-- Credits go to Arbiter329 for creating this code.

local COMMAND = Clockwork.command:New("DoorKick");
COMMAND.tip = "Kick a door open!";
COMMAND.flags = CMD_DEFAULT;
 
-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
        local door = player:GetEyeTraceNoCursor().Entity;
        local trace = player:GetEyeTraceNoCursor();
        local target = trace.Entity;
        
        if ( IsValid(door) and Clockwork.entity:IsDoor(door) ) then
                if ( Schema:PlayerIsUSMilitary(player) ) then
                                if (target:GetPos():Distance( player:GetShootPos() ) <= 64) then
                                        if door:GetClass()=="prop_door_rotating" then
 
                                                player:SetForcedAnimation("kickdoorbaton", 2);
                                                timer.Simple( .55, function() Clockwork.entity:OpenDoor(target, 0, true, true) end );
                                        else
                                                Clockwork.player:Notify(player, "This is not a Valid Door!");
                                        end;
                                else
                                        Clockwork.player:Notify(player, "Door is too far away!");
                                end;
                else
                        Clockwork.player:Notify(player, "You are too weak!");
                end;
        else
                Clockwork.player:Notify(player, "This is not a valid door!");
        end;
end;
 
COMMAND:Register();
