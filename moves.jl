#======================================#
#             Moves to use             #
#======================================#

# predefined min and max damage, the damage that will be done is a number between min and max damage.
# a critical will have a % chance of happening and will increase the damage by a certain %
# both the crit percentages will be calculated somehow from the crit stat
function attack(attackStat, critStat)
  # the chance that a crit will hit
  if rand((1:100)) < critStat
    attackCritDmg = attackStat * 100 / critStat
  end
end

# add chance to dodge the next attack by computer
# percentage to be added comes from the speed stat somehow
# if the dodge fails and the attack hits you, the chance for a dodge resets to 0%
# if you actually dodge the attack you can keep adding to the dodge percentages by using dodge when its your turn. 
function dodge(currentDodgePercentage)

end

# works like dodge, if you use a defence as your turn it will take some damage away from the attack that hits you. You can stack them but 
function defend()

end