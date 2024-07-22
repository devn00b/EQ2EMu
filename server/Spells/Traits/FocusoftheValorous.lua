--[[
    Script Name    : Spells/Traits/FocusoftheValorous.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:46
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