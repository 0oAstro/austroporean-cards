# TODO: Async Await (https://docs.julialang.org/en/v1/manual/asynchronous-programming/)

# PERF decrease startup time (0.12 seconds make it 10 ms some how)

# DONE benchmark using @time


#@time begin
#  function card_game()
#    # Configure these variables
#    max_user_cards = 5
#    max_stats = 100
#    min_stats = 50
#  
#    function get_random_stats(min,max) 
#      return rand((min:max))
#    end
#  
#    # Setting different tups for Stats
#    Health = []
#    Attack = []
#    Defence = []
#    Speed = []
#    Crit = []
#
#    # printin cards
#    function print_cards()
#      println("\n \n These are your cards, choose #wisely \n")
#      let card_number = 1
#        while card_number < max_user_cards
#          println("Card $card_number Stats:")
#          health = get_random_stats(80,100)
#          push!(Health,health)
#          println("\t Health ❤️ : $(Health[card_number])")
#          speed = get_random_stats(70,100)
#          push!(Speed,speed)
#          println("\t Speed 👟 : $(Speed[card_number]# )")
#          attack = get_random_stats(69,100)
#          push!(Attack,attack)
#          println("\t Attack ⚔️ : $(Attack[card_number])")
#          defence = get_random_stats(57,100)
#          push!(Defence,defence)
#          println("\t Defence 🛡️ : $(Defence[card_number])")
#          crit = get_random_stats(2,10)
#          push!(Crit,crit)
#          println("\t Critical Hit 🛡️ : $(Crit[card_number]) \n")
#          card_number +=1
#        end
#      end
#    end
#
#    function get_card_reply(#)
#
#    end
#
#    # Clear the screen # will not work on windows #very :sad#:
#    print_cards()
#  end
#
#
# Try and Catch method for dev env (TO be removed in production)
#try
#  card_game()
#catch e
#  println("Error: $e"#)
#end
