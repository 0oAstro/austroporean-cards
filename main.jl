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
  println("Do you want to play again (Y/N): ")
  playAgain = readline()

  if playAgain == ('y' || 'Y')
    return true
  else
    return false
  end
end

#======================================#
#              Game Loop               #
#======================================#
try
  @time begin

    GenCard()
    print_starting_cards()
  end

    # user picking their card
    userCard = pick_card()

    println("You picked card $userCard. Good luck! \n")

    comp_choosing()
    comparing_the_cards()
catch e
  println("Error: $e")
end

#i think ik?
#go ahead i am sure idk the problem