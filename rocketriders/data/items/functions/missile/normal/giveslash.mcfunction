##Gives executor a Slasher
title @s[scores={HasSlash=1..},tag=!fullHotbar] actionbar {"text":"Slasher already obtained.","color":"aqua"}
title @s[scores={HasSlash=0},tag=!fullHotbar] actionbar {"text":"Slasher obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasSlash=0},tag=!fullHotbar] shulker_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Slasher","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"6","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Carsorian","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Slasher is a glass-encased","color":"gray"}','{"text":"missile with not much TNT. It can","color":"gray"}','{"text":"slash straight through shields.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowSlash']}} 1
give @s[team=Blue,scores={HasSlash=0},tag=!fullHotbar] shulker_spawn_egg{display:{Name:'[{"text":"[Normal] ","color":"green","bold":"true"},{"text":"Slasher","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"6","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Carsorian","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Slasher is a glass-encased","color":"gray"}','{"text":"missile with not much TNT. It can","color":"gray"}','{"text":"slash straight through shields.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueSlash']}} 1

#Game tracking
tag @e[tag=Selection] add givenSlash
tag @e[tag=Bot] add BotHasSlash