#Place structure block
clone ~ ~ ~ ~ ~-1 ~ ~ 254 ~ replace
setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0}
execute if entity @s[tag=portalSpawn] run data modify block ~ ~ ~ posY set value -2
execute if entity @s[tag=portalSpawn2] run data modify block ~ ~ ~ posZ set value -8
execute if entity @s[tag=portalSpawn3] run data modify block ~ ~ ~ posZ set value 8

#Auxiliary
execute if entity @s[tag=BlueAux] run data merge block ~ ~ ~ {name:"auxiliary_blue"}
execute if entity @s[tag=YellowAux] run data merge block ~ ~ ~ {name:"auxiliary_yellow"}

#Tomatwo
execute if entity @s[tag=BlueToma] run data merge block ~ ~ ~ {name:"tomatwo_blue"}
execute if entity @s[tag=YellowToma] run data merge block ~ ~ ~ {name:"tomatwo_yellow"}

#Chronullifier
execute if entity @s[tag=BlueNull] run data merge block ~ ~ ~ {name:"chronullifier_blue"}
execute if entity @s[tag=YellowNull] run data merge block ~ ~ ~ {name:"chronullifier_yellow"}

#Warhead
execute if entity @s[tag=BlueWar] run data merge block ~ ~ ~ {name:"warhead_blue"}
execute if entity @s[tag=YellowWar] run data merge block ~ ~ ~ {name:"warhead_yellow"}

#Thunderbolt
execute if entity @s[tag=BlueBolt] run data merge block ~ ~ ~ {name:"thunderbolt_blue"}
execute if entity @s[tag=YellowBolt] run data merge block ~ ~ ~ {name:"thunderbolt_yellow"}

#Hurricane
execute if entity @s[tag=BlueHur] run data merge block ~ ~ ~ {name:"hurricane_blue"}
execute if entity @s[tag=YellowHur] run data merge block ~ ~ ~ {name:"hurricane_yellow"}

#Elder Guardian
execute if entity @s[tag=BlueGuard] run data merge block ~ ~ ~ {name:"elderguard_blue"}
execute if entity @s[tag=YellowGuard] run data merge block ~ ~ ~ {name:"elderguard_yellow"}

#A.N.T.
execute if entity @s[tag=BlueAnt] run data merge block ~ ~ ~ {name:"ant_blue"}
execute if entity @s[tag=YellowAnt] run data merge block ~ ~ ~ {name:"ant_yellow"}

#Blade
execute if entity @s[tag=BlueBlade] run data merge block ~ ~ ~ {name:"blade_blue"}
execute if entity @s[tag=YellowBlade] run data merge block ~ ~ ~ {name:"blade_yellow"}

#Rifter
execute if entity @s[tag=BlueRift] run data merge block ~ ~ ~ {name:"rifter_blue"}
execute if entity @s[tag=YellowRift] run data merge block ~ ~ ~ {name:"rifter_yellow"}

#Juggerbuster
execute if entity @s[tag=BlueJug] run data merge block ~ ~ ~ {name:"juggerbuster_blue"}
execute if entity @s[tag=YellowJug] run data merge block ~ ~ ~ {name:"juggerbuster_yellow"}

#Slasher
execute if entity @s[tag=BlueSlash] run data merge block ~ ~ ~ {name:"slasher_blue"}
execute if entity @s[tag=YellowSlash] run data merge block ~ ~ ~ {name:"slasher_yellow"}

#Catapult
execute if entity @s[tag=BlueCata] run data merge block ~ ~ ~ {name:"catapult_blue"}
execute if entity @s[tag=YellowCata] run data merge block ~ ~ ~ {name:"catapult_yellow"}

#Citadel
execute if entity @s[tag=BlueCitadel] run data merge block ~ ~ ~ {name:"citadel_blue"}
execute if entity @s[tag=YellowCitadel] run data merge block ~ ~ ~ {name:"citadel_yellow"}

#Gemini
execute if entity @s[tag=BlueGemi] run data merge block ~ ~ ~ {name:"gemini_blue"}
execute if entity @s[tag=YellowGemi] run data merge block ~ ~ ~ {name:"gemini_yellow"}

#Lifter
execute if entity @s[tag=BlueLift] run data merge block ~ ~ ~ {name:"lifter_blue"}
execute if entity @s[tag=YellowLift] run data merge block ~ ~ ~ {name:"lifter_yellow"}

#Hypersonic
execute if entity @s[tag=BlueHyper] run data merge block ~ ~ ~ {name:"hypersonic_blue"}
execute if entity @s[tag=YellowHyper] run data merge block ~ ~ ~ {name:"hypersonic_yellow"}

#Bullet
execute if entity @s[tag=BlueBull] run data merge block ~ ~ ~ {name:"bullet_blue"}
execute if entity @s[tag=YellowBull] run data merge block ~ ~ ~ {name:"bullet_yellow"}

#After structure block placed
setblock ~ ~-1 ~ observer[powered=true,facing=down]
setblock ~ ~-1 ~ observer[powered=true,facing=down]
clone ~ 255 ~ ~ 254 ~ ~ ~-1 ~ replace move