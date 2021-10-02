#======================================#
#             Moves to use             #
#======================================#

# a critical will have a % chance of happening and will increase the damage by a certain %
# both the crit percentages will be calculated somehow from the crit stat
function attack(_attackStat ::Int64, _critStat ::Int64)
  # the chance that a crit will hit
  if rand((1:100)) < _critStat
    crit = true
    attackCritDmg = _attackStat + (_attackStat * (_critStat / 10)) 
    return attackCritDmg, crit
  else
    return _attackStat_
  end
end

# add chance to dodge the next attack by computer
# percentage to be added comes from the speed stat somehow
# if the dodge fails and the attack hits you, the chance for a dodge resets to the original speed stat
# if you actually dodge the attack you can keep adding to the dodge percentages by using dodge when its your turn. 
function dodge(_currentDodgePercentage, _speedStat)
  if rand((1:100)) < _currentDodgePercentage
    dodged = true
    _currentDodgePercentage = _currentDodgePercentage + _speedStat
    return _currentDodgePercentage, dodged
  else 
    dodged = false
    _currentDodgePercentage = _speedStat
    return _currentDodgePercentage, dodged_
  end
end # returns true if attack was dodged and returns the new dodge chance. if attack wasnt dodged, returns false and sets dodge chance to default speed stat. 

# works like dodge, if you use a defence as your turn it will take some damage away from the attack that hits you. You can stack them but if the attack lands all defence goes away.
function defend(_incommingDamage, _defenceStat, _currentDefence)
  if _incommingDamage == 0  
    _currentDefence += _defenceStat
    return _currentDefence
  else 
    _incommingDamage -= _defenceStat
    return _incommingDamage
  end
end
