##Gives executor an Auxiliary
#Antidupe check
execute store result score @s HasAux run clear @s mooshroom_spawn_egg 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasAux %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasAux=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasAux 0

#Title/giving
title @s[scores={HasAux=1..},tag=!fullHotbar,tag=!BackAux] actionbar {"text":"Auxiliary already obtained.","color":"aqua"}
execute as @s[scores={HasAux=1..},tag=!fullHotbar,tag=!BackAux] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasAux=0},tag=!fullHotbar,tag=!BackAux] actionbar {"text":"Auxiliary obtained.","color":"aqua"}
loot give @s[scores={HasAux=0},tag=!fullHotbar] loot items:heavy/auxiliary
playsound minecraft:entity.item.pickup player @s[scores={HasAux=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackAux] run tag @e[tag=Selection,type=armor_stand] add givenAux
execute unless entity @s[tag=BackAux] run tag @e[tag=Bot,type=armor_stand] add BotHasAux