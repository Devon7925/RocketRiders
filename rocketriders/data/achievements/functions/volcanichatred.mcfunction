#volcanic hatred
execute as @a[team=Blue] if score @s playerUUIDL = @e[tag=lavasplashclear,limit=1,sort=arbitrary] splashOwnerUUIDL at @e[tag=lavasplashclear,limit=1,sort=arbitrary] if entity @a[team=Yellow,distance=..5,limit=1,predicate=custom:is_on_fire] if score @a[team=Yellow,distance=..5,limit=1,predicate=custom:is_on_fire] PlayerDeaths < @a[team=Yellow,distance=..5,limit=1,predicate=custom:is_on_fire] deaths run advancement grant @s only achievements:rr_challenges/volcanic_hatred
execute as @a[team=Yellow] if score @s playerUUIDL = @e[tag=lavasplashclear,limit=1,sort=arbitrary] splashOwnerUUIDL at @e[tag=lavasplashclear,limit=1,sort=arbitrary] if entity @a[team=Blue,distance=..5,predicate=custom:is_on_fire] if score @a[team=Blue,distance=..5,limit=1,predicate=custom:is_on_fire] PlayerDeaths < @a[team=Blue,distance=..5,limit=1,predicate=custom:is_on_fire] deaths run advancement grant @s only achievements:rr_challenges/volcanic_hatred