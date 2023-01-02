function(trigger)
    local cooldown = trigger[1]
    local broadside = trigger[2]
    local ruthlessPrecision = trigger[3]
    local grandMelee = trigger[4]
    local trueBearing = trigger[5]
    local burriedTreasure = trigger[6]
    local skullCrossbones = trigger[7]
    
    local broadsideWeight = aura_env.config["custom"]["broadside"]
    
    --[[

1 = Custom Mode (Default Values)
2 = Broadside + Truebearing

    --]]
    local selectedMode = aura_env.config["mode"]
    
    if selectedMode == 2 then
		--broadsideWeight = aura_env.
	end
        
	local buffCount = 0
	
	
	if(cooldown == false) 
	then
		return false
	else
		if(broadside == true)
		then
			buffCount = buffCount + broadsideWeight
		end
		
		if(ruthlessPrecision == true)
		then
			buffCount = buffCount + 1
		end
		
		if(trueBearing == true)
		then
			buffCount = buffCount + 1
		end
		
		if(burriedTreasure == true)
		then
			buffCount = buffCount + 1
		end
		
		if(skullCrossbones == true)
		then
			buffCount = buffCount + 1
		end
		
		if(buffCount > 1)
		then
			return false
		else
			return true
		end
	end
end



