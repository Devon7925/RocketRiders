##Gives executor a Canopy
#Without Canopy stacking
execute if entity @e[tag=Selection,type=armor_stand,tag=!canopyStack] run title @s[scores={HasPlat=1..},tag=!fullHotbar] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if entity @e[tag=Selection,type=armor_stand,tag=!canopyStack] run title @s[scores={HasPlat=0},tag=!fullHotbar] actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if entity @e[tag=Selection,type=armor_stand,tag=!canopyStack] run give @s[team=Yellow,scores={HasPlat=0},tag=!fullHotbar] ender_pearl{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Canopy","color":"gold","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3 & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don\'t play with fire on it!","color":"gray"}']}} 1
execute if entity @e[tag=Selection,type=armor_stand,tag=!canopyStack] run give @s[team=Blue,scores={HasPlat=0},tag=!fullHotbar] ender_pearl{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Canopy","color":"blue","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3 & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don\'t play with fire on it!","color":"gray"}']}} 1

#With Canopy stacking
execute if entity @e[tag=Selection,type=armor_stand,tag=canopyStack] run title @s[scores={HasPlat=3..},tag=!fullHotbar] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if entity @e[tag=Selection,type=armor_stand,tag=canopyStack] run title @s[scores={HasPlat=..2},tag=!fullHotbar] actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if entity @e[tag=Selection,type=armor_stand,tag=canopyStack] run give @s[team=Yellow,scores={HasPlat=..2},tag=!fullHotbar] ender_pearl{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Canopy","color":"gold","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3 & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don\'t play with fire on it!","color":"gray"}']}} 1
execute if entity @e[tag=Selection,type=armor_stand,tag=canopyStack] run give @s[team=Blue,scores={HasPlat=..2},tag=!fullHotbar] ender_pearl{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Canopy","color":"blue","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3 & YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don\'t play with fire on it!","color":"gray"}']}} 1

#Game tracking
tag @e[tag=Selection,type=armor_stand] add givenCanopy