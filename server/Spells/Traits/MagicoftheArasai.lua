--[[
    Script Name    : Spells/Traits/MagicoftheArasai.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 02:12:35
    Script Purpose : 
                   : 
--]]

-- Increases Max Power of caster by 3.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 620, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end