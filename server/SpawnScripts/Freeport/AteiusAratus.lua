--[[
    Script Name    : SpawnScripts/Freeport/AteiusAratus.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 08:07:12
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    GenericGuardHail(NPC, Spawn, Faction)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end


