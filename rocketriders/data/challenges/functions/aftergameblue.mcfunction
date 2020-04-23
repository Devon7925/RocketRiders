#Pacifist
advancement grant @a[tag=!CompletedPacifist,team=Blue,scores={kills=..0}] only challenges:rrachievements/pacifist
scoreboard players add @a[tag=!CompletedPacifist,team=Blue,scores={kills=..0}] XP 20
tag @a[tag=!CompletedPacifist,team=Blue,scores={kills=..0}] add CompletedPacifist

#Swiss Cheese
execute as @e[tag=BlueHole1] at @s if block ~ ~ ~ air as @e[tag=BlueHole2] at @s if block ~ ~ ~ air as @e[tag=BlueHole3] at @s if block ~ ~ ~ air as @e[tag=BlueHole4] at @s if block ~ ~ ~ air as @e[tag=BlueHole5] at @s if block ~ ~ ~ air as @e[tag=BlueHole6] at @s if block ~ ~ ~ air run advancement grant @a[team=Blue,tag=!CompletedCheese] only challenges:rrachievements/swiss_cheese
execute as @e[tag=BlueHole1] at @s if block ~ ~ ~ air as @e[tag=BlueHole2] at @s if block ~ ~ ~ air as @e[tag=BlueHole3] at @s if block ~ ~ ~ air as @e[tag=BlueHole4] at @s if block ~ ~ ~ air as @e[tag=BlueHole5] at @s if block ~ ~ ~ air as @e[tag=BlueHole6] at @s if block ~ ~ ~ air run scoreboard players add @a[team=Blue,tag=!CompletedCheese] XP 75
execute as @e[tag=BlueHole1] at @s if block ~ ~ ~ air as @e[tag=BlueHole2] at @s if block ~ ~ ~ air as @e[tag=BlueHole3] at @s if block ~ ~ ~ air as @e[tag=BlueHole4] at @s if block ~ ~ ~ air as @e[tag=BlueHole5] at @s if block ~ ~ ~ air as @e[tag=BlueHole6] at @s if block ~ ~ ~ air run tag @a[team=Blue,tag=!CompletedCheese] add CompletedCheese

#Ground Bound
execute as @a[team=Blue,tag=!CompletedGroundbound,scores={jumps=..0}] at @s if entity @e[tag=YellowSpawnZone,distance=..50,limit=1] run advancement grant @s only challenges:rrachievements/groundbound
execute as @a[team=Blue,tag=!CompletedGroundbound,scores={jumps=..0}] at @s if entity @e[tag=YellowSpawnZone,distance=..50,limit=1] run scoreboard players add @s XP 25
execute as @a[team=Blue,tag=!CompletedGroundbound,scores={jumps=..0}] at @s if entity @e[tag=YellowSpawnZone,distance=..50,limit=1] run tag @s add CompletedGroundbound

#I'm helping!
execute as @a[team=Blue,tag=!CompletedImHelping,scores={AuxSpawned=0,AntsSpawned=0,BladeSpawned=0,BulletSpawned=0,CataSpawned=0,CitaSpawned=0,GemiSpawned=0,GuardSpawned=0,HurSpawned=0,HyperSpawned=0,JugbSpawned=0,LifterSpawned=0,NullSpawned=0,RifterSpawned=0,SlashSpawned=0,ThunSpawned=0,TomaSpawned=0,WarSpawned=0}] run advancement grant @s only challenges:rrachievements/helping
execute as @a[team=Blue,tag=!CompletedImHelping,scores={AuxSpawned=0,AntsSpawned=0,BladeSpawned=0,BulletSpawned=0,CataSpawned=0,CitaSpawned=0,GemiSpawned=0,GuardSpawned=0,HurSpawned=0,HyperSpawned=0,JugbSpawned=0,LifterSpawned=0,NullSpawned=0,RifterSpawned=0,SlashSpawned=0,ThunSpawned=0,TomaSpawned=0,WarSpawned=0}] run scoreboard players remove @s XP 70
execute as @a[team=Blue,tag=!CompletedImHelping,scores={AuxSpawned=0,AntsSpawned=0,BladeSpawned=0,BulletSpawned=0,CataSpawned=0,CitaSpawned=0,GemiSpawned=0,GuardSpawned=0,HurSpawned=0,HyperSpawned=0,JugbSpawned=0,LifterSpawned=0,NullSpawned=0,RifterSpawned=0,SlashSpawned=0,ThunSpawned=0,TomaSpawned=0,WarSpawned=0}] run tag @s add CompletedImHelping