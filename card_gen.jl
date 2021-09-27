# @Stats: Health, Speed, Defence, Crit, Attack
amntCards = 4
Cards = []

# so i realised that this function is completely pointless, there is already a built in function to do this and the funny thing is that that built in function is what we use in this function lmao. fml

function GenCard()
  for i in 1:amntCards

    # Generate tempStats
    tempHealth = rand((35:100))
    tempDefence = tempHealth < 50 ? rand((50:70)) : rand((10:30))
    tempAttack = tempDefence < 50 ? rand((25:40)) : rand((10:15))
    tempSpeed = tempAttack < 50 ? rand((70:90)) : rand((10:60)) #    we'll see
    tempCrit = tempAttack < 30 ? rand((10:15)) : rand((2:9)) #     (idk how we are going to ) no any number ending in 0 will break the wall
    tempCard = Dict("Health"=>tempHealth,   "Speed"=>tempSpeed, "Defence"=>tempDefence, "Attack" =>tempAttack, "Critical"=>tempCrit)

    push!(Cards,tempCard)

  end
end

  #@sync @async for j in 1:length(Cards)
  #  println(Cards[j])
  #end


#========================================#

# TODO


# DONE

# i think this will definitely do for now, but i think for the futur we could make a proper algo that makes the different cards be tailored to different things so that its more fair to everyone. e.g. if there is a low health there is a higher speed so that it has a better chance of dodging attacks.

#========================================#