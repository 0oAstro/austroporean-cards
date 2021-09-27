#======================================#
#####  ┏━╸┏━┓┏━┓╺┳┓   ┏━╸┏━┓┏┳┓┏━╸ #####
#####  ┃  ┣━┫┣┳┛ ┃┃   ┃╺┓┣━┫┃┃┃┣╸  #####
#####  ┗━╸╹ ╹╹┗╸╺┻┛   ┗━┛╹ ╹╹ ╹┗━╸ #####
#======================================#

include("./card_gen.jl")
include("./user.jl")
include("./computer.jl")

#======================================#
#        Other File's Functions        #
#======================================#

# FUNCTIONS IN user
# print_starting_cards()
# pick_card()

# FUNCTIONS IN computer
# comp_choosing_card()
# comp_thinking()

# FUNCTIONS IN moves
# dodge(currentDodgePercentage)
# defend()
# attack(minDmg, maxDmg, critChance, critDmgIncrease)

#======================================#
#              Functions               #
#======================================#

function play_again()
  print("Do you want to play again (Y/N): ")
  playAgain = readline()

  if playAgain in ['Y', 'y']
    return true
  else
    println("We hope you enjoyed the game. Goodbye :)")
    return false
  end
end

#======================================#
#              Game Loop               #
#======================================#

### get rid of try catch for release ###
try
    @label start_of_game
    # generate all the cards the user can pick from
    @async GenCard()
    
    # shows user the cards they can pick from
    @sync @async print_starting_cards()

    # user picking their card
    userCard = pick_card()

    # show computer choosing its card
    comp_choosing_card()

    # play again
    if play_again()
      # Clear all the previous card stats
      pop_many!(x, n) = [pop!(x) for _ in 1:n]
      pop_many!(Cards, length(Cards))
      @goto start_of_game
    else
      print("Goodbye :)")
    end
catch e
    println("Error: $e")
end