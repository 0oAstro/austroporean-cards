# The Austroporean Cards

### Definitely not powered by dark

### TODO
- setup moves in moves.jl file
- add game logic to the main.jl file 
- make basic ai based on pre defined rule for computer to choose what move to use in file computer.jl

---

### Logic of determining the stats
- health is random
- crit is determined by attack    
- defence is determined by health
- speed is determined by attack
- attack is determined by defence

---

### What the moves will do
1. Attack - attacks other player and deals damage
2. Dodge - has chance to dodge away from attack(chance can be stacked)
3. Block - Incomming attack does low damage 
4. Special attack - can be used when crit stats hits 100. this will be a special magical move (powered by dark)
---

### To Do before release
- remove try catch
- remove `@time`
- fix `@async` problems (if any)
- resolve all the pending threads