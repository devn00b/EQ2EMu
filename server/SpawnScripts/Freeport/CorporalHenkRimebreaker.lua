--[[
    Script Name    : SpawnScripts/Freeport/CorporalHenkRimebreaker.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.05 07:08:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "Keep your distance.", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

