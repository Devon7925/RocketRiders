function rr_pve:disable
execute if entity @e[tag=rr_pve,limit=1] run kill @e[tag=rr_pve,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_pve,limit=1] run tellraw @s {"text":"PVE Mode uninstalled.","color":"red","bold":"true"}