--[[
    Script Name    : SpawnScripts/Freeport/TitiusAuspex.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.19 11:07:39
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
AddTimer(NPC, 700, "followguard", 1, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
end

function respawn(NPC)
spawn(NPC)
end


function followguard(NPC, Spawn)
local zone = GetZone(NPC)
local leader = GetSpawnByLocationID(zone, 55809)
SetFollowTarget(NPC, leader)
if not IsFollowing(NPC) then
        ToggleFollow(NPC)
        SetSpeed(NPC, 1.9)
end
end 
  