execute if entity @e[type=armor_stand,tag=Selection,tag=!doStacking] as @a unless entity @s[team=!Blue,team=!Yellow] run function rr_crusade:items/antidupe
execute if entity @e[type=armor_stand,tag=Selection,tag=!doStacking] as @a unless entity @s[team=!Blue,team=!Yellow] run function items:antidupe