--[[
    Script Name    : Spells/Traits/InnerFocus.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 04:12:19
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