##Gives executor a Nullifier
title @s[scores={HasNull=1..},tag=!fullHotbar] actionbar {"text":"Chronullifier already obtained.","color":"aqua"}
title @s[scores={HasNull=0},tag=!fullHotbar] actionbar {"text":"Chronullifier obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasNull=0},tag=!fullHotbar] phantom_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Chronullifier","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"13","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22Gamer & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Chronullifier uses a unique","color":"gray"}','{"text":"observer engine with the same","color":"gray"}','{"text":"speed as non-observer engines.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowNull']}} 1
give @s[team=Blue,scores={HasNull=0},tag=!fullHotbar] phantom_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Chronullifier","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"13","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22Gamer & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Chronullifier uses a unique","color":"gray"}','{"text":"observer engine with the same","color":"gray"}','{"text":"speed as non-observer engines.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueNull']}} 1

#Game tracking
tag @e[tag=Selection,type=armor_stand] add givenNull
tag @e[tag=Bot,type=armor_stand] add BotHasNull