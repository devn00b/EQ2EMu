--[[
    Script Name    : Spells/Commoner/ReinforcedWarg.lua
    Script Author  : Skywalker646
    Script Date    : 2020.05.10 08:05:17
    Script Purpose : 
                   : 
--]]

function precast(Caster)
 if GetMount(Caster) > 0 then
        return false
    end

    return true
end

function cast(Caster, Target, Speed, SkillAmt)
--Summons a mount to ride    
SetMount(Caster, 8191)
SetMountColor(Caster, 0, 0, 0, 255, 0, 0)

-- Increases your ground speed by 130%    
AddSpellBonus(Caster, 611, Speed)
-- Increases Ranged, Aggression, Piercing, Crushing and Slashing of caster by 5.0 
 AddSkillBonus(Caster, GetSkillIDByName("Slashing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Piercing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Crushing"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Aggression"), SkillAmt)
 AddSkillBonus(Caster, GetSkillIDByName("Ranged"), SkillAmt)
end
