#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasElytra run clear @s elytra 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasElytra 0

#Title/giving
title @s[scores={HasElytra=1..}] actionbar {"text":"Elytra already obtained.","color":"aqua"}
title @s[scores={HasElytra=0}] actionbar {"text":"Elytra obtained.","color":"aqua"}
replaceitem entity @s[scores={HasElytra=0}] armor.chest elytra{HideFlags:4,Enchantments:[{id:binding_curse,lvl:1}],Damage:430,display:{Name:'[{"text":"Elytra","color":"dark_purple","bold":"true"}]',Lore:['{"text":"Useful for short flights.","color":"gray"}']}} 1
tag @e[tag=Selection,type=armor_stand] add givenElytra