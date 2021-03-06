--[[
    Script Name    : SpawnScripts/Commonlands/NEUndeathSentry.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.12 09:05:54
    Script Purpose : 
                   : 
--]]



local BrokenEquipment = 415

function spawn(NPC)
 AddSpawnAccess(NPC, NPC)      
SetPlayerProximityFunction(NPC, 20, "InRange")    
end


function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if HasQuest(Spawn, BrokenEquipment) then
    AddSpawnAccess(NPC, Spawn)    
    AddPrimaryEntityCommand(Spawn, NPC, "repair", 2, "")
    elseif QuestStepIsComplete(Spawn, BrokenEquipment) == 5 then
     RemoveSpawnAccess(NPC, Spawn)
end
   end


function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'repair' and HasItem(Spawn, 15095) then
            if HasQuest(Spawn, BrokenEquipment) and not QuestStepIsComplete(Spawn, BrokenEquipment, 5) then
                SetStepComplete(Spawn, BrokenEquipment, 5)
                RemoveItem(Spawn, 15095)
                RemovePrimaryEntityCommand(Spawn, NPC, "repair")
            elseif not HasItem(Spawn, 15095) then
                SendMessage(Spawn, "You need an undying essence to repair the sentry. You can get one from the undead that patrol these ruins")
   end
 end
end
