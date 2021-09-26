#======================================#
#####  ┏━╸┏━┓┏━┓╺┳┓   ┏━╸┏━┓┏┳┓┏━╸ #####
#####  ┃  ┣━┫┣┳┛ ┃┃   ┃╺┓┣━┫┃┃┃┣╸  #####
#####  ┗━╸╹ ╹╹┗╸╺┻┛   ┗━┛╹ ╹╹ ╹┗━╸ #####
#======================================#

@async include("./card_gen.jl")
@sync @async include("./user.jl")
include("./computer.jl")
# FUNCTIONS IN card_gen
# GenCard()

#======================================#
#        Other File's Functions        #
#======================================#

# FUNCTIONS IN user
# print_starting_cards()
# pick_card()

# FUNCTIONS IN computer
# comp_choosing()
# comp_thinking()

#======================================#
#              Functions               #
#======================================#

function play_again()
  print("Do you want to play again (Y/N): ")
  playAgain = readline()

  if playAgain in ["Y", "y"]
    return true
  else
    println("We hope you enjoyed the game. Goodbye :)")
    return false
  end
end

#======================================#
#              Game Loop               #
#======================================#
try
    @label start_of_game
    GenCard()
    
    print_starting_cards()

    # user picking their card
    pick_card()

    comp_choosing()

    comparing_the_cards()

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