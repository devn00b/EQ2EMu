--[[
    Script Name    : SpawnScripts/DownBelow/aBloodsaberinitiate3019.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 07:04:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 18.6, -1.64, -138.43, 2, 8)
	MovementLoopAddLocation(NPC, 23.95, -4, -139.52, 2, 5)
	MovementLoopAddLocation(NPC, 13.94, 0, -138.77, 2, 5)
	MovementLoopAddLocation(NPC, 19.4, -2, -139.13, 2, 5)
	MovementLoopAddLocation(NPC, 24.07, -4, -137.3, 2, 5)
	MovementLoopAddLocation(NPC, 27.46, -4, -140.14, 2, 5)
	MovementLoopAddLocation(NPC, 18.51, -1.6, -136.98, 2, 5)
end


