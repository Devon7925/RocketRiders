##Clear Yellow/Blue spawn blocks (for valid spawnpoints)
execute if entity @s[scores={gametime=3..},tag=!leaveBSpawn] unless entity @e[type=area_effect_cloud,tag=fireAEC] run fill 11 64 -66 13 66 -65 cave_air
execute if entity @s[scores={gametime=3..},tag=!leaveYSpawn] unless entity @e[type=area_effect_cloud,tag=fireAEC] run fill 13 64 66 11 66 65 cave_air