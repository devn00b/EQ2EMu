--[[
    Script Name    : SpawnScripts/Blackburrow/CaptainGhurox.lua
    Script Author  : neatz09
    Script Date    : 2020.12.06 06:12:05
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
	SpawnSet(NPC, "visual_state", 228)
end

function respawn(NPC)
	spawn(NPC)
end

function attacked(NPC, Spawn)
	SpawnSet(NPC, "visual_state", 0)
end

function aggro(NPC, Spawn)
	SpawnSet(NPC, "visual_state", 0)
end