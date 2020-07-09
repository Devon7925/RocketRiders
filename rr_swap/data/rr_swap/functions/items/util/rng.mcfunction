execute if entity @e[tag=Selection,tag=rngVortex,tag=!givenICBM,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngICBM","swapRNGD"]}
execute if entity @e[tag=Selection,tag=rngShield,tag=!givenShield,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngShield","swapRNGD"]}
tag @e[tag=swapRNGD,sort=random,limit=1,type=area_effect_cloud] add SelectedSwapRNG2

execute if entity @e[tag=Selection,tag=rngFireball,tag=!givenFireball,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngFireball","swapRNGL"]}
execute if entity @e[tag=Selection,tag=rngObshield,tag=!givenObshield,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngObshield","swapRNGL"]}
tag @e[tag=swapRNGL,sort=random,limit=1,type=area_effect_cloud] add SelectedSwapRNG2

#arrows considered separate
execute if entity @e[tag=Selection,tag=rngArrows,tag=!givenArrows,type=armor_stand] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngArrows","SelectedSwapRNG2"]}
tag @e[tag=SelectedSwapRNG2,sort=random,limit=1,type=area_effect_cloud] add SelectedSwapRNG3
execute as @e[tag=SelectedSwapRNG3,tag=rngArrows,type=area_effect_cloud] run tag @e[tag=swapRNGD,type=area_effect_cloud] remove SelectedSwapRNG2
execute as @e[tag=SelectedSwapRNG3,tag=rngArrows,type=area_effect_cloud] run tag @e[tag=swapRNGL,type=area_effect_cloud] remove SelectedSwapRNG2

execute if score SwapSide swapside matches 1 as @e[tag=SelectedSwapRNG2,tag=!rngArrows,type=area_effect_cloud] run function rr_swap:items/darkblueitems
execute if score SwapSide swapside matches 0 as @e[tag=SelectedSwapRNG2,tag=!rngArrows,type=area_effect_cloud] run function rr_swap:items/lightblueitems
execute as @e[tag=SelectedSwapRNG3,tag=rngArrows,type=area_effect_cloud] as @a unless entity @s[team=!Blue,team=!Yellow] run function items:util/givearrows