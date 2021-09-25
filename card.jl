# stats: health, speed, defence, crit damage increase (as %), 

amntCards = 4
Cards = []


function GenRandStat(minStat, maxStat)
  return rand(minStat:maxStat)
end

function GenCard()
  for i in amntCards
    # gen stats for current card, stat ranges need tweaking
    tempHealth = GenRandStat(50, 100)
    tempSpeed = GenRandStat(10, 90)
    tempDefence = GenRandStat(20, 80)
    tempCrit = GenRandStat(2, 10)

    tempCard = Dict("Health"=>tempHealth, "Speed"=>tempSpeed, "Defence"=>tempDefence, "Critical"=>tempCrit)
    push!(Cards,tempCard)
  end
end

GenCard()
