--[[
    Script Name    : Spells/Traits/EnduranceofEarthandWater.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 01:12:25
    Script Purpose : 
                   : 
--]]

-- Increases STA of caster by 2.5

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 1, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end