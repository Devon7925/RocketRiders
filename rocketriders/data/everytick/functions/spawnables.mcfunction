##Missile/utility-specific commands (optimized to only run when necessary)
execute unless entity @s[tag=runspawnmissiles] if entity @e[type=marker,tag=missile] run tag @s add runspawnmissiles
execute unless entity @s[tag=runspawnmissiles] if entity @e[type=marker,tag=surprising] run tag @s add runspawnmissiles
execute if entity @s[tag=runspawnmissiles] as @e[type=marker,tag=missile] at @s unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute if entity @s[tag=runspawnmissiles] as @e[type=marker,tag=missile] at @s run function items:spawnmissiles
tag @s[tag=runspawnmissiles] remove runspawnmissiles

execute unless entity @s[tag=runshields] if entity @e[type=snowball] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[type=marker,tag=PlaceYellowShield] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[type=marker,tag=PlaceBlueShield] run tag @s add runshields
execute if entity @s[tag=runshields] run function everytick:shields
tag @s[tag=runshields] remove runshields

execute unless entity @s[tag=runvortex] if entity @e[type=egg,nbt={Item:{tag:{CustomModelData:1}}}] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[type=egg,nbt={Item:{tag:{CustomModelData:2}}}] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[type=marker,tag=Vortex] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[type=armor_stand,tag=VortexItem] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[type=chicken] run tag @s add runvortex
execute if entity @s[tag=runvortex,tag=!vortexOverride] run function everytick:vortex
tag @s[tag=runvortex] remove runvortex

execute unless entity @e[type=marker,tag=Vortex] unless entity @e[type=armor_stand,tag=VortexItem] run scoreboard players set $highest VortexID 0

execute unless entity @s[tag=runobshields] if entity @e[type=fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=dragon_fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=BlueObshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=blueobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=blueobsidianshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=YellowObshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=yellowobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=yellowobsidianshield] run tag @s add runobshields
execute if entity @s[tag=runobshields] run function everytick:obsidian_shields
tag @s[tag=runobshields] remove runobshields

execute unless entity @s[tag=runnovarocket] if entity @e[type=firework_rocket] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @e[type=marker,tag=novatracker] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=BlueNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=YellowNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=BlueNovaNear] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=YellowNovaNear] run tag @s add runnovarocket
execute if entity @s[tag=runnovarocket] run function everytick:novarocket
tag @s[tag=runnovarocket] remove runnovarocket
#Attachment reset (both)
scoreboard players reset @a[tag=!YellowNovaAttach,tag=!BlueNovaAttach] novattach
scoreboard players reset @a[scores={novattach=15..}] novattach
scoreboard players reset @a[team=!Yellow,team=!Blue] novattach
tag @a[team=!Yellow,team=!Blue] remove BlueNovaAttach
tag @a[team=!Yellow,team=!Blue] remove YellowNovaAttach

execute unless entity @s[tag=runcanopy] if entity @e[type=ender_pearl] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[type=marker,tag=YellowPlatform] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[type=marker,tag=BluePlatform] run tag @s add runcanopy
execute if entity @s[tag=runcanopy] run function everytick:canopy
#Near Canopy check
tag @a remove nearcanopy
execute if entity @s[tag=runcanopy] as @a[team=Blue] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..7] run tag @s add nearcanopy
execute if entity @s[tag=runcanopy] as @a[team=Yellow] at @s if entity @e[type=marker,tag=BluePlatform,distance=..7] run tag @s add nearcanopy
execute if entity @s[tag=runcanopy,tag=onlyBlue] as @a[team=Blue] at @s if entity @e[type=marker,tag=BluePlatform,distance=..7] run tag @s add nearcanopy

execute unless entity @s[tag=runfireball] if entity @e[type=fireball,tag=!obfireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[type=marker,tag=BlueFireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[type=marker,tag=YellowFireball] run tag @s add runfireball
execute if entity @s[tag=runfireball] run function everytick:fireball
tag @s[tag=runfireball] remove runfireball

function everytick:splash