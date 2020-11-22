#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasLavaSplash run clear @s lingering_potion{Potion:"minecraft:awkward"} 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasLavaSplash 0

#Title/giving
title @s[scores={HasLavaSplash=1..},tag=!fullHotbar] actionbar {"text":"Lava Splash already obtained.","color":"light_purple"}
title @s[scores={HasLavaSplash=0},tag=!fullHotbar] actionbar {"text":"Lava Splash obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasLavaSplash=0},tag=!fullHotbar] lingering_potion{Potion:'minecraft:awkward',CustomPotionColor:16747545,display:{Name:'[{"text":"[Utility] ","color":"dark_purple","bold":"true"},{"text":"Lava Splash","color":"gold","bold":"true"}]',Lore:['{"text":"Spawns a brief lava source where it","color":"gray"}','{"text":"lands. Used to burn enemies or break","color":"gray"}','{"text":"your fall in a dumb way.","color":"gray"}']},HideFlags:63,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
give @s[team=Blue,scores={HasLavaSplash=0},tag=!fullHotbar] lingering_potion{Potion:'minecraft:awkward',CustomPotionColor:16747545,display:{Name:'[{"text":"[Utility] ","color":"dark_purple","bold":"true"},{"text":"Lava Splash","color":"blue","bold":"true"}]',Lore:['{"text":"Spawns a brief lava source where it","color":"gray"}','{"text":"lands. Used to burn enemies or break","color":"gray"}','{"text":"your fall in a dumb way.","color":"gray"}']},HideFlags:63,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
tag @e[tag=Selection,type=armor_stand] add givenLavaSplash