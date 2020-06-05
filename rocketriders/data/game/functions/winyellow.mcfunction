#Advancements
function achievements:aftergameyellow
function achievements:aftergame

#Kill bots
kill @e[tag=Bot]

#Win stuff
tag @s add GameEnd
tag @s add YellowWon
tag @s add YellowWonFirst
execute as @a unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
execute as @a store result score @s HasFirework run clear @s firework_rocket 0
give @a[team=Yellow,scores={HasFirework=0}] firework_rocket{display:{Name:'{"text":"Celebratory Fireworks","color":"yellow","bold":"true","italic":"false"}'},Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]},CanPlaceOn:["#custom:missileblocks","#custom:basereplace"],HideFlags:50} 5
execute as @a store result score @s HasFlag run clear @s #banners 0
replaceitem entity @a[team=Blue,scores={HasFlag=0}] armor.head blue_banner{display:{Name:'{"text":"Flag of Shameful Loss","color":"blue","bold":"true","italic":"false"}'},BlockEntityTag:{Base:11,Patterns:[{Pattern:hh,Color:0},{Pattern:hhb,Color:0},{Pattern:ls,Color:11},{Pattern:bs,Color:11},{Pattern:ls,Color:0},{Pattern:bs,Color:0},{Pattern:rs,Color:0},{Pattern:tl,Color:0}]},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:39} 1

#Bangladesh flag for Ev, remove when we're near release.
execute as Evtema3 if entity @s[team=Blue] run replaceitem entity @s armor.head green_banner{display:{Name:'{"text":"Flag of Many War Crimes","color":"red","bold":"true","italic":"false"}'},BlockEntityTag:{Base:2,Patterns:[{Pattern:mc,Color:14}]},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:39} 1

execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s slowness
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s levitation
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s poison
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s blindness
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect give @s resistance 13 100 true
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect give @s regeneration 1 255 true
execute as @a[team=Blue] at @s run stopsound @s
execute as @a[team=Yellow] at @s run stopsound @s
execute as @a[team=Yellow] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute as @a[team=Blue] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
title @a title ["",{"text":"Team Yellow Won!","color":"yellow","bold":true}]
title @a[team=Blue] subtitle ["",{"text":"Better luck next time!","color":"red","bold":true}]
title @a[team=Yellow] subtitle ["",{"text":"Take some time to celebrate!","color":"green","bold":true}]