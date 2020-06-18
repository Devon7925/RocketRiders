#Fireball
execute as @e[tag=BlueFireball] at @s run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballBlue"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
kill @e[tag=BlueFireball]
execute as @e[tag=YellowFireball] at @s run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballYellow"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
kill @e[tag=YellowFireball]
tag @e[type=fireball,tag=NormalFireball,nbt={Motion:[0.0,0.0,0.0]}] add Still
execute as @e[type=fireball,tag=FireballBlue,tag=!Still] at @s[tag=NormalFireball] run particle soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a
execute as @e[type=fireball,tag=FireballYellow,tag=!Still] at @s[tag=NormalFireball] run particle flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a
execute as @e[type=fireball,tag=!Still,tag=NoMotion] at @s run kill @e[tag=FireballAS,distance=..2,limit=1,sort=nearest]
execute as @e[type=fireball,tag=!Still,tag=NoMotion] at @s run tag @s remove NoMotion
tag @e[type=fireball] remove Still