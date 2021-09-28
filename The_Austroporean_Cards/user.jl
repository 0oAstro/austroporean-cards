#======================================#
#        Functions for the user        #
#======================================#

function print_starting_cards()
  println("\nThese are your cards mate,")

  for i in 1:(trunc(Int64, (length(Cards) * 0.5 )))
    print(
      """\n\t
      \t#==============#\t#==============#
      \t    Card $(i)    \t\t    Card $(i + 2)     
      \t              \t\t              
      \t Health: $(Cards[i]["Health"])   \t\t Health: $(Cards[i + 2]["Health"])    
      \t Attack: $(Cards[i]["Attack"])   \t\t Attack: $(Cards[i + 2]["Attack"])   
      \t Defence: $(Cards[i]["Defence"])  \t\t Defence: $(Cards[i + 2]["Defence"])    
      \t Speed: $(Cards[i]["Speed"])    \t\t Speed: $(Cards[i + 2]["Speed"])     
      \t Crit: $(Cards[i]["Critical"])     \t\t Crit: $(Cards[i + 2]["Critical"])
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
