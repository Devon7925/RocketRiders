##So Close, yet so Fall Away achievement
##Utilizes a fall distance check in the gain function

execute as @a[team=Blue,scores={FallDistance=1..}] at @s if entity @s[x=-15,dx=24,y=33,dy=37,z=74,dz=0] if score @s PlayerDeaths < @s deaths run advancement grant @s only achievements:rr_challenges/fall_away
execute as @a[team=Yellow,scores={FallDistance=1..}] at @s if entity @s[x=-15,dx=24,y=33,dy=37,z=-74,dz=0] if score @s PlayerDeaths < @s deaths run advancement grant @s only achievements:rr_challenges/fall_away