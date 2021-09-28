# Truly random stuff going on here

function comp_choosing_card()
  Cards ::Array = []
  @async GenCard(4, Cards)
  thinking("Computer is thinking", "Computer chose its card. It's showtime.")
  compCardStats ::Dict = Cards[rand(1:end)]
  return compCardStats
end

function pick_move()
  
end