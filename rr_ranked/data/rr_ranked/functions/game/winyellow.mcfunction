#Blue team round wins
tag @s add CriteriaTrue
kill @e[type=tnt]
scoreboard players add Yellow RoundsWon 1

effect give @a[team=Blue] instant_health 1 100
effect give @a[team=Yellow] instant_health 1 100

execute as @a[team=Blue] at @s run stopsound @s
execute as @a[team=Yellow] at @s run stopsound @s
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 100 0
title @a title [{"text":"Team Yellow","bold":true,"color":"gold"},{"text":" scored!","bold":true,"color":"green"}]
title @a subtitle [{"score":{"name":"Yellow","objective":"RoundsWon"},"bold":true,"color":"gold"},{"text":" - ","bold":true,"color":"green"},{"score":{"name":"Blue","objective":"RoundsWon"},"bold":true,"color":"blue"}]

execute unless score Yellow RoundsWon matches 2.. run tag @s add FakeGameEnd

execute if score Yellow RoundsWon matches 2.. run function game:winyellow
execute if score Yellow RoundsWon matches 2.. run function rr_ranked:rankcalc/calcyellow