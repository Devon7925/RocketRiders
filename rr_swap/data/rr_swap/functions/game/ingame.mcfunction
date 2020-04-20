#leave midgame
function game:leavemidgame

#general
function rr_swap:items/antidupe
function rr_swap:items/spawnitems

#Item RNG and spawnpoints
scoreboard players add @e[tag=Selection] RandomItem 1
execute as @e[scores={RandomItem=400..}] run function items:rng
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar
execute as @e[scores={RandomItem=400..}] run tag @a add DelayActionbar
execute as @e[scores={RandomItem=400..}] run title @a[tag=fullHotbar] actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
scoreboard players reset @e[scores={RandomItem=400..}] RandomItem
spawnpoint @a[team=Blue] 12 64 -66
spawnpoint @a[team=Yellow] 12 64 66 

#player armor
function rr_swap:baseswap/gear

#platform
function rr_swap:baseswap/platform

#win
execute if block 13 38 74 air run function game:winblue
execute if block 11 38 74 air run function game:winblue

execute if block 11 38 -74 air run function game:winyellow
execute if block 13 38 -74 air run function game:winyellow



