#fire within me
execute as @a[scores={PlayerKills=1..},predicate=custom:is_on_fire] unless entity @s[team=!Blue,team=!Yellow] run advancement grant @s only achievements:rr_challenges/fire_within_me