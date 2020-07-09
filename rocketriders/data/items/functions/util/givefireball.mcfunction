##Gives executor a Fireball
title @s[scores={HasFireball=1..},tag=!fullHotbar] actionbar {"text":"Fireball already obtained.","color":"aqua"}
title @s[scores={HasFireball=0},tag=!fullHotbar] actionbar {"text":"Fireball obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasFireball=0},tag=!fullHotbar] blaze_spawn_egg{display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Fireball","color":"gold","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Zeronia Team","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Spawns a Fireball. Punch or shoot","color":"gray"}','{"text":"Fireballs to quickly blow up missiles,","color":"gray"}','{"text":"blocks, or enemy players.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['YellowFireball']}} 1
give @s[team=Blue,scores={HasFireball=0},tag=!fullHotbar] blaze_spawn_egg{display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Fireball","color":"blue","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Zeronia Team","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Spawns a Fireball. Punch or shoot","color":"gray"}','{"text":"Fireballs to quickly blow up missiles,","color":"gray"}','{"text":"blocks, or players.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['BlueFireball']}} 1

#Game tracking
tag @e[tag=Selection,tag=givenFireball] add givenFireballTwice
tag @e[tag=Selection,type=armor_stand] add givenFireball