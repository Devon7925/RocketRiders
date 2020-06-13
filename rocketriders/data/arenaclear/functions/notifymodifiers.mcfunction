#Active modifiers
tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":"  "}]
tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Modifiers:","color":"gray"}]
execute if entity @e[tag=Selection,tag=!Instamine,tag=!NoFall,tag=!Explosive,tag=!Residers,tag=!Sonar,tag=!Molerat,tag=!Minute,tag=!SurpriseEgg,tag=!WindDown,tag=!SplashStreams] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" None ","color":"aqua"}]
execute if entity @e[tag=Selection,tag=Instamine] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Instamine ","color":"aqua"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Players receive Haste 255 and can mine (most) blocks instantly.","color":"white"}]}}]
execute if entity @e[tag=Selection,tag=NoFall] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" No Fall ","color":"aqua"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Players are immune to fall damage.","color":"white"}]}}]
execute if entity @e[tag=Selection,tag=Explosive] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Explosive ","color":"aqua"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"TNT, Fireballs, Nova Rockets, and the Vortex all do more explosion damage.","color":"white"}]}}]
execute if entity @e[tag=Selection,tag=Residers] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Rocket Residers ","color":"aqua"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Players cannot leave their bases.","color":"white"}]}}]
execute if entity @e[tag=Selection,tag=Sonar] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Sonar ","color":"aqua"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Players receive night vision and blindness so they cannot see blocks. Other players, projectiles, TNT, and utilities have glowing.","color":"white"}]}}]
execute if entity @e[tag=Selection,tag=Molerat] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Molerat ","color":"aqua"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"A big block of glass spawns in the center of the map, which players must break through to damage the other base.","color":"white"}]}}]
execute if entity @e[tag=Selection,tag=Minute] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Minute Mix ","color":"aqua"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Players receive a new set of items every minute.","color":"white"}]}}]
execute if entity @e[tag=Selection,tag=SurpriseEgg] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Surprise Eggs ","color":"aqua"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Players have a chance to receive a special spawn egg that can spawn a random missile.","color":"white"}]}}]
execute if entity @e[tag=Selection,tag=WindDown] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Wind Down ","color":"aqua"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"After every item given, the time between receiving items decreases, intensifying the game as it continues.","color":"white"}]}}]
execute if entity @e[tag=Selection,tag=SplashStreams] run tellraw @a[team=Lobby] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Splash Streams ","color":"aqua"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Liquids placed by Splash bottles are permanent.","color":"white"}]}}]