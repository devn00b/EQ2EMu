--[[
    Script Name    : Spells/AA/SturdyScales.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 02:12:01
    Script Purpose : 
                   : 
--]]

-- Increases the caster's effectiveness of worn armor vs physical damage by 2%
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 678, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
