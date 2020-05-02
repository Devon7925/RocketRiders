#leave midgame
function game:leavemidgame

#general
function rr_crusade:items/antidupe
function rr_crusade:items/spawnitems

#Item RNG and spawnpoints
scoreboard players add @e[tag=Selection] RandomItem 1
execute as @e[scores={RandomItem=400..}] run function items:rng
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar
execute as @e[scores={RandomItem=400..}] as @a unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @e[scores={RandomItem=400..}] as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
scoreboard players reset @e[scores={RandomItem=300..}] RandomItem
spawnpoint @a[team=Blue] 12 64 -66
spawnpoint @a[team=Yellow] 12 64 66

#Give canopies every 5 seconds
scoreboard players add @e[tag=Selection] givecanopy 1
execute as @e[tag=Selection,scores={givecanopy=100..}] as @a[team=Yellow] run function items:util/givecanopy
execute as @e[tag=Selection,scores={givecanopy=100..}] as @a[team=Blue] run function items:util/givecanopy
scoreboard players reset @e[scores={givecanopy=100..}] givecanopy

#Yellow Nexus Health
##A
execute as @e[tag=YellowNexusA,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run scoreboard players remove @s nexushealth 1
execute as @e[tag=YellowNexusA,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run summon end_crystal ~ ~ ~
##B
execute as @e[tag=YellowNexusB,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run scoreboard players remove @s nexushealth 1
execute as @e[tag=YellowNexusB,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run summon end_crystal ~ ~ ~
##C
execute as @e[tag=YellowNexusC,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run scoreboard players remove @s nexushealth 1
execute as @e[tag=YellowNexusC,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run summon end_crystal ~ ~ ~



#Blue Nexus Health
##A
execute as @e[tag=BlueNexusA,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run scoreboard players remove @s nexushealth 1
execute as @e[tag=BlueNexusA,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run summon end_crystal ~ ~ ~
##B
execute as @e[tag=BlueNexusB,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run scoreboard players remove @s nexushealth 1
execute as @e[tag=BlueNexusB,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run summon end_crystal ~ ~ ~
##C
execute as @e[tag=BlueNexusC,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run scoreboard players remove @s nexushealth 1
execute as @e[tag=BlueNexusC,scores={nexushealth=2..}] at @s unless entity @e[type=end_crystal,distance=..2,limit=1] run summon end_crystal ~ ~ ~

#win
execute as @e[tag=YellowNexusC,scores={nexushealth=1}] run function rr_crusade:game/winblue
execute as @e[tag=YellowNexusC,scores={nexushealth=1}] run kill @e[type=end_crystal]

execute as @e[tag=BlueNexusC,scores={nexushealth=1}] run function rr_crusade:game/winyellow
execute as @e[tag=BlueNexusC,scores={nexushealth=1}] run kill @e[type=end_crystal]

#Open Nexus C
execute as @e[tag=BlueNexusA,scores={nexushealth=0}] as @e[tag=BlueNexusB,scores={nexushealth=0}] at @e[tag=BlueNexusC] run fill 13 93 -62 11 95 -64 air replace obsidian
execute as @e[tag=YellowNexusA,scores={nexushealth=0}] as @e[tag=YellowNexusB,scores={nexushealth=0}] at @e[tag=YellowNexusC] run fill 13 93 62 11 95 64 air replace obsidian

#Collapse Animation Blue
#A
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run tellraw @a[team=Yellow] ["",{"text":"Destroyed blue's Nexus A!","color":"gold","bold":true}]
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run tellraw @a[team=Blue] ["",{"text":"Nexus A has been destroyed!","color":"red","bold":true}]
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run tellraw @a[team=Yellow] ["",{"text":"Destroyed blue's Nexus B!","color":"gold","bold":true}]
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run tellraw @a[team=Blue] ["",{"text":"Nexus B has been destroyed!","color":"red","bold":true}]

execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run tellraw @a[team=Blue] ["",{"text":"Destroyed yellow's Nexus A!","color":"blue","bold":true}]
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run tellraw @a[team=Yellow] ["",{"text":"Nexus A has been destroyed!","color":"red","bold":true}]
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run tellraw @a[team=Blue] ["",{"text":"Destroyed yellow's Nexus B!","color":"blue","bold":true}]
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run tellraw @a[team=Yellow] ["",{"text":"Nexus B has been destroyed!","color":"red","bold":true}]


execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 4 2
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run fill ~1 ~7 ~1 ~-1 ~-7 ~-1 air destroy
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~-2 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~-1 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~-1 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~-1 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~-1 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~ ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~ ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~ ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~ ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~2 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~2 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~2 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~2 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~3 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~3 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~3 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~3 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~4 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
scoreboard players set @e[tag=BlueNexusA,scores={nexushealth=1}] nexushealth 0
#B
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 4 2
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run fill ~1 ~7 ~1 ~-1 ~-7 ~-1 air destroy
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~-2 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~-1 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~-1 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~-1 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~-1 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~ ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~ ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~ ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~ ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~2 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~2 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~2 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~2 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~3 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~3 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~3 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~3 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=BlueNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~4 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
scoreboard players set @e[tag=BlueNexusB,scores={nexushealth=1}] nexushealth 0



#Collapse Animation Yellow
#A
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 4 2
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run fill ~1 ~7 ~1 ~-1 ~-7 ~-1 air destroy
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~-2 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~-1 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~-1 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~-1 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~-1 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~ ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~ ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~ ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~ ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~2 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~2 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~2 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~2 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~1 ~3 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~3 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~3 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~3 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusA,scores={nexushealth=1}] at @s run summon falling_block ~ ~4 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
scoreboard players set @e[tag=YellowNexusA,scores={nexushealth=1}] nexushealth 0
#B
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 4 2
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run fill ~1 ~7 ~1 ~-1 ~-7 ~-1 air destroy
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~-2 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~-1 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~-1 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~-1 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~-1 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~ ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~ ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~ ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~ ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~2 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~2 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~2 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~2 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~1 ~3 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~-1 ~3 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~3 ~1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~3 ~-1 {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
execute as @e[tag=YellowNexusB,scores={nexushealth=1}] at @s run summon falling_block ~ ~4 ~ {Tags:["FallingNexus"],Time:1,BlockState:{Name:"minecraft:bedrock"}}
scoreboard players set @e[tag=YellowNexusB,scores={nexushealth=1}] nexushealth 0



execute as @e[tag=FallingNexus] at @s unless block ~ ~-1 ~ air run kill @s



