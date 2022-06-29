--[[
    Script Name    : Spells/Traits/MurrarSharsGuidance.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:21
    Script Purpose : 
                   : 
--]]

-- Increases Ability Casting Speed of caster by 1.0%
-- Increases Multi Attack of caster by 1.0

function cast(Caster, Target, Cast, Multi)
	AddSpellBonus(Target, 664, Cast)
	AddSpellBonus(Target, 641, Multi)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end