execute unless entity @e[tag=rr_powerups,limit=1] run summon armor_stand 23 216 -18 {Tags:["rr_powerups"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
bossbar add rr_powerups:capture_progress {"text":"Capture Progress","color":"white","bold":"true"}
execute if entity @e[tag=rr_powerups,limit=1] run tellraw @s {"text":"Powerups Mode installed.","color":"green","bold":"true"}