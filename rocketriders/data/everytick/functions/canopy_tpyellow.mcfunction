##Iterates through all (relevant) Yellow Canopies and teleports their owners to them
scoreboard players operation $tempuuid playerUUID = @s pearlOwnerUUID
tag @p[team=Yellow,predicate=custom:matches_uuid] add currentTP
tag @p[team=Yellow,tag=currentTP,tag=!canopyTP] remove threwCanopy
tag @p[team=Yellow,tag=currentTP] add canopyTP

#Reset the motion before/after teleporting (thanks to @dragonmaster95 for the suggestion!)
execute if entity @s[scores={PlatTime=1..5}] as @p[team=Yellow,tag=currentTP] at @s run tp @s @s
execute if entity @s[scores={PlatTime=36..41}] as @p[team=Yellow,tag=currentTP] at @s run tp @s @s

#Canopy forgets owner upon throwing new pearl
execute if entity @p[team=Yellow,tag=currentTP,tag=canopyTP,tag=threwCanopy] run scoreboard players reset @s[scores={PlatTime=1..40}] pearlOwnerUUID
tag @p[team=Yellow,tag=currentTP,tag=canopyTP,tag=threwCanopy] remove canopyTP
tag @p[team=Yellow,tag=currentTP,tag=threwCanopy] remove threwCanopy

#Canopy forgets owner upon death
execute if entity @p[team=Yellow,tag=currentTP,scores={respawn=1..}] run scoreboard players reset @s[scores={PlatTime=1..40}] pearlOwnerUUID
tag @p[team=Yellow,tag=currentTP,scores={respawn=1..}] remove canopyTP

#Canopy forgets owner if crossing in Rocket Residers
execute if entity @e[type=armor_stand,tag=Selection,tag=Residers] if entity @p[team=Yellow,tag=currentTP,predicate=custom:residers] run scoreboard players reset @s pearlOwnerUUID
execute if entity @e[type=armor_stand,tag=Selection,tag=Residers] run tag @p[team=Yellow,tag=currentTP,predicate=custom:residers] remove canopyTP

#Canopy doesn't teleport more than once if shot by Nova Rocket
execute if entity @p[team=Yellow,tag=currentTP,scores={novattach=1..15}] run scoreboard players reset @s[scores={PlatTime=2..}] pearlOwnerUUID
execute as @s[scores={PlatTime=2..}] run tag @p[team=Yellow,tag=currentTP,scores={novattach=1..15}] remove canopyTP
#Canopy ends Nova effects if teleporting in first tick
execute as @s[scores={PlatTime=1}] run scoreboard players set @p[team=Yellow,tag=currentTP,scores={novattach=1..15}] novattach 16

#The teleport window for players on Canopies is 2 seconds. This is to ensure that falling players arrive on the Canopy safely and to reduce lag-induced oddities with Canopies.
#(thanks to Red_Bones for the teleport command format!)
execute at @s[scores={PlatTime=1..40}] as @p[team=Yellow,tag=currentTP,tag=canopyTP] align xyz positioned ~0.5 ~2 ~0.5 run tp @s ~ ~ ~
execute if entity @s[scores={PlatTime=1..40}] run effect give @p[team=Yellow,tag=currentTP,tag=canopyTP] slow_falling 2 100 true
execute if entity @s[scores={PlatTime=1..40}] run effect give @p[team=Yellow,tag=currentTP,tag=canopyTP,predicate=!custom:canopy_nearyellow] jump_boost 2 128 true
execute if entity @s[scores={PlatTime=1..40}] run effect give @p[team=Yellow,tag=currentTP,tag=canopyTP,predicate=!custom:canopy_nearyellow] slowness 2 255 true

#Remove canopy TP tag if teleportation period ends
execute if entity @s[scores={PlatTime=41..}] run tag @p[team=Yellow,tag=currentTP,tag=canopyTP] remove canopyTP

#Remove canopy TP tag if Canopy dies prematurely
execute if entity @s[tag=killCanopy] run tag @p[team=Yellow,tag=currentTP,tag=canopyTP] remove canopyTP

#Remove effects if player loses canopy TP tag
effect clear @p[team=Yellow,tag=currentTP,tag=!canopyTP] slow_falling
effect clear @p[team=Yellow,tag=currentTP,tag=!canopyTP] slowness
effect clear @p[team=Yellow,tag=currentTP,tag=!canopyTP] jump_boost
tag @p[team=Yellow,tag=currentTP,tag=!canopyTP] remove threwCanopy

#Reset
tag @a[team=Yellow,tag=currentTP] remove currentTP
scoreboard players reset $tempuuid playerUUID