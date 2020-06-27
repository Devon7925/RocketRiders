##Sub-sub-RNG for Normal Missiles
#Choose between each missile based on enabled status and Tetris state
execute if entity @e[tag=Selection,tag=rngAnt,tag=!givenAnt] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngAnt","rng3"]}
execute if entity @e[tag=Selection,tag=rngLift,tag=!givenLift] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngLift","rng3"]}
execute if entity @e[tag=Selection,tag=rngBlade,tag=!givenBlade] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngBlade","rng3"]}
execute if entity @e[tag=Selection,tag=rngCata,tag=!givenCata] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngCata","rng3"]}
execute if entity @e[tag=Selection,tag=rngEguard,tag=!givenGuard] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngEguard","rng3"]}
execute if entity @e[tag=Selection,tag=rngNull,tag=!givenNull] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngNull","rng3"]}
execute if entity @e[tag=Selection,tag=rngSlash,tag=!givenSlash] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSlash","rng3"]}
execute if entity @e[tag=Selection,tag=rngToma,tag=!givenToma] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngToma","rng3"]}
execute if entity @e[tag=Selection,tag=rngCitadel,tag=!givenCita] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngCitadel","rng3"]}
execute if entity @e[tag=Selection,tag=rngGemi,tag=!givenGemi] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngGemi","rng3"]}

#Select a missile and run appropriate give function
tag @e[tag=rng3,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngAnt] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveant
execute as @e[tag=rngSelected,tag=rngLift] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givelift
execute as @e[tag=rngSelected,tag=rngBlade] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveblade
execute as @e[tag=rngSelected,tag=rngCata] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givecata
execute as @e[tag=rngSelected,tag=rngEguard] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveeguard
execute as @e[tag=rngSelected,tag=rngNull] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givenull
execute as @e[tag=rngSelected,tag=rngSlash] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/giveslash
execute as @e[tag=rngSelected,tag=rngToma] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givetoma
execute as @e[tag=rngSelected,tag=rngCitadel] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givecitadel
execute as @e[tag=rngSelected,tag=rngGemi] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:missile/normal/givegemi