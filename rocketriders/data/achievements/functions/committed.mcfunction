##Inaccurate but Committed achievement
##Uses volume checks to detect players at the world border

execute as @a[team=!Lobby,team=!Spectator,team=!Developer] at @s if entity @s[z=175,dz=180] run advancement grant @s only achievements:rr_challenges/committed
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] at @s if entity @s[z=-354,dz=180] run advancement grant @s only achievements:rr_challenges/committed
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] at @s if entity @s[x=187,dx=180] run advancement grant @s only achievements:rr_challenges/committed
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] at @s if entity @s[x=-342,dx=180] run advancement grant @s only achievements:rr_challenges/committed