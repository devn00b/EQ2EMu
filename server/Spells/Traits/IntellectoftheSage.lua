--[[
    Script Name    : Spells/Traits/IntellectoftheSage.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:47
    Script Purpose : 
                   : 
--]]

-- Increases INT of caster by 2.5

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 4, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end