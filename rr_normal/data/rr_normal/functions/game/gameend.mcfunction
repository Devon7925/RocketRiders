clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
execute if entity @s[scores={endtimer=81},tag=doTying,tag=!tyingOff] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=!doTying] run function game:endstats