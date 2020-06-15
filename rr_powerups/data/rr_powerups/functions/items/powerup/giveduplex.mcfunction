title @s[scores={HasDuplex=1..},tag=!fullHotbar] actionbar {"text":"Duplex already obtained.","color":"light_purple"}
title @s[scores={HasDuplex=0},tag=!fullHotbar] actionbar {"text":"Duplex obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasDuplex=0},tag=!fullHotbar] parrot_spawn_egg{display:{Name:'[{"text":"[Breacher] ","color":"dark_purple","bold":"true"},{"text":"Duplex","color":"gold","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"12 (+4 carts)","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22Gamer & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Duplex is like a shieldbuster but it takes a","color":"gray"}','{"text":"more creative approach. Instead of going through","color":"gray"}','{"text":"a shield, it will blow it up and keep on flying.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','yellowmissile','YellowDuplex']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1
give @s[team=Blue,scores={HasDuplex=0},tag=!fullHotbar] parrot_spawn_egg{display:{Name:'[{"text":"[Breacher] ","color":"dark_purple","bold":"true"},{"text":"Duplex","color":"blue","bold":"true"}]',Lore:['{"text":"Amount of TNT: ","color":"gray"}','{"text":"12 (+4 carts)","color":"red"}','{"text":" "}','{"text":"Made by:","color":"gray"}','{"text":"Chronos22Gamer & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Duplex is like a shieldbuster but it takes a","color":"gray"}','{"text":"more creative approach. Instead of going though","color":"gray"}','{"text":"a shield, it will blow it up and keep on flying.","color":"gray"}']},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:['missile','bluemissile','BlueDuplex']},Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7} 1
tag @e[tag=Selection] add givenDuplex