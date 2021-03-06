--[[
    	Script Name	: Spells/Fighter/Intercept.lua
    	Script Author	: John Adams
    	Script Date	: 2013.08.10 02:08:36
    	Script Notes	: Intercept damage to Target --]]

    function cast(Caster, Target)

        local HalfMaxHP = GetMaxHP(Target) * .5
        local CurrentHP = GetHP(Target)

        --Say(Caster, "[DEVL: HalfMaxHP: " .. HalfMaxHP .. " CurrentHP: " .. CurrentHP)

        if CurrentHP <= HalfMaxHP  then
    		AddWard(0,0,0,0,25,0,50,2)
            -- 100% chance to intercept all damage on target.
            -- On a successful intercept caster takes 50% of attack damage, target takes 75% of attack damage.
            -- Spell ends after 2 successful intercepts.
        else
    		AddWard(0,0,0,0,25,0,50,1)
            -- 100% chance to intercept all damage on target.
            -- On a successful intercept caster takes 50% of attack damage, target takes 75% of attack damage.
            -- Spell ends after 1 successful intercept.
        end
    end

    function remove(Caster, Target)
    	RemoveWard()

    end