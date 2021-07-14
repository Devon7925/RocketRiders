tellraw @s [""]
tellraw @s ["",{"text":"1v1 Duel Mode:","color":"red","bold":true},{"text":" The most competitive gamemode!"}]
tellraw @s ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent","color":"yellow"}]
tellraw @s ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Specifics:","color":"dark_aqua"}]
tellraw @s ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- Two players duel each other for three rounds"}]
execute unless entity @e[type=armor_stand,tag=Selection,tag=noYZELO,limit=1] run tellraw @s ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- Whoever wins two rounds gains XP. Loser loses XP"}]
execute unless entity @e[type=armor_stand,tag=Selection,tag=noYZELO,limit=1] run tellraw @s ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- XP translates to ranks, which affects gains/losses"}]
execute unless entity @e[type=armor_stand,tag=Selection,tag=noYZELO,limit=1] run tellraw @s ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- Players who log out forfeit and get XP penalty"}]
execute if entity @e[type=armor_stand,tag=Selection,tag=noYZELO,limit=1] run tellraw @s ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- Leaving the game forfeits the duel and ends the game"}]
tellraw @s ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- Wind Down modifier is always on (no others are)"}]
tellraw @s ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- Forced settings: No decorations, no ties, etc."}]
tellraw @s ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]