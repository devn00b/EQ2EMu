--[[
    Script Name    : Spells/Commandeer.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 02:12:18
    Script Purpose : 
                   : 
--]]

-- Increases in-combat movement speed of caster by 1.3%
-- Increases speed of caster by 1.3%
function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 609, BonusAmt)
	AddSpellBonus(Target, 616, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end