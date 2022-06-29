--[[
    Script Name     :   SpawnScripts/qeynos_combined02/arat133772654.lua
	Script Purpose	:	Waypoint Path for arat133772654.lua
	Script Author	:	Rylec
	Script Date		:	10-04-2021 07:32:25 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 596.06, -24.81, -222.95, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 594.4, -24.76, -223.43, 2, 0)
	MovementLoopAddLocation(NPC, 591.48, -26.81, -227.51, 2, 0)
	MovementLoopAddLocation(NPC, 590.26, -27.59, -228.55, 2, 0)
	MovementLoopAddLocation(NPC, 589.5, -28.03, -230.26, 2, 0)
	MovementLoopAddLocation(NPC, 590.15, -28.03, -232.62, 2, 0)
	MovementLoopAddLocation(NPC, 594.98, -30.06, -236.01, 2, 0)
	MovementLoopAddLocation(NPC, 596.12, -30.64, -236.29, 2, 0)
	MovementLoopAddLocation(NPC, 599.01, -31.26, -239.08, 2, 0)
	MovementLoopAddLocation(NPC, 600.5, -31.26, -239.62, 2, 0)
	MovementLoopAddLocation(NPC, 603.09, -31.23, -239.39, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 605.34, -32.02, -236.59, 2, 0)
	MovementLoopAddLocation(NPC, 607.72, -33.63, -234.26, 2, 0)
	MovementLoopAddLocation(NPC, 609.65, -35.25, -231.04, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 607.76, -34.05, -233.41, 2, 0)
	MovementLoopAddLocation(NPC, 605.39, -32.36, -235.75, 2, 0)
	MovementLoopAddLocation(NPC, 604.78, -31.64, -237.06, 2, 0)
	MovementLoopAddLocation(NPC, 602.7, -31.23, -238.84, 2, 0)
	MovementLoopAddLocation(NPC, 597.31, -31.26, -237.83, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 592.98, -28.65, -233.85, 2, 0)
	MovementLoopAddLocation(NPC, 589.5, -28.05, -231.66, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 591.6, -27.04, -228.08, 2, 0)
	MovementLoopAddLocation(NPC, 592.74, -25.36, -224.93, 2, 0)
	MovementLoopAddLocation(NPC, 594.06, -24.76, -223.11, 2, 0)
	MovementLoopAddLocation(NPC, 594.36, -24.78, -221.05, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 593.73, -25.07, -224.88, 2, 0)
	MovementLoopAddLocation(NPC, 591.39, -27.98, -230.74, 2, 2)
	MovementLoopAddLocation(NPC, 594.01, -29.27, -234.42, 2, 0)
	MovementLoopAddLocation(NPC, 596.38, -30.62, -235.88, 2, 0)
	MovementLoopAddLocation(NPC, 598.37, -31.25, -237.78, 2, 0)
	MovementLoopAddLocation(NPC, 600.27, -31.26, -238.97, 2, 0)
	MovementLoopAddLocation(NPC, 602.8, -31.23, -238.93, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 607.66, -33.59, -234.33, 2, 0)
	MovementLoopAddLocation(NPC, 609.72, -35.25, -230.86, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 608.71, -34.69, -232.42, 2, 0)
	MovementLoopAddLocation(NPC, 605.13, -32.21, -235.94, 2, 0)
	MovementLoopAddLocation(NPC, 604.85, -31.73, -236.95, 2, 0)
	MovementLoopAddLocation(NPC, 601, -31.24, -241.07, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 598.62, -31.25, -237.83, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 592.42, -28.47, -233.91, 2, 0)
	MovementLoopAddLocation(NPC, 591.38, -28, -232.71, 2, 0)
	MovementLoopAddLocation(NPC, 588.58, -28.04, -230.9, 2, 1)
	MovementLoopAddLocation(NPC, 591.24, -26.96, -227.66, 2, 0)
	MovementLoopAddLocation(NPC, 593.31, -24.73, -223.83, 2, 0)
	MovementLoopAddLocation(NPC, 594.27, -24.79, -221.97, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 591.87, -26.8, -227.7, 2, 0)
	MovementLoopAddLocation(NPC, 590.82, -27.73, -229.25, 2, 0)
	MovementLoopAddLocation(NPC, 590.01, -28.04, -231.67, 2, 0)
	MovementLoopAddLocation(NPC, 590.65, -28, -233.71, 2, 0)
	MovementLoopAddLocation(NPC, 593.77, -29.62, -236.14, 2, 0)
	MovementLoopAddLocation(NPC, 595.5, -30.55, -236.85, 2, 0)
	MovementLoopAddLocation(NPC, 596.96, -31.26, -238.23, 2, 0)
	MovementLoopAddLocation(NPC, 599.19, -31.26, -239.09, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 601.79, -31.24, -239.54, 2, 0)
	MovementLoopAddLocation(NPC, 605.05, -31.24, -238.38, 2, 0)
	MovementLoopAddLocation(NPC, 607.03, -32.79, -235.65, 2, 0)
	MovementLoopAddLocation(NPC, 607.76, -33.65, -234.26, 2, 0)
	MovementLoopAddLocation(NPC, 609.26, -34.79, -232.57, 2, 0)
	MovementLoopAddLocation(NPC, 610.12, -35.22, -231.39, 2, 0)
	MovementLoopAddLocation(NPC, 610.87, -35.21, -230.65, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 608.03, -33.87, -233.96, 2, 0)
	MovementLoopAddLocation(NPC, 606.09, -32.56, -235.73, 2, 0)
	MovementLoopAddLocation(NPC, 604.56, -31.25, -237.85, 2, 0)
	MovementLoopAddLocation(NPC, 602.87, -31.23, -238.94, 2, 0)
	MovementLoopAddLocation(NPC, 601.18, -31.26, -239.2, 2, 0)
	MovementLoopAddLocation(NPC, 597.3, -31.24, -236.93, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 595.97, -30.47, -235.83, 2, 0)
	MovementLoopAddLocation(NPC, 594.91, -29.82, -235.33, 2, 0)
	MovementLoopAddLocation(NPC, 593.88, -29.15, -234.32, 2, 0)
	MovementLoopAddLocation(NPC, 591.9, -28.1, -233.45, 2, 0)
	MovementLoopAddLocation(NPC, 590.16, -28.04, -231.69, 2, 0)
	MovementLoopAddLocation(NPC, 590.01, -28, -229.68, 2, 0)
	MovementLoopAddLocation(NPC, 591.34, -26.78, -227.33, 2, 0)
	MovementLoopAddLocation(NPC, 592.18, -26.11, -226.33, 2, 0)
	MovementLoopAddLocation(NPC, 593, -25.14, -224.47, 2, 0)
	MovementLoopAddLocation(NPC, 593.53, -24.7, -223.71, 2, 0)
	MovementLoopAddLocation(NPC, 594.15, -24.78, -222.09, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 592.71, -25.95, -226.24, 2, 0)
	MovementLoopAddLocation(NPC, 591.76, -26.89, -227.84, 2, 0)
	MovementLoopAddLocation(NPC, 591.4, -27.41, -228.96, 2, 0)
	MovementLoopAddLocation(NPC, 590.7, -28, -230.53, 2, 0)
	MovementLoopAddLocation(NPC, 590.84, -28.02, -231.75, 2, 0)
	MovementLoopAddLocation(NPC, 593.13, -28.7, -233.74, 2, 0)
	MovementLoopAddLocation(NPC, 594.87, -29.7, -234.74, 2, 0)
	MovementLoopAddLocation(NPC, 596.51, -30.91, -236.63, 2, 0)
	MovementLoopAddLocation(NPC, 598.85, -31.26, -239.17, 2, 0)
	MovementLoopAddLocation(NPC, 600.2, -31.26, -239.98, 2, 0)
	MovementLoopAddLocation(NPC, 602.48, -31.23, -240.54, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 604.72, -31.26, -238.92, 2, 0)
	MovementLoopAddLocation(NPC, 606.1, -32.17, -236.67, 2, 0)
	MovementLoopAddLocation(NPC, 607.07, -32.83, -235.6, 2, 0)
	MovementLoopAddLocation(NPC, 608.09, -34.04, -233.7, 2, 0)
	MovementLoopAddLocation(NPC, 611.14, -35.21, -230.32, 2, MakeRandomInt(2, 6))
	MovementLoopAddLocation(NPC, 608.4, -34.06, -233.66, 2, 0)
	MovementLoopAddLocation(NPC, 605.74, -32.53, -235.6, 2, 0)
	MovementLoopAddLocation(NPC, 605.19, -31.9, -236.64, 2, 0)
	MovementLoopAddLocation(NPC, 605.1, -31.55, -237.57, 2, 0)
	MovementLoopAddLocation(NPC, 603.87, -31.26, -238.77, 2, 0)
	MovementLoopAddLocation(NPC, 599.78, -31.26, -238.79, 2, MakeRandomInt(12, 18), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 597.13, -31.25, -237.18, 2, 0)
	MovementLoopAddLocation(NPC, 595.5, -30.2, -235.55, 2, 0)
	MovementLoopAddLocation(NPC, 594.1, -29.36, -234.8, 2, 0)
	MovementLoopAddLocation(NPC, 592.3, -28.11, -232.84, 2, 0)
	MovementLoopAddLocation(NPC, 591.66, -27.99, -231.54, 2, 0)
	MovementLoopAddLocation(NPC, 591.35, -27.55, -229.1, 2, 0)
	MovementLoopAddLocation(NPC, 592.04, -26.75, -227.63, 2, 0)
	MovementLoopAddLocation(NPC, 593.13, -25.94, -226.51, 2, 0)
	MovementLoopAddLocation(NPC, 593.73, -25.07, -224.9, 2, 0)
	MovementLoopAddLocation(NPC, 595.16, -24.8, -223.34, 2, 0)
	
	MovementLoopAddLocation(NPC, 596.06, -24.81, -222.95, 2, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 594.4, -24.76, -223.43, 7, 0)
	MovementLoopAddLocation(NPC, 591.48, -26.81, -227.51, 7, 0)
	MovementLoopAddLocation(NPC, 590.26, -27.59, -228.55, 7, 0)
	MovementLoopAddLocation(NPC, 589.5, -28.03, -230.26, 7, 0)
	MovementLoopAddLocation(NPC, 590.15, -28.03, -232.62, 7, 0)
	MovementLoopAddLocation(NPC, 594.98, -30.06, -236.01, 7, 0)
	MovementLoopAddLocation(NPC, 596.12, -30.64, -236.29, 7, 0)
	MovementLoopAddLocation(NPC, 599.01, -31.26, -239.08, 7, 0)
	MovementLoopAddLocation(NPC, 600.5, -31.26, -239.62, 7, 0)
	MovementLoopAddLocation(NPC, 603.09, -31.23, -239.39, 7, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 605.34, -32.02, -236.59, 7, 0)
	MovementLoopAddLocation(NPC, 607.72, -33.63, -234.26, 7, 0)
	MovementLoopAddLocation(NPC, 609.65, -35.25, -231.04, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 607.76, -34.05, -233.41, 7, 0)
	MovementLoopAddLocation(NPC, 605.39, -32.36, -235.75, 7, 0)
	MovementLoopAddLocation(NPC, 604.78, -31.64, -237.06, 7, 0)
	MovementLoopAddLocation(NPC, 602.7, -31.23, -238.84, 7, 0)
	MovementLoopAddLocation(NPC, 597.31, -31.26, -237.83, 7, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 592.98, -28.65, -233.85, 7, 0)
	MovementLoopAddLocation(NPC, 589.5, -28.05, -231.66, 7, 0)
	MovementLoopAddLocation(NPC, 591.6, -27.04, -228.08, 7, 0)
	MovementLoopAddLocation(NPC, 592.74, -25.36, -224.93, 7, 0)
	MovementLoopAddLocation(NPC, 594.06, -24.76, -223.11, 7, 0)
	MovementLoopAddLocation(NPC, 594.36, -24.78, -221.05, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 593.73, -25.07, -224.88, 7, 0)
	MovementLoopAddLocation(NPC, 591.39, -27.98, -230.74, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 594.01, -29.27, -234.42, 7, 0)
	MovementLoopAddLocation(NPC, 596.38, -30.62, -235.88, 7, 0)
	MovementLoopAddLocation(NPC, 598.37, -31.25, -237.78, 7, 0)
	MovementLoopAddLocation(NPC, 600.27, -31.26, -238.97, 7, 0)
	MovementLoopAddLocation(NPC, 602.8, -31.23, -238.93, 7, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 607.66, -33.59, -234.33, 7, 0)
	MovementLoopAddLocation(NPC, 609.72, -35.25, -230.86, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 608.71, -34.69, -232.42, 7, 0)
	MovementLoopAddLocation(NPC, 605.13, -32.21, -235.94, 7, 0)
	MovementLoopAddLocation(NPC, 604.85, -31.73, -236.95, 7, 0)
	MovementLoopAddLocation(NPC, 601, -31.24, -241.07, 7, 4)
	MovementLoopAddLocation(NPC, 598.62, -31.25, -237.83, 7, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 592.42, -28.47, -233.91, 7, 0)
	MovementLoopAddLocation(NPC, 591.38, -28, -232.71, 7, 0)
	MovementLoopAddLocation(NPC, 588.58, -28.04, -230.9, 7, 0)
	MovementLoopAddLocation(NPC, 591.24, -26.96, -227.66, 7, 0)
	MovementLoopAddLocation(NPC, 593.31, -24.73, -223.83, 7, 0)
	MovementLoopAddLocation(NPC, 594.27, -24.79, -221.97, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 591.87, -26.8, -227.7, 7, 0)
	MovementLoopAddLocation(NPC, 590.82, -27.73, -229.25, 7, 0)
	MovementLoopAddLocation(NPC, 590.01, -28.04, -231.67, 7, 0)
	MovementLoopAddLocation(NPC, 590.65, -28, -233.71, 7, 0)
	MovementLoopAddLocation(NPC, 593.77, -29.62, -236.14, 7, 0)
	MovementLoopAddLocation(NPC, 595.5, -30.55, -236.85, 7, 0)
	MovementLoopAddLocation(NPC, 596.96, -31.26, -238.23, 7, 0)
	MovementLoopAddLocation(NPC, 599.19, -31.26, -239.09, 7, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 601.79, -31.24, -239.54, 7, 0)
	MovementLoopAddLocation(NPC, 605.05, -31.24, -238.38, 7, 0)
	MovementLoopAddLocation(NPC, 607.03, -32.79, -235.65, 7, 0)
	MovementLoopAddLocation(NPC, 607.76, -33.65, -234.26, 7, 0)
	MovementLoopAddLocation(NPC, 609.26, -34.79, -232.57, 7, 0)
	MovementLoopAddLocation(NPC, 610.12, -35.22, -231.39, 7, 0)
	MovementLoopAddLocation(NPC, 610.87, -35.21, -230.65, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 608.03, -33.87, -233.96, 7, 0)
	MovementLoopAddLocation(NPC, 606.09, -32.56, -235.73, 7, 0)
	MovementLoopAddLocation(NPC, 604.56, -31.25, -237.85, 7, 0)
	MovementLoopAddLocation(NPC, 602.87, -31.23, -238.94, 7, 0)
	MovementLoopAddLocation(NPC, 601.18, -31.26, -239.2, 7, 0)
	MovementLoopAddLocation(NPC, 597.3, -31.24, -236.93, 7, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 595.97, -30.47, -235.83, 7, 0)
	MovementLoopAddLocation(NPC, 594.91, -29.82, -235.33, 7, 0)
	MovementLoopAddLocation(NPC, 593.88, -29.15, -234.32, 7, 0)
	MovementLoopAddLocation(NPC, 591.9, -28.1, -233.45, 7, 0)
	MovementLoopAddLocation(NPC, 590.16, -28.04, -231.69, 7, 0)
	MovementLoopAddLocation(NPC, 590.01, -28, -229.68, 7, 0)
	MovementLoopAddLocation(NPC, 591.34, -26.78, -227.33, 7, 0)
	MovementLoopAddLocation(NPC, 592.18, -26.11, -226.33, 7, 0)
	MovementLoopAddLocation(NPC, 593, -25.14, -224.47, 7, 0)
	MovementLoopAddLocation(NPC, 593.53, -24.7, -223.71, 7, 0)
	MovementLoopAddLocation(NPC, 594.15, -24.78, -222.09, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 592.71, -25.95, -226.24, 7, 0)
	MovementLoopAddLocation(NPC, 591.76, -26.89, -227.84, 7, 0)
	MovementLoopAddLocation(NPC, 591.4, -27.41, -228.96, 7, 0)
	MovementLoopAddLocation(NPC, 590.7, -28, -230.53, 7, 0)
	MovementLoopAddLocation(NPC, 590.84, -28.02, -231.75, 7, 0)
	MovementLoopAddLocation(NPC, 593.13, -28.7, -233.74, 7, 0)
	MovementLoopAddLocation(NPC, 594.87, -29.7, -234.74, 7, 0)
	MovementLoopAddLocation(NPC, 596.51, -30.91, -236.63, 7, 0)
	MovementLoopAddLocation(NPC, 598.85, -31.26, -239.17, 7, 0)
	MovementLoopAddLocation(NPC, 600.2, -31.26, -239.98, 7, 0)
	MovementLoopAddLocation(NPC, 602.48, -31.23, -240.54, 7, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, 604.72, -31.26, -238.92, 7, 0)
	MovementLoopAddLocation(NPC, 606.1, -32.17, -236.67, 7, 0)
	MovementLoopAddLocation(NPC, 607.07, -32.83, -235.6, 7, 0)
	MovementLoopAddLocation(NPC, 608.09, -34.04, -233.7, 7, 0)
	MovementLoopAddLocation(NPC, 611.14, -35.21, -230.32, 7, MakeRandomInt(1, 3))
	MovementLoopAddLocation(NPC, 608.4, -34.06, -233.66, 7, 0)
	MovementLoopAddLocation(NPC, 605.74, -32.53, -235.6, 7, 0)
	MovementLoopAddLocation(NPC, 605.19, -31.9, -236.64, 7, 0)
	MovementLoopAddLocation(NPC, 605.1, -31.55, -237.57, 7, 0)
	MovementLoopAddLocation(NPC, 603.87, -31.26, -238.77, 7, 0)
	MovementLoopAddLocation(NPC, 599.78, -31.26, -238.79, 7, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, 597.13, -31.25, -237.18, 7, 0)
	MovementLoopAddLocation(NPC, 595.5, -30.2, -235.55, 7, 0)
	MovementLoopAddLocation(NPC, 594.1, -29.36, -234.8, 7, 0)
	MovementLoopAddLocation(NPC, 592.3, -28.11, -232.84, 7, 0)
	MovementLoopAddLocation(NPC, 591.66, -27.99, -231.54, 7, 0)
	MovementLoopAddLocation(NPC, 591.35, -27.55, -229.1, 7, 0)
	MovementLoopAddLocation(NPC, 592.04, -26.75, -227.63, 7, 0)
	MovementLoopAddLocation(NPC, 593.13, -25.94, -226.51, 7, 0)
	MovementLoopAddLocation(NPC, 593.73, -25.07, -224.9, 7, 0)
	MovementLoopAddLocation(NPC, 595.16, -24.8, -223.34, 7, 0)
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 677951544)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 1548185851)
end