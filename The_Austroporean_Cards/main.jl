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
# determine_first_player() - picks and shows the first player, also returns the first player as an int

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

#======================================#
#              Game Loop               #
#======================================#

userChances = Dict("userChanceToDodge"=>nothing, "userDefendAmount"=>nothing)
compChances = Dict("compChanceToDodge"=>nothing, "compDefendAmount"=>nothing) 

try
  playing = true
  Cards = []
  while playing
    @label start_of_game

    # generate and display cards to pick from
    @async Cards = GenCard(4, Cards)
    print("testing:::: $Cards")
    @sync @async print_starting_cards(Cards) 

    # get card stats for comp and user
    userCardStats = Cards[pick_card()]
    compCardStats = comp_choosing_card()

    # get the first player
    first_player = determine_first_player()

    display_info(userCardStats, compCardStats, userChances, compChances)
    
    # Run at end of the game
    if playAgain()
        @goto start_of_game
    else
      return playing = false
    end
  end
catch e
  println("Error: $e")
end