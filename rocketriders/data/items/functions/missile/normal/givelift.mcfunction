##Gives executor a Lifter
title @s[scores={HasLift=1..},tag=!fullHotbar] actionbar {"text":"Lifter already obtained.","color":"aqua"}
title @s[scores={HasLift=0},tag=!fullHotbar] actionbar {"text":"Lifter obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasLift=0},tag=!fullHotbar] dolphin_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Lifter","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"8","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22Gamer","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Lifter lifts its warhead","color":"gray"}','{"text":"up by 3 blocks when it hits","color":"gray"}','{"text":"an obstacle.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowLift']}} 1
give @s[team=Blue,scores={HasLift=0},tag=!fullHotbar] dolphin_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Lifter","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"8","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22Gamer","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Lifter lifts its warhead","color":"gray"}','{"text":"up by 3 blocks when it hits","color":"gray"}','{"text":"an obstacle.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueLift']}} 1

#Game tracking
tag @e[tag=Selection] add givenLift
tag @e[tag=Bot] add BotHasLift