function cast(Caster, Target, Regen, Str)
	AddSpellBonus(Target, 602, Regen)
	AddSpellBonus(Target, 0, Str)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end