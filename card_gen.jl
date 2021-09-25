@time begin
  # @Stats: Health, Speed, Defence, Crit
  amntCards = 4
  Cards = []


  function GenRandStat(minStat, maxStat)
    return rand(minStat:maxStat)
  end

  function GenCard()
    for i in 1:amntCards

      # Generate tempStats
      tempHealth = GenRandStat(40, 100)
      tempSpeed = tempHealth < 50 ? GenRandStat(70,90) : GenRandStat(10, 90)
      tempDefence = tempHealth > 70 ? GenRandStat(60, 80) : GenRandStat(20, 80)
      tempCrit = tempDefence > 90 || tempSpeed > 85 ? 10 : GenRandStat(2, 9)
      tempCard = Dict("Health"=>tempHealth,   "Speed"=>tempSpeed, "Defence"=>tempDefence,   "Critical"=>tempCrit)

      push!(Cards,tempCard)

    end
  end

  @async GenCard()
  #for j in 1:length#(Cards)
  #  println(Cards[j])
  #end
end


#===============================================================================================================#

# TODO


# DONE

# i think this will definitely do for now, but i think for the futur we could make a proper algo that makes the different cards be tailored to different things so that its more fair to everyone. e.g. if there is a low health there is a higher speed so that it has a better chance of dodging attacks.

#===============================================================================================================#