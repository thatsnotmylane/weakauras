function(states)
    local broadside = states[2].show
    local ruthlessPrecision = states[3].show
    local grandMelee = states[4].show
    local trueBearing = states[5].show 
    local burriedTreasure = states[6].show
    local skullCrossbones = states[7].show
    
    local broadsideWeight = aura_env.config["custom"]["broadside"]
    local ruthlessWeight = aura_env.config["custom"]["ruthless"]
    local grandWeight = aura_env.config["custom"]["grand"]
    local bearingWeight = aura_env.config["custom"]["bearing"]
    local burriedWeight = aura_env.config["custom"]["burried"]
    local skullWeight = aura_env.config["custom"]["skull"]
    
    --[[

1 = Custom Mode (Default Values)
2 = Broadside + Truebearing

    --]]
    local selectedMode = aura_env.config["mode"]
    
    if selectedMode == 2 then
        broadsideWeight = 2
        ruthlessWeight = 1
        grandWeight = 1
        bearingWeight = 2
        burriedWeight = 1
        skullWeight = 1
    end
    
    local buffCount = 0
    
    if(broadside == true)
    then
        buffCount = buffCount + broadsideWeight
    end
    
    if(ruthlessPrecision == true)
    then
        buffCount = buffCount + ruthlessWeight
    end
    
    if(trueBearing == true)
    then
        buffCount = buffCount + bearingWeight
    end
    
    if(burriedTreasure == true)
    then
        buffCount = buffCount + burriedWeight
    end
    
    if(skullCrossbones == true)
    then
        buffCount = buffCount + skullWeight
    end
    
    if(grandMelee == true)
    then
        buffCount = buffCount + grandWeight
    end
    
    if(buffCount >= 2)
    then
        return false
    else
        return true
    end
end



