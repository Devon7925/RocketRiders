##Regifting achievement for Yellow team
##Detects a Yellow player damaging a player with a Blue fireball

scoreboard players add @s[team=Yellow] regifts 1
advancement grant @s[team=Yellow,scores={regifts=5}] only achievements:rr_challenges/regifting
advancement revoke @s only achievements:rr_utility/yellow_fireball_hit