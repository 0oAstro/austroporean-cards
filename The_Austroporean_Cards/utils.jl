#======================================#
#             Random Utils             #
#======================================#

function thinking(_message ::String, _end_message ::String)
  for x in 1:rand(2:6) #amount of times we want the full string dots to show
    for i in 1:4 #the max amount of dots we actually want to show on the screen
      print("$_message $("." ^ (i-1)) \r") # Stack overflow answer SHOULD work
      sleep((rand(0.2:0.3)))
    end
  end
  println("$_end_message")
end

function determine_first_player()
  if rand(1:2) == 1
    print("The first player is you!")
    return 1
  else 
    print("The first player is the computer!")
    return 2
  end
end

function display_info(_userCard, _compCard, _userChances, _compChances)
  print(
    """\n\t
    \t#==============#\t#==============#
    \t      You    \t\t     Computer     
    \t              \t\t              
    \t Health: $(_userCard.Health)   \t\t Health: $(_compCard.Health)    
    \t Attack: $(_userCard.Attack)   \t\t Attack: $(_compCard.Attack)   
    \t Defence: $(_userCard.Defence)  \t\t Defence: $(_compCard.Defence)    
    \t Speed: $(_userCard.Speed)    \t\t Speed: $(_compCard.Speed)     
    \t Crit: $(_userCard.Crit)     \t\t Crit: $(_compCard.Crit)
    \t#==============#\t#==============#\n\n
    """)
end