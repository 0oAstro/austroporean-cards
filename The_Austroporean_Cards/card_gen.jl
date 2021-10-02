# Stats genrated by GenCard(): Health, Speed, Defence, Crit, Attack

function GenCard(_amntCards , _Cards)
  for i in 1:_amntCards
    # Generate tempStats
    tempHealth ::Int64 = rand((35:100))
    tempDefence ::Int64 = tempHealth < 50 ? rand((50:70)) : rand((10:30))
    tempAttack ::Int64 = tempDefence < 50 ? rand((14:18)) : rand((8:13))
    tempSpeed ::Int64 = tempAttack < 14 ? rand((10:14)) : rand((5:9))
    tempCrit ::Int64 = tempAttack < 14 ? rand((15:19)) : rand((11:14))
    tempCard ::Dict = Dict("Health"=>tempHealth, "Speed"=>tempSpeed, "Defence"=>tempDefence, "Attack" =>tempAttack, "Critical"=>tempCrit)

    push!(_Cards,tempCard)
    return _Cards
  end
end