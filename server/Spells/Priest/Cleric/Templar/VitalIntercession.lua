--[[
    Script Name    : Spells/Priest/Cleric/Templar/VitalIntercession.lua
    Script Author  : theFoof
    Script Date    : 2014.3.9
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HealLow, HealHigh, Triggers)
-- When any damage is received this spell will cast Supplicant's Prayer on target.  
-- Heals target for X - Y
-- Grants a total of 5 triggers of the spell.

    AddProc(Target, 15, 100)
    SetSpellTriggerCount(Triggers, 1)
end

function proc(Caster, Target, Type, HealLow, HealHigh)
if Type == 15 then    
SpellHeal(Spawn, "heal", min, max, Target, 0, 0, "Supplicant's Prayer")
    RemoveTriggerFromSpell()
end
end
function remove(Caster, Target)
    RemoveProc(Target)
end

