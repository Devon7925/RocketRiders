##RNG starter for selecting a random Blue missile from Surprise Eggs
#Choose between each category
execute if entity @e[type=armor_stand,tag=Selection,tag=rngHeavy,tag=!heavyOff] run summon marker ~ ~ ~ {Tags:["surpriseBlueHeavy","surpriseBlue1"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngNormal,tag=!normalOff] run summon marker ~ ~ ~ {Tags:["surpriseBlueNormal","surpriseBlue1"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngLightning,tag=!lightningOff] run summon marker ~ ~ ~ {Tags:["surpriseBlueLightning","surpriseBlue1"]}

#Select category and run appropriate sub-RNG function
tag @e[type=marker,tag=surpriseBlue1,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[type=marker,tag=surpriseBlueHeavy,tag=rngSelected] run function items:surprise_blue/rngheavy
execute if entity @e[type=marker,tag=surpriseBlueNormal,tag=rngSelected] run function items:surprise_blue/rngnormal
execute if entity @e[type=marker,tag=surpriseBlueLightning,tag=rngSelected] run function items:surprise_blue/rnglightning