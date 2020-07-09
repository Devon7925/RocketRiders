execute as @s at @s if entity @e[scores={botmisspawn=1..},distance=2..6,type=armor_stand] run scoreboard players set @s botmisspawn 61

scoreboard players add @s botmisspawn 1

execute as @s[tag=BotHasToma,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGToma","BMRNG"],Duration:1}
execute as @s[tag=BotHasAux,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGAux","BMRNG"],Duration:1}
execute as @s[tag=BotHasBlade,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGBlade","BMRNG"],Duration:1}
execute as @s[tag=BotHasAnt,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGAnt","BMRNG"],Duration:1}
execute as @s[tag=BotHasCata,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGCata","BMRNG"],Duration:1}
execute as @s[tag=BotHasCita,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGCita","BMRNG"],Duration:1}
execute as @s[tag=BotHasNull,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGNull","BMRNG"],Duration:1}
execute as @s[tag=BotHasGuard,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGGuard","BMRNG"],Duration:1}
execute as @s[tag=BotHasGemi,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGGemi","BMRNG"],Duration:1}
execute as @s[tag=BotHasHur,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGHur","BMRNG"],Duration:1}
execute as @s[tag=BotHasJug,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGJug","BMRNG"],Duration:1}
execute as @s[tag=BotHasLift,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGLift","BMRNG"],Duration:1}
execute as @s[tag=BotHasRift,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGRift","BMRNG"],Duration:1}
execute as @s[tag=BotHasSlash,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGSlash","BMRNG"],Duration:1}
execute as @s[tag=BotHasBolt,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGBolt","BMRNG"],Duration:1}
execute as @s[tag=BotHasWar,scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["BMRNGWar","BMRNG"],Duration:1}
execute as @s[scores={botmisspawn=1}] at @s run tag @e[tag=BMRNG,distance=..1,limit=1,sort=random,type=area_effect_cloud] add SelectedBMRNG

execute as @s[scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["RideRNG","RideTrue"],Duration:1}
execute as @s[scores={botmisspawn=1}] at @s unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Tags:["RideRNG","RideFalse"],Duration:1}
execute as @s[scores={botmisspawn=1}] at @s run tag @e[tag=RideRNG,distance=..1,limit=1,sort=random,type=area_effect_cloud] add SelectedRide

execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGToma,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotTomaSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGAux,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotAuxSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGBlade,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotBladeSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGAnt,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotAntSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGCata,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotCataSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGCita,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotCitaSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGNull,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotNullSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGGuard,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotGuardSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGGemi,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotGemiSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGHur,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotHurSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGJug,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotJugSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGLift,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotLiftSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGRift,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotRiftSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGSlash,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotSlashSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGBolt,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotBoltSpawn
execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedBMRNG,tag=BMRNGWar,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotWarSpawn

execute as @s[scores={botmisspawn=1}] at @s if entity @e[tag=SelectedRide,tag=RideTrue,distance=..1,limit=1,type=area_effect_cloud] run tag @s add BotRider

kill @e[tag=RideRNG,type=area_effect_cloud]
kill @e[tag=BMRNG,type=area_effect_cloud]


execute as @s[tag=BotTomaSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand creeper_spawn_egg
execute as @s[tag=BotAuxSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand mooshroom_spawn_egg
execute as @s[tag=BotBladeSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand husk_spawn_egg
execute as @s[tag=BotAntSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand bat_spawn_egg
execute as @s[tag=BotCataSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand cave_spider_spawn_egg
execute as @s[tag=BotCitaSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand wandering_trader_spawn_egg
execute as @s[tag=BotNullSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand phantom_spawn_egg
execute as @s[tag=BotGuardSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand elder_guardian_spawn_egg
execute as @s[tag=BotGemiSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand fox_spawn_egg
execute as @s[tag=BotHurSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand drowned_spawn_egg
execute as @s[tag=BotJugSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand zombie_horse_spawn_egg
execute as @s[tag=BotLiftSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand dolphin_spawn_egg
execute as @s[tag=BotRiftSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand salmon_spawn_egg
execute as @s[tag=BotSlashSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand shulker_spawn_egg
execute as @s[tag=BotBoltSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand vex_spawn_egg
execute as @s[tag=BotWarSpawn,scores={botmisspawn=5}] run replaceitem entity @s weapon.offhand silverfish_spawn_egg



execute as @s[tag=BotTomaSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotAuxSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotBladeSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotAntSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotCataSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotCitaSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotNullSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotGuardSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotGemiSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotHurSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotJugSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotLiftSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotRiftSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotSlashSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotBoltSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41
execute as @s[tag=BotWarSpawn,scores={botmisspawn=20..39}] at @s if entity @e[tag=RecentBotSpawn,distance=..7,type=area_effect_cloud] run scoreboard players set @s botmisspawn 41

# Bot spawning - Blue
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotTomaSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/tomatwo
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/auxiliary
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBladeSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/blade
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAntSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/ant
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCataSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/catapult
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCitaSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/citadel
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotNullSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/chronul
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGuardSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/elderguard
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGemiSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/gemini
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotHurSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/hurricane
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotJugSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/jbust
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotLiftSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/lifter
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotRiftSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/rifter
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotSlashSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/slasher
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBoltSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/thunderbolt
execute as @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/warhead


# Bot spawning - Yellow
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotTomaSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/tomatwo
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/auxiliary
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBladeSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/blade
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAntSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/ant
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCataSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/catapult
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCitaSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/citadel
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotNullSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/chronul
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGuardSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/elderguard
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGemiSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/gemini
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotHurSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/hurricane
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotJugSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/jbust
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotLiftSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/lifter
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotRiftSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/rifter
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotSlashSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/slasher
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBoltSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/thunderbolt
execute as @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[tag=RecentBotspawn,distance=..7,type=area_effect_cloud] run function rr_bots:bot/missile/spawns/warhead





tag @s[tag=DoneSpawning] remove BotTomaSpawn
tag @s[tag=DoneSpawning] remove BotAuxSpawn
tag @s[tag=DoneSpawning] remove BotBladeSpawn
tag @s[tag=DoneSpawning] remove BotAntSpawn
tag @s[tag=DoneSpawning] remove BotCataSpawn
tag @s[tag=DoneSpawning] remove BotCitaSpawn
tag @s[tag=DoneSpawning] remove BotNullSpawn
tag @s[tag=DoneSpawning] remove BotGuardSpawn
tag @s[tag=DoneSpawning] remove BotGemiSpawn
tag @s[tag=DoneSpawning] remove BotHurSpawn
tag @s[tag=DoneSpawning] remove BotJugSpawn
tag @s[tag=DoneSpawning] remove BotLiftSpawn
tag @s[tag=DoneSpawning] remove BotRiftSpawn
tag @s[tag=DoneSpawning] remove BotSlashSpawn
tag @s[tag=DoneSpawning] remove BotBoltSpawn
tag @s[tag=DoneSpawning] remove BotWarSpawn







execute as @s[scores={botmisspawn=40..}] run replaceitem entity @s weapon.offhand air

tag @s[tag=!BotHasToma,scores={botmisspawn=40..}] remove BotTomaSpawn
tag @s[tag=!BotHasAux,scores={botmisspawn=40..}] remove BotAuxSpawn
tag @s[tag=!BotHasBlade,scores={botmisspawn=40..}] remove BotBladeSpawn
tag @s[tag=!BotHasAnt,scores={botmisspawn=40..}] remove BotAntSpawn
tag @s[tag=!BotHasCata,scores={botmisspawn=40..}] remove BotCataSpawn
tag @s[tag=!BotHasCita,scores={botmisspawn=40..}] remove BotCitaSpawn
tag @s[tag=!BotHasNull,scores={botmisspawn=40..}] remove BotNullSpawn
tag @s[tag=!BotHasGuard,scores={botmisspawn=40..}] remove BotGuardSpawn
tag @s[tag=!BotHasGemi,scores={botmisspawn=40..}] remove BotGemiSpawn
tag @s[tag=!BotHasHur,scores={botmisspawn=40..}] remove BotHurSpawn
tag @s[tag=!BotHasJug,scores={botmisspawn=40..}] remove BotJugSpawn
tag @s[tag=!BotHasLift,scores={botmisspawn=40..}] remove BotLiftSpawn
tag @s[tag=!BotHasRift,scores={botmisspawn=40..}] remove BotRiftSpawn
tag @s[tag=!BotHasSlash,scores={botmisspawn=40..}] remove BotSlashSpawn
tag @s[tag=!BotHasBolt,scores={botmisspawn=40..}] remove BotBoltSpawn
tag @s[tag=!BotHasWar,scores={botmisspawn=40..}] remove BotWarSpawn

tag @s[scores={botmisspawn=60..}] remove DoneSpawning
tag @s[scores={botmisspawn=60..}] remove BotMissiles