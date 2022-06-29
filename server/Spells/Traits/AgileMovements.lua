--[[
    Script Name    : Spells/Traits/AgileMovements.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:37
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 2.5

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 2, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end