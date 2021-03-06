--[[
    Script Name    : Spells/Commoner/SummonServantofThule.lua
    Script Author  : neatz09
    Script Date    : 2020.11.26 03:11:24
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 2.5
-- Increases INT of caster by 2.5
-- Increases STA of caster by 2.5
-- Increases STR of caster by 2.5
-- Increases WIS of caster by 2.5
-- Summons a pet lizardman
-- If follows Cazic-Thule
function cast(Caster, Target, PetID, Stats)
	Adjusted = GetLevel(Caster) / Stats
		SummonDeityPet(Caster, PetID, Stats)
		Say(Caster, "deity checks needed and formula need to be fine tuned")
		AddSpellBonus(Target, 0, Adjusted)
		AddSpellBonus(Target, 1, Adjusted)
		AddSpellBonus(Target, 2, Adjusted)
		AddSpellBonus(Target, 3, Adjusted)
		AddSpellBonus(Target, 4, Adjusted)
end

function remove(Caster, Target)
	pet = GetDeityPet(Caster)
		if pet ~= nil then
			DismissPet(pet)
				end
	RemoveSpellBonus(Target)
end