# Truly random stuff going on here

function comp_thinking()
  for x in 1:rand(2:6) #amount of times we want the full string dots to show
    for i in 1:4 #the max amount of dots we actually want to show on the screen
      print("Computer is picking a card! $("." ^ (i-1)) \r") # Stack overflow answer SHOULD work
      sleep((rand(0.2:0.3)))
    end
  end
  println("Computer chose its card. It's show time")
end

function comp_choosing_card()
  @async GenCard()
  comp_thinking()
  compCardStats = Cards[end]
  return compCardStats
end
