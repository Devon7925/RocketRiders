title @s[scores={HasNova=1..},tag=!fullHotbar] actionbar {"text":"Nova Propellant already obtained.","color":"aqua"}
title @s[scores={HasNova=0},tag=!fullHotbar] actionbar {"text":"Nova Propellant obtained.","color":"aqua"}

give @s[team=Blue,scores={HasNova=0},tag=!fullHotbar] minecraft:crossbow{Damage:326,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}],Charged:1b,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Nova Propellant","color":"blue","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Shoot a Nova Rocket towards where you look.","color":"gray"}','{"text":"Launches players sky-high on impact.","color":"gray"}','{"text":"The arch nemesis of the Canopy.","color":"gray"}']}}
give @s[team=Yellow,scores={HasNova=0},tag=!fullHotbar] minecraft:crossbow{Damage:326,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}],Charged:1b,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Nova Propellant","color":"gold","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Shoot a Nova Rocket towards where you look.","color":"gray"}','{"text":"Launches players sky-high on impact.","color":"gray"}','{"text":"The arch nemesis of the Canopy.","color":"gray"}']}}

tag @e[tag=Selection] add givenNova