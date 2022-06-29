--[[
	Script Name		:	shriller3_1.lua
	Script Purpose	:	Waypoint Path for shriller3_1.lua
	Script Author	:	Devn00b
	Script Date		:	05/17/2020 02:02:22 AM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 165.07, 6.84, -141.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.66, 6.87, -139.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.27, 7, -125.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.68, 7.05, -115.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.62, 7, -114.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.51, 7, -100.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.18, 7, -100.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.62, 7, -123.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 128.08, 7, -126.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 128.16, 7.38, -160.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.53, 7.01, -169.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.87, 6.96, -173.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.93, 7.29, -171.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.74, 7.35, -166.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.25, 6.97, -138.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.96, 6.88, -140.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 174.24, 7.01, -146.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.44, 6.89, -155.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 164.79, 6.88, -151.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.08, 6.88, -149.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.72, 6.84, -151.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.9, 6.88, -152.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 171.13, 7.15, -154.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.61, 7.31, -154.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.31, 6.88, -155.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.2, 6.99, -153.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.22, 7.74, -155.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.99, 7.45, -155.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.49, 6.88, -157.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.91, 6.86, -152.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.57, 6.81, -150.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.85, 6.93, -151.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 171.22, 6.88, -154.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 164.51, 6.95, -154.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.71, 7.11, -154.18, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 164.51, 6.95, -154.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 171.22, 6.88, -154.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.85, 6.93, -151.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.57, 6.81, -150.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.91, 6.86, -152.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.49, 6.88, -157.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 166.99, 7.45, -155.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.22, 7.74, -155.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.2, 6.99, -153.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.31, 6.88, -155.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.61, 7.31, -154.36, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 171.13, 7.15, -154.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 169.9, 6.88, -152.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 168.72, 6.84, -151.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.08, 6.88, -149.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 164.79, 6.88, -151.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.44, 6.89, -155.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 174.24, 7.01, -146.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 167.96, 6.88, -140.95, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.25, 6.97, -138.99, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.74, 7.35, -166.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.93, 7.29, -171.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.87, 6.96, -173.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.53, 7.01, -169.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 128.16, 7.38, -160.45, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 128.08, 7, -126.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.62, 7, -123.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.18, 7, -100.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.51, 7, -100.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 131.62, 7, -114.91, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.68, 7.05, -115.86, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.27, 7, -125.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.66, 6.87, -139.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 165.07, 6.84, -141.24, 2, math.random(0,5))
end


