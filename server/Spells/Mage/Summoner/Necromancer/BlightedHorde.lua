--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/BlightedHorde.lua
    Script Author  : neatz09
    Script Date    : 2019.10.16 09:10:30
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Summons 3 limited pets to aid the caster
function cast(Caster, Target)
	local x = GetX(Caster)
	local y = GetY(Caster)
	local z = GetZ(Caster)

	SummonDumbFirePet(Caster, Target, PetID, x, y, z)
	SummonDumbFirePet(Caster, Target, PetID, x, y, z)
	SummonDumbFirePet(Caster, Target, PetID, x, y, z)
end