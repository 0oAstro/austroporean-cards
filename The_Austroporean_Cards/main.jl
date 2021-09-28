#======================================#
#####  ┏━╸┏━┓┏━┓╺┳┓   ┏━╸┏━┓┏┳┓┏━╸ #####
#####  ┃  ┣━┫┣┳┛ ┃┃   ┃╺┓┣━┫┃┃┃┣╸  #####
#####  ┗━╸╹ ╹╹┗╸╺┻┛   ┗━┛╹ ╹╹ ╹┗━╸ #####
#======================================#

include("./card_gen.jl")
include("./utils.jl")
include("./computer.jl")
include("./moves.jl")
include("./user.jl")

#======================================#
#        Other File's Functions        #
#======================================#

# Cards tup - stores all card stats 
# INFO ABOUT Cards

# FUNCTION IN card_gen
# GenCard(amntCards ::Int64) - Generate card stats of a given number of cards

# FUNCTIONS IN user
# print_starting_cards() - print user cards
# pick_card() - allows user to pick their card (returns userCardChoice (int showing the number of card user chose))

# FUNCTIONS IN computer
# comp_choosing_card() - comp_thinking() + computer picks the last stats of the Cards tup (returns compCardStats (a tup containing info about the card choosen by the computer))

# FUNCTIONS IN utils
# thinking(message ::String, end_message ::String) - show the little animation of thinking

# FUNCTIONS IN moves
# dodge(currentDodgePercentage<>) - no idea tbh
# defend()
# attack(minDmg, maxDmg, critChance, critDmgIncrease)

#======================================#
#              Functions               #
#======================================#

# play_again() - play again
# play_moves() - play moves

function playAgain()
  # play again
  print("Do you want to play again (y/N): ")
  playAgain = readline()

  if playAgain in ["Y", "y"]
    # Clear all the previous card stats
    pop_many!(x, n) = [pop!(x) for _ in 1:n]
    pop_many!(Cards, length(Cards))
    return true
  else
    println("Goodbye :)")  
    return false
  end
end

function play_moves()
    println("\nShowtime mate :pistol-crossing:\n")
    while userCardStats["Health"] != 0
      if rand(1,2) == 2
        first_chance = "Computer gets"
      else
        first_chance = "You get"
      end
      thinking("Thinking whom to give first chance", "$first_chance the first chance to play the move")
      userCardStats["Health"] = 0
    end
  end

#======================================#
#              Game Loop               #
#======================================#

Cards = []
chanceToDodge = 0
chanceToCrit = 0
amntDefence = 0

try
  @label start_of_game
  # generate all the cards the user can pick from
  @async GenCard(4, Cards)
  # shows user the cards they can pick from
  @sync @async print_starting_cards() 
  # user picking their card
  userCard = pick_card()
  userCardStats = Cards[userCard]
  # show computer choosing its card
  comp_choosing_card()

  if playAgain()
      @goto start_of_game
  else
    return false
  end
catch e
  println("Error: $e")
end