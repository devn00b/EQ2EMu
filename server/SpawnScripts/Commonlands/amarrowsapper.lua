--[[
    Script Name    : SpawnScripts/Commonlands/amarrowsapper.lua
    Script Author  : gloat
    Script Date    : 2019.01.31 02:01:35
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/MovementCircleSmall"
function spawn(NPC)
    SpawnChooseRandomMovement(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

