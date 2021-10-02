# Truly random stuff going on here

function comp_choosing_card()
  _Cards ::Array = []
  @async GenCard(4, _Cards)
  thinking("Computer is thinking", "Computer chose its card. It's showtime.")
  compCardStats ::Dict = _Cards[rand(1:end)]
  return compCardStats
end

# Should probably make this better and more AI like
function comp_pick_move()
  moveNumber = rand(1:3)
  moveChoice = ""

  if moveNumber == 1
    moveChoice = "attack"
    return moveChoice
  elseif moveNumber == 2
    moveChoice = "dodge"
    return moveChoice
  else 
    moveChoice = "defend"
    return moveChoice 
  end
end
