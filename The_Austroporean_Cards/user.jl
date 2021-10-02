#======================================#
#        Functions for the user        #
#======================================#

function print_starting_cards(_Cards)
  println("\nThese are your cards mate,")

  for i in 1:(trunc(Int64, (length(_Cards) * 0.5 )))
    print(
      """\n\t
      \t#==============#\t#==============#
      \t    Card $(i)    \t\t    Card $(i + 2)     
      \t              \t\t              
      \t Health: $(_Cards[i]["Health"])   \t\t Health: $(_Cards[i + 2]["Health"])    
      \t Attack: $(_Cards[i]["Attack"])   \t\t Attack: $(_Cards[i + 2]["Attack"])   
      \t Defence: $(_Cards[i]["Defence"])  \t\t Defence: $(_Cards[i + 2]["Defence"])    
      \t Speed: $(_Cards[i]["Speed"])    \t\t Speed: $(_Cards[i + 2]["Speed"])     
      \t Crit: $(_Cards[i]["Critical"])     \t\t Crit: $(_Cards[i + 2]["Critical"])
      \t#==============#\t#==============#\n\n
      """)
  end
end

function pick_card()
  print("Choose the number card you want: ")
  @label start # @label will mark checkpoint
  userCardChoice = readline()
  userCardChoice = try; parse(Int, userCardChoice); catch e; print("Please only enter numbers: "); @goto start; end
  if userCardChoice ∉ 1:length(Cards) # ∉ means "not in"
    print("Please pick valid card: ")
    @goto start # go back to @label start
  else
    println("You picked card $userCardChoice. Good luck!")
  end
  return userCardChoice
end

function user_pick_move()
  print("Select the move that you want to use: attack, defend, dodge")
end
