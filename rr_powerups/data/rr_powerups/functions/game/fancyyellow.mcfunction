execute if entity @s[scores={captureYellow=2}] unless entity @s[tag=contested] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1.2
execute if entity @s[scores={captureYellow=2..}] unless entity @s[tag=contested] run particle minecraft:dust 1 0.667 0 2 12 55 -6 0 0.6 0 0 2 force
execute if entity @s[scores={captureYellow=2..}] unless entity @s[tag=contested] run particle minecraft:dust 1 0.667 0 2 18 55 0 0 0.6 0 0 2 force
execute if entity @s[scores={captureYellow=2..}] unless entity @s[tag=contested] run particle minecraft:dust 1 0.667 0 2 12 55 6 0 0.6 0 0 2 force
execute if entity @s[scores={captureYellow=2..}] unless entity @s[tag=contested] run particle minecraft:dust 1 0.667 0 2 6 55 0 0 0.6 0 0 2 force

execute if entity @s[scores={captureYellow=24}] at @s unless entity @s[tag=contested] run playsound entity.evoker.cast_spell master @a ~ ~ ~ 1 0.8
execute if entity @s[scores={captureYellow=24..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 11 54 6 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=24..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 13 54 6 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=24..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 18 54 1 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=24..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 18 54 -1 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=24..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 13 54 -6 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=24..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 11 54 -6 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=24..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 6 54 -1 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=24..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 6 54 1 0 0 0 0.1 2 force

execute if entity @s[scores={captureYellow=50}] at @s unless entity @s[tag=contested] run playsound entity.evoker.cast_spell master @a ~ ~ ~ 1 0.8
execute if entity @s[scores={captureYellow=50..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 7 54 2 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=50..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 7 54 -2 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=50..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 10 54 -5 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=50..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 10 54 5 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=50..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 14 54 -5 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=50..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 17 54 -2 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=50..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 17 54 2 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=50..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 14 54 5 0 0 0 0.1 2 force

execute if entity @s[scores={captureYellow=74}] at @s unless entity @s[tag=contested] run playsound entity.evoker.cast_spell master @a ~ ~ ~ 1 0.8
execute if entity @s[scores={captureYellow=74..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 9 54 5 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=74..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 7 54 3 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=74..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 7 54 -3 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=74..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 9 54 -5 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=74..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 15 54 -5 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=74..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 17 54 -3 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=74..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 17 54 3 0 0 0 0.1 2 force
execute if entity @s[scores={captureYellow=74..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 15 54 5 0 0 0 0.1 2 force

execute if entity @s[scores={captureYellow=98}] at @s unless entity @s[tag=contested] if entity @a[team=Yellow,tag=onCapturePoint] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.2
execute if entity @s[scores={captureYellow=98}] at @s unless entity @s[tag=contested] unless entity @a[team=Yellow,tag=onCapturePoint] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1.2
execute if entity @s[scores={captureYellow=98..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 16 54 -4 0 0.6 0 0 2 force
execute if entity @s[scores={captureYellow=98..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 16 54 4 0 0.6 0 0 2 force
execute if entity @s[scores={captureYellow=98..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 8 54 4 0 0.6 0 0 2 force
execute if entity @s[scores={captureYellow=98..}] unless entity @s[tag=contested] run particle minecraft:dust 1 1 0.333 1 8 54 -4 0 0.6 0 0 2 force