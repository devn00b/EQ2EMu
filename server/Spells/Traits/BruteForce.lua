--[[
    Script Name    : Spells/Traits/BruteForce.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 02:12:06
    Script Purpose : 
                   : 
--]]

-- Increases STR of caster by 2.5

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 0, BonusAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end