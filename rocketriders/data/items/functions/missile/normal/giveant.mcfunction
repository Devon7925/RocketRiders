##Gives executor an A.N.T.
title @s[scores={HasAnt=1..},tag=!fullHotbar] actionbar {"text":"A.N.T. already obtained.","color":"aqua"}
title @s[scores={HasAnt=0},tag=!fullHotbar] actionbar {"text":"A.N.T. obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasAnt=0},tag=!fullHotbar] bat_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"A.N.T.","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"2","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The A.N.T stands for Almost No TNT.","color":"gray"}','{"text":"It is one of the smallest functional","color":"gray"}','{"text":"missiles, made with only 2 TNT blocks.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowAnt']}} 1
give @s[team=Blue,scores={HasAnt=0},tag=!fullHotbar] bat_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"A.N.T.","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"2","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The A.N.T stands for Almost No TNT.","color":"gray"}','{"text":"It is the smallest functional","color":"gray"}','{"text":"missiles, made with only 2 TNT blocks.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueAnt']}} 1

#Game tracking
tag @e[tag=Selection,type=armor_stand] add givenAnt
tag @e[tag=Bot,type=armor_stand] add BotHasAnt