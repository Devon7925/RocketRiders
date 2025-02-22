##Gives executor a Fireball
#Antidupe check
execute store result score @s HasFireball run clear @s blaze_spawn_egg 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasFireball %= 64 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasFireball=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasFireball 0

#Title/giving
title @s[scores={HasFireball=1..},tag=!fullHotbar] actionbar {"text":"Fireball already obtained.","color":"aqua"}
execute if entity @s[scores={HasFireball=1..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasFireball=0},tag=!fullHotbar] actionbar {"text":"Fireball obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasFireball=0},tag=!fullHotbar] blaze_spawn_egg{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Fireball","color":"gold","bold":true}]',Lore:['{"text":"Spawns a Fireball. Punch or shoot","color":"gray"}','{"text":"Fireballs to quickly blow up missiles,","color":"gray"}','{"text":"blocks, or enemy players.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["YellowFireball"]}} 1
give @s[team=Blue,scores={HasFireball=0},tag=!fullHotbar] blaze_spawn_egg{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Fireball","color":"blue","bold":true}]',Lore:['{"text":"Spawns a Fireball. Punch or shoot","color":"gray"}','{"text":"Fireballs to quickly blow up missiles,","color":"gray"}','{"text":"blocks, or players.","color":"gray"}']},EntityTag:{id:"minecraft:marker",Tags:["BlueFireball"]}} 1

#Game tracking
tag @e[type=armor_stand,tag=Selection,tag=givenFireball] add givenFireballTwice
tag @e[type=armor_stand,tag=Selection] add givenFireball