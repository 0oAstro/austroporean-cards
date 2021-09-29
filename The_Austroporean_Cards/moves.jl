#======================================#
#             Moves to use             #
#======================================#

# a critical will have a % chance of happening and will increase the damage by a certain %
# both the crit percentages will be calculated somehow from the crit stat
function attack(attackStat ::Int64, critStat ::Int64)
  # the chance that a crit will hit
  if rand((1:100)) < critStat
    crit = true
    attackCritDmg = attackStat + (attackStat * (critStat / 10)) 
    return {attackCritDmg, crit}
  else
    return attackStat
  end
end

# add chance to dodge the next attack by computer
# percentage to be added comes from the speed stat somehow
# if the dodge fails and the attack hits you, the chance for a dodge resets to the original speed stat
# if you actually dodge the attack you can keep adding to the dodge percentages by using dodge when its your turn. 
function dodge(currentDodgePercentage, speedStat)
  if rand((1:100)) < currentDodgePercentage
    dodged = true
    currentDodgePercentage = currentDodgePercentage + speedStat
    return {currentDodgePercentage, dodged}
  else 
    dodged = false
    currentDodgePercentage = speedStat
    return {currentDodgePercentage, dodged}
  end
end # returns true if attack was dodged and new dodge chance. if attack wasnt dodged, returns false and sets dodge chance to default speed stat. 

# works like dodge, if you use a defence as your turn it will take some damage away from the attack that hits you. You can stack them but if the attack lands all defence goes away.
function defend(incommingDamage, defenceStat)

end
