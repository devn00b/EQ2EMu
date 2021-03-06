--[[
	Script Name		:	shriller3.lua
	Script Purpose	:	Waypoint Path for shriller3.lua
	Script Author	:	Devn00b
	Script Date		:	05/09/2020 10:07:15 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 130
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -10.82, -0.08, -28.73, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.19, -0.05, -31.9, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.75, -0.08, -30.73, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -17.68, -0.1, -29.51, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.77, -0.11, -29.23, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.32, -0.05, -26.24, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -10.65, -0.08, -28.41, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -16.25, -0.05, -30.97, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.82, -0.09, -29.67, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.37, 0.37, -27.11, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.51, -0.05, -27.97, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.98, -0.07, -30.73, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.51, -0.05, -27.97, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.37, 0.37, -27.11, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.82, -0.09, -29.67, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -16.25, -0.05, -30.97, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -10.65, -0.08, -28.41, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.32, -0.05, -26.24, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.77, -0.11, -29.23, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -17.68, -0.1, -29.51, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.75, -0.08, -30.73, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -14.19, -0.05, -31.9, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, -10.82, -0.08, -28.73, 2, math.random(0,2))
end


