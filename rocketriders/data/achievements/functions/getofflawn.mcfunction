#get off my lawn
execute as @a[team=Yellow,scores={PlayerKills=1..}] at @s if entity @a[team=Blue,distance=..5,limit=1] if entity @e[tag=YellowPlatform,distance=..5,limit=1] run advancement grant @s only achievements:rr_challenges/get_off_lawn

execute as @a[team=Blue,scores={PlayerKills=1..}] at @s if entity @a[team=Yellow,distance=..5,limit=1] if entity @e[tag=BluePlatform,distance=..5,limit=1] run advancement grant @s only achievements:rr_challenges/get_off_lawn