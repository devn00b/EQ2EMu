--[[
        Script Name    : SpawnScripts/QueensColony/ATaintedSapswillTapper429358.lua
        Script Author  : Rylec
        Script Date    : 2020.05.20 10:05:14
        Script Purpose : Animations for Sapswills and spawn/despawn of Dead Deer
--]]

function spawn(NPC)
        EmoteLoop(NPC)
        DeadDeerSpawn(NPC) 
end

function hailed(NPC, Spawn)
--      FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function EmoteLoop (NPC)
        local choice = math.random(1,2)
        local timer = math.random(2500,3500)
  
        if choice == 1 then
                PlayAnimation(NPC, 11400)
                AddTimer(NPC, timer, "EmoteLoop")
        else
                PlayAnimation(NPC, 11399)
                AddTimer(NPC, timer, "EmoteLoop")
        end
end

function DeadDeerSpawn(NPC)
        local zone = GetZone(NPC)
        local deadDeer = GetSpawnByLocationID(zone, 1587617)
        if deadDeer == nil then
            SpawnByLocationID(zone, 1587617)
        end
end

function death(NPC, Spawn)
        AddTimer(NPC, 10000, "DespawnDeadDeer")        
end

function DespawnDeadDeer(NPC)
        local zone = GetZone(NPC)
        local deadDeer = GetSpawnByLocationID(zone, 1587617)
        if deadDeer ~= nil then
            Despawn(deadDeer)
        end
end
