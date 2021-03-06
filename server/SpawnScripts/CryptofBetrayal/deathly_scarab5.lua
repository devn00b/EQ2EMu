--[[
	Script Name		:	deathly_scarab5.lua
	Script Purpose	:	Waypoint Path for deathly_scarab5.lua
	Script Author	:	Devn00b
	Script Date		:	05/20/2020 02:50:57 PM
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
	MovementLoopAddLocation(NPC, 141.35, 6.85, -71.46, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 138.75, 6.96, -69.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.64, 6.89, -78.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 138.87, 6.96, -70.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.91, 6.9, -71.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.97, 6.9, -61.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.44, 7.46, -56.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.73, 6.99, -43.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.72, 6.99, -43.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.76, 6.99, -27.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.18, 6.99, -27.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.31, 6.99, -44.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.58, 6.99, -45.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.8, 6.99, -39.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 159.25, 6.99, -45.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.37, 6.99, -37.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143, 6.99, -27.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.35, 6.99, -25.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 156.69, 6.99, -26.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.31, 6.99, -30.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.56, 6.99, -44.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.14, 6.99, -27.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.05, 6.99, -20.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.6, 6.99, -21.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.62, 6.99, -22.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.34, 6.99, -4.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.67, 6.99, -3.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.67, 6.99, -4.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.38, 6.99, -8.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.92, 6.99, -13.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.69, 6.99, -20.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.79, 6.99, -17.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.75, 6.99, -5.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.04, 6.99, -4.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.91, 6.99, 0.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.25, 6.99, 1.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.75, 6.99, 0.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.97, 6.99, 16.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.82, 6.99, 15.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.34, 6.99, 16.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.29, 6.99, 9.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 156.91, 8.49, 10.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.36, 8.49, 13.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.36, 8.49, 4.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.25, 8.49, 7.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.6, 6.99, 7.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.6, 6.99, 4.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 136.97, 6.99, 4.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 137.04, 6.99, -0.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 136.89, 6.99, 16.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.75, 6.99, 2.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.66, 6.99, 1.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.03, 6.99, 7.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.12, 6.99, 17.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 118.51, 6.99, 13.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.86, 6.99, 17.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 121.77, 6.99, 11.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 127.09, 6.99, 11.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 126.49, 8.49, 16.34, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.08, 8.49, 16.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.44, 8.49, 16.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 129.22, 8.49, 16.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 129.29, 6.99, 12.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 134.31, 6.99, 1.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.62, 6.99, 2.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.49, 6.99, 5.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 112.06, 6.87, 5.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 106.12, 6.91, 10.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 100.19, 7.35, 16.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 90.21, 6.89, 18.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 87.31, 6.88, 18.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 68.98, 7.37, 15.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 62.49, 6.88, 10.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 63.17, 6.87, -17.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 60.39, 6.88, -19.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.74, 6.9, -21.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 33.41, 6.75, -33.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 31.8, 6.84, -43.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 17.41, 6.59, -44.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.59, 7.43, -43.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.57, 6.99, -25.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -31.47, 6.86, -9.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.57, 6.99, -25.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 2.59, 7.43, -43.84, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 17.41, 6.59, -44.2, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 31.8, 6.84, -43.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 33.41, 6.75, -33.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 46.74, 6.9, -21.63, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 60.39, 6.88, -19.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 63.17, 6.87, -17.19, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 62.49, 6.88, 10.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 68.98, 7.37, 15.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 87.31, 6.88, 18.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 90.21, 6.89, 18.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 100.19, 7.35, 16.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 106.12, 6.91, 10.73, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 112.06, 6.87, 5.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.49, 6.99, 5.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.62, 6.99, 2.08, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 134.31, 6.99, 1.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 129.29, 6.99, 12.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 129.22, 8.49, 16.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.44, 8.49, 16.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 123.08, 8.49, 16.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 126.49, 8.49, 16.34, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 127.09, 6.99, 11.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 121.77, 6.99, 11.22, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 120.86, 6.99, 17.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 118.51, 6.99, 13.64, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 117.12, 6.99, 17.23, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.03, 6.99, 7.49, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 119.66, 6.99, 1.8, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 132.75, 6.99, 2.06, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 136.89, 6.99, 16.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 137.04, 6.99, -0.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 136.97, 6.99, 4.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.6, 6.99, 4.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 152.6, 6.99, 7.71, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.25, 8.49, 7.66, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.36, 8.49, 4.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.36, 8.49, 13.56, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 156.91, 8.49, 10.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.29, 6.99, 9.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.34, 6.99, 16.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.82, 6.99, 15.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.97, 6.99, 16.44, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.75, 6.99, 0.61, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.25, 6.99, 1.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 153.91, 6.99, 0.9, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.04, 6.99, -4.81, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.75, 6.99, -5.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.79, 6.99, -17.94, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 149.69, 6.99, -20.43, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 154.92, 6.99, -13.62, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.38, 6.99, -8.97, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.67, 6.99, -4.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 157.67, 6.99, -3.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.34, 6.99, -4.72, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.62, 6.99, -22.03, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.6, 6.99, -21.79, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.05, 6.99, -20.33, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 146.14, 6.99, -27.59, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.56, 6.99, -44.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 158.31, 6.99, -30.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 156.69, 6.99, -26.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.35, 6.99, -25.7, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143, 6.99, -27.77, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 142.37, 6.99, -37.53, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 159.25, 6.99, -45.96, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 145.8, 6.99, -39.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.58, 6.99, -45.37, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.31, 6.99, -44.13, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 143.18, 6.99, -27.74, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.76, 6.99, -27.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.72, 6.99, -43.3, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 148.73, 6.99, -43.28, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 150.44, 7.46, -56.35, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 155.97, 6.9, -61.92, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 151.91, 6.9, -71.55, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 138.87, 6.96, -70.29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 140.64, 6.89, -78.15, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 138.75, 6.96, -69.87, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 141.35, 6.85, -71.46, 2, math.random(0,5))
end


