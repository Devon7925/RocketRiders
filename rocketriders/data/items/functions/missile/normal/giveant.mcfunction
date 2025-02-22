##Gives executor an A.N.T.
#Antidupe check
execute store result score @s HasAnt run clear @s bat_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasAnt %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasAnt=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasAnt 0

#Title/giving
title @s[scores={HasAnt=1..},tag=!fullHotbar,tag=!BackAnt] actionbar {"text":"A.N.T. already obtained.","color":"aqua"}
execute if entity @s[scores={HasAnt=1..},tag=!fullHotbar,tag=!BackAnt] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasAnt=0},tag=!fullHotbar,tag=!BackAnt] actionbar {"text":"A.N.T. obtained.","color":"aqua"}
loot give @s[scores={HasAnt=0},tag=!fullHotbar] loot items:normal/ant
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasAnt=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackAnt] run tag @e[type=armor_stand,tag=Selection] add givenAnt
execute unless entity @s[tag=BackAnt] run tag @e[type=armor_stand,tag=Bot] add BotHasAnt