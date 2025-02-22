#Antidupe check
execute if entity @e[type=armor_stand,tag=Selection,tag=!doStacking] as @s[team=Yellow] unless predicate custom:canopy_nearblue store result score @s HasElytra run clear @s elytra 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @s[team=Yellow] unless predicate custom:canopy_nearblue run scoreboard players set @s HasElytra 0

execute if entity @e[type=armor_stand,tag=Selection,tag=!doStacking] as @s[team=Blue] unless predicate custom:canopy_nearyellow store result score @s HasElytra run clear @s elytra 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @s[team=Blue] unless predicate custom:canopy_nearyellow run scoreboard players set @s HasElytra 0

#Title/giving
#Yellow
execute as @s[team=Yellow] unless predicate custom:canopy_nearblue at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
execute as @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run title @s actionbar {"text":"Elytra repaired.","color":"aqua"}
execute as @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run tag @s add DelayActionbar
execute as @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run scoreboard players set @s actionbardelay 0
execute as @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run clear @s elytra
execute as @s[team=Yellow] unless predicate custom:canopy_nearblue run title @s[scores={HasElytra=0}] title ["",{"text":" "}]
execute as @s[team=Yellow] unless predicate custom:canopy_nearblue run title @s[scores={HasElytra=0}] subtitle ["",{"text":"Elytra ","color":"dark_purple","italic":true,"bold":true},{"text":"obtained. ","color":"light_purple"},{"text":"Jump to activate!","color":"light_purple","italic":true}]
execute as @s[team=Yellow] unless predicate custom:canopy_nearblue run item replace entity @s armor.chest with elytra{HideFlags:11,Enchantments:[{id:"binding_curse",lvl:1}],Damage:426,display:{Name:'[{"text":"Elytra","color":"dark_purple","bold":true}]',Lore:['[{"text":"Useful for short flights!","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Breaks when you get near","italic":false,"color":"red"}]','[{"text":"the enemy base.","italic":false,"color":"red"}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:3,Slot:chest,Name:"generic.armor",UUID:[I;-12174,1119,193129,-2238]}]} 1
#BLUE
execute as @s[team=Blue] unless predicate custom:canopy_nearyellow at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
execute as @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run title @s actionbar {"text":"Elytra repaired.","color":"aqua"}
execute as @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run tag @s add DelayActionbar
execute as @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run scoreboard players set @s actionbardelay 0
execute as @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run clear @s elytra
execute as @s[team=Blue] unless predicate custom:canopy_nearyellow run title @s[scores={HasElytra=0}] title ["",{"text":" "}]
execute as @s[team=Blue] unless predicate custom:canopy_nearyellow run title @s[scores={HasElytra=0}] subtitle ["",{"text":"Elytra ","color":"dark_purple","italic":true,"bold":true},{"text":"obtained. ","color":"light_purple"},{"text":"Jump to activate!","color":"light_purple","italic":true}]
execute as @s[team=Blue] unless predicate custom:canopy_nearyellow run item replace entity @s armor.chest with elytra{HideFlags:11,Enchantments:[{id:"binding_curse",lvl:1}],Damage:426,display:{Name:'[{"text":"Elytra","color":"dark_purple","bold":true}]',Lore:['[{"text":"Useful for short flights!","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Breaks when you get near","italic":false,"color":"red"}]','[{"text":"the enemy base.","italic":false,"color":"red"}]']},AttributeModifiers:[{AttributeName:"generic.armor",Amount:3,Slot:chest,Name:"generic.armor",UUID:[I;-12174,1119,193129,-2238]}]} 1

tag @e[type=armor_stand,tag=Selection] add givenElytra