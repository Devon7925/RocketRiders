#######################################################
## GENERAL SETTINGS OR HOTFIXES: Where miscellaneous ##
## things happen that don't really fit anywhere else ##
#######################################################

#Player UUID storage
execute as @a store result score @s playerUUID run data get entity @s UUID[0]

#Missile Display Area
function lobby:missiledisplay/placedisp

#Tutorial advancements
execute as @s[scores={servermode=0},tag=!SMCustom] run function tutorial:advantriggers

#Fix weirdness with joinpads
execute as @s[tag=!EditedSettings] run tag @e[tag=yellowjoinpad,type=marker] add CancelJoin
execute as @s[tag=!EditedSettings] run tag @e[tag=bluejoinpad,type=marker] add CancelJoin
execute as @s[tag=!EditedSettings] run tag @e[tag=specjoinpad,type=marker] add CancelJoin

#Utilkill timer
execute as @e[type=tnt,tag=UtilKilled] at @s run function game:tntutilkill
scoreboard players add @a[tag=UtilKilled] UKTimer 1
scoreboard players reset @a[tag=UtilKilled,scores={UKTimer=55..}] KillerUUID
tag @a[tag=UtilKilled,scores={UKTimer=55..}] remove UtilKilled
scoreboard players reset @a[scores={UKTimer=55..}] UKTimer
execute as @e[type=tnt,tag=UtilKilled] at @s run tag @a[distance=..6] add UtilKilled
execute as @e[type=tnt,tag=UtilKilled] at @s store result score @a[distance=..6] KillerUUID run scoreboard players get @s UUIDTracker

#Canopy teleport remove effects
execute as @a[team=!Blue,team=!Yellow,tag=canopyTP] run effect clear @s slowness
execute as @a[team=!Blue,team=!Yellow,tag=canopyTP] run effect clear @s slow_falling
execute as @a[team=!Blue,team=!Yellow,tag=canopyTP] run effect clear @s jump_boost

#Disable trigger objectives when appropriate
execute as @a[team=!Blue,team=!Yellow] run trigger LeaveMidgame set -1
execute as @a[team=!Lobby] run trigger MaxItemSec set 0
execute as @s[tag=EditedSettings] as @a run trigger MaxItemSec set 0
execute as @s[scores={servermode=1..}] as @a run trigger MaxItemSec set 0
execute as @s[tag=EditedSettings] as @a run trigger VoteServerMode set 0
execute as @a[team=!Lobby] run trigger daytime set 0
execute as @s[tag=EditedSettings] as @a run trigger daytime set 0
execute as @s[scores={servermode=1..}] as @a run trigger daytime set 0
execute as @a[scores={GamesPlayed=10..}] run trigger disableTips set 0
execute as @a[team=!Spectator] run trigger leaveSpec set 0

#Launch pad in Modification Room
execute as @s[tag=!GameStarted] as @a[team=Lobby] at @s if entity @e[tag=modroomGoBack,limit=1,distance=..1,type=area_effect_cloud] run effect give @s jump_boost 1 20 true
execute as @s[tag=!GameStarted] as @a[team=Lobby] at @s unless entity @e[tag=modroomGoBack,limit=1,distance=..1,type=area_effect_cloud] run effect clear @s jump_boost

#Lobby players can't enter arena (security)
execute as @a[team=Lobby] at @s if predicate custom:belowroof run tellraw @s [{"text":"You shouldn't be here!","color":"red"}]
execute as @a[team=Lobby] at @s if predicate custom:belowroof run scoreboard players set @s LeaveGame 1

#Lobby players can't switch out of adventure mode (security)
execute as @s[scores={servermode=0},tag=!SMCustom] as @a[team=Lobby,gamemode=!adventure] run gamemode adventure

#Spectators can't switch out of spectator mode (security)
execute as @a[team=Spectator,gamemode=!spectator] run gamemode spectator

#Blue/Yellow players can't switch out of adventure mode before game (security)
execute as @s[scores={servermode=0},tag=!SMCustom,tag=!GameStarted,tag=!GameEnd] as @a[team=Blue,gamemode=!adventure] run gamemode adventure
execute as @s[scores={servermode=0},tag=!SMCustom,tag=!GameStarted,tag=!GameEnd] as @a[team=Yellow,gamemode=!adventure] run gamemode adventure

#Full offhand check
tag @a[nbt=!{Inventory:[{Slot:-106b}]}] remove fullOffhand
tag @a[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand

#Full hotbar check
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar

#Remove Splash tags for Lobby players. Just a failsave
tag @a[team=!Blue,team=!Yellow] remove Winner
tag @a[team=!Blue,team=!Yellow] remove Loser

#For Canopies to continue operating (necessary for void falling)
scoreboard players add @a ThrowPlat 0
scoreboard players add @a[scores={ThrowPlat=1..30}] ThrowPlat 1
scoreboard players set @a[scores={ThrowPlat=31..}] ThrowPlat 0

#Remove dragon breath
kill @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}]

#Keep flowerpots
execute positioned -36 212 18 unless block ~ ~ ~ potted_blue_orchid run setblock ~ ~ ~ potted_blue_orchid
execute positioned -37 212 138 unless block ~ ~ ~ potted_dandelion run setblock ~ ~ ~ potted_dandelion

#Decoy Vortex (Lobby)
execute as @e[tag=VortexDummy,type=marker] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 5 force @a
execute as @e[tag=VortexDummy,type=marker] at @s run particle dust 0 0 1 1 ~ ~ ~ 0.5 0.5 0 0 2 force @a
execute as @e[tag=VortexDummy,type=marker] at @s run particle minecraft:scrape ~ ~ ~ 0.5 0.5 0 0 3 force @a

execute as @e[tag=VortexItemDummy,type=armor_stand] at @s unless entity @a[team=Lobby,distance=..4] run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=VortexItemDummy,type=armor_stand] at @s if entity @e[tag=VortexDummy,sort=nearest,limit=1,distance=..2,type=marker] if entity @a[team=Lobby,distance=..4] run tp @s ~ ~ ~ facing entity @p[team=Lobby,distance=..4]

#Lobby players have no items besides a book (and boots, if Duel is present or if noYZELO is active)
#If servermode is not active
execute as @e[tag=Selection,tag=!SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby] hotbar.0 with air
execute as @e[tag=Selection,tag=!SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby] hotbar.1 with air
execute as @e[tag=Selection,tag=!SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby] hotbar.2 with air
execute as @e[tag=Selection,tag=!SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour] hotbar.3 with air
execute as @e[tag=Selection,tag=!SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour] hotbar.5 with air
execute as @e[tag=Selection,tag=!SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby] hotbar.6 with air
execute as @e[tag=Selection,tag=!SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby] hotbar.7 with air
execute as @e[tag=Selection,tag=!SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour] hotbar.8 with air

#If servermode is active
execute as @e[tag=Selection,tag=SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.0 with air
execute as @e[tag=Selection,tag=SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.1 with air
execute as @e[tag=Selection,tag=SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.2 with air
execute as @e[tag=Selection,tag=SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.3 with air
execute as @e[tag=Selection,tag=SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.5 with air
execute as @e[tag=Selection,tag=SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.6 with air
execute as @e[tag=Selection,tag=SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.7 with air
execute as @e[tag=Selection,tag=SMActive,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour,tag=!keepInventory] hotbar.8 with air

item replace entity @a[team=Lobby] armor.head with air
item replace entity @a[team=Lobby] armor.chest with air
item replace entity @a[team=Lobby] armor.legs with air
execute unless entity @e[tag=rr_duel,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour] armor.feet with air
execute if entity @e[tag=Selection,tag=noYZELO,type=armor_stand,limit=1] run item replace entity @a[team=Lobby,tag=!inParkour] armor.feet with air
execute as @s[scores={servermode=0}] as @a[team=Lobby] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:written_book"}]}] run item replace entity @s hotbar.4 with written_book{pages: ['["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n\\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"Lobby Warps","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":" \\u0020(Click to teleport)","italic":true,"color":"gray"},{"text":"\\n\\n","color":"gray"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Lobby.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"Lobby","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Lobby.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Blue","color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Yellow","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Spectator","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Modification Room.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 2"}},{"text":"Modification Room","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Modification Room.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 2"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Missile Display Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"Missile Display Area","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Missile Display Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Parkour Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":" Parkour Area","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Parkour Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":"\\n\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[How to Play]","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to learn how to play Rocket Riders.","italic":true,"color":"white"}]},"clickEvent":{"action":"change_page","value":"2"}},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[Credits]","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to see credits.","italic":true,"color":"white"}]},"clickEvent":{"action":"change_page","value":"3"}}]', '["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020","color":"reset"},{"text":"How to Play","underlined":true,"color":"light_purple"},{"text":"\\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\\n\\nIn the Modification Room, you can easily customize the game with many gamemodes, modifiers, and settings to play with.","color":"reset"}]', '["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"Credits","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"This game was made in ","color":"dark_gray"},{"text":"4+ years","color":"light_purple"},{"text":"!","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"This game is brought to you by:\\n- ","color":"dark_gray"},{"text":"Evtema3","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out Evtema3.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC2R-J5Ik34sPqvUSBm2uUxQ"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"YZEROgame","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out YZEROgame.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC7-j3tkiF9PeT2FVbI8WR4A"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"Chronos22","color":"#0248e9","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out Chronos22.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCK1WeblW__mSmkjV4jJ5h-Q/featured"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"All ","color":"dark_purple"},{"text":"80+","underlined":true,"color":"gold"},{"text":" playtesters","color":"dark_purple"},{"text":"\\n\\n","color":"reset"},{"text":"This lobby was made by the","color":"dark_gray"},{"text":" Cube","color":"dark_aqua"},{"text":"Krowd","color":"gold"},{"text":" \\u0020 \\u0020 build team.","color":"dark_gray"}]'], title: "Navigation Book", author: Zeronia, display: {Name: '{"translate":"Navigation Book","color":"dark_green","bold":true,"italic":false}', Lore: ['{"translate":"A helpful book used to gain","color":"purple"}', '{"translate":"information and teleport","color":"purple"}', '{"translate":"around the lobby.","color":"purple"}']}}
execute as @s[scores={servermode=1}] as @a[team=Lobby] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:written_book"}]}] run item replace entity @s hotbar.4 with written_book{pages: ['["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n\\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"Lobby Warps","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":" \\u0020(Click to teleport)","italic":true,"color":"gray"},{"text":"\\n\\n","color":"gray"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Lobby.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"Lobby","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Lobby.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Blue","color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Yellow","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Spectator","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Missile Display Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"Missile Display Area","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Missile Display Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Parkour Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":" Parkour Area","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Parkour Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":"\\n\\n\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[How to Play]","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to learn how to play Rocket Riders.","italic":true,"color":"white"}]},"clickEvent":{"action":"change_page","value":"2"}},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[Credits]","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to see credits.","italic":true,"color":"white"}]},"clickEvent":{"action":"change_page","value":"3"}}]', '["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020","color":"reset"},{"text":"How to Play","underlined":true,"color":"light_purple"},{"text":"\\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\\n\\nBetween rounds, players can vote between several gamemodes, modifiers, base presets, and settings to play with.","color":"reset"}]', '["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"Credits","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"This game was made in ","color":"dark_gray"},{"text":"4+ years","color":"light_purple"},{"text":"!","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"This game is brought to you by:\\n- ","color":"dark_gray"},{"text":"Evtema3","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out Evtema3.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC2R-J5Ik34sPqvUSBm2uUxQ"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"YZEROgame","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out YZEROgame.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC7-j3tkiF9PeT2FVbI8WR4A"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"Chronos22","color":"#0248e9","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out Chronos22.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCK1WeblW__mSmkjV4jJ5h-Q/featured"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"All ","color":"dark_purple"},{"text":"80+","underlined":true,"color":"gold"},{"text":" playtesters","color":"dark_purple"},{"text":"\\n\\n","color":"reset"},{"text":"This lobby was made by the","color":"dark_gray"},{"text":" Cube","color":"dark_aqua"},{"text":"Krowd","color":"gold"},{"text":" \\u0020 \\u0020 build team.","color":"dark_gray"}]'], title: "Navigation Book", author: Zeronia, display: {Name: '{"translate":"Navigation Book","color":"dark_green","bold":true,"italic":false}', Lore: ['{"translate":"A helpful book used to gain","color":"purple"}', '{"translate":"information and teleport","color":"purple"}', '{"translate":"around the lobby.","color":"purple"}']}}
execute as @s[scores={servermode=2}] as @a[team=Lobby] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:written_book"}]}] run item replace entity @s hotbar.4 with written_book{pages: ['["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n\\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"Lobby Warps","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":" \\u0020(Click to teleport)","italic":true,"color":"gray"},{"text":"\\n\\n","color":"gray"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Lobby.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"Lobby","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Lobby.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Blue","color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Yellow","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Spectator","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Missile Display Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"Missile Display Area","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Missile Display Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Parkour Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":" Parkour Area","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Parkour Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":"\\n\\n\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[How to Play]","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to learn how to play Rocket Riders.","italic":true,"color":"white"}]},"clickEvent":{"action":"change_page","value":"2"}},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[Credits]","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to see credits.","italic":true,"color":"white"}]},"clickEvent":{"action":"change_page","value":"3"}}]', '["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020","color":"reset"},{"text":"How to Play","underlined":true,"color":"light_purple"},{"text":"\\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\\n\\nIn 1v1 Duel Mode, players go against each other for a best of three, one-on-one tournament-style match.","color":"reset"}]', '["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"Credits","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"This game was made in ","color":"dark_gray"},{"text":"4+ years","color":"light_purple"},{"text":"!","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"This game is brought to you by:\\n- ","color":"dark_gray"},{"text":"Evtema3","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out Evtema3.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC2R-J5Ik34sPqvUSBm2uUxQ"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"YZEROgame","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out YZEROgame.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC7-j3tkiF9PeT2FVbI8WR4A"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"Chronos22","color":"#0248e9","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out Chronos22.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCK1WeblW__mSmkjV4jJ5h-Q/featured"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"All ","color":"dark_purple"},{"text":"80+","underlined":true,"color":"gold"},{"text":" playtesters","color":"dark_purple"},{"text":"\\n\\n","color":"reset"},{"text":"This lobby was made by the","color":"dark_gray"},{"text":" Cube","color":"dark_aqua"},{"text":"Krowd","color":"gold"},{"text":" \\u0020 \\u0020 build team.","color":"dark_gray"}]'], title: "Navigation Book", author: Zeronia, display: {Name: '{"translate":"Navigation Book","color":"dark_green","bold":true,"italic":false}', Lore: ['{"translate":"A helpful book used to gain","color":"purple"}', '{"translate":"information and teleport","color":"purple"}', '{"translate":"around the lobby.","color":"purple"}']}}

#Lobby player book anti-dupe
execute as @a[team=Lobby] store result score @s HasNavBook run clear @s written_book 0
clear @a[team=Lobby,scores={HasNavBook=2..}] written_book

#Servermode teleport out of modification room
execute as @s[scores={servermode=1..}] as @a at @s if predicate tutorial:in_modification run tellraw @s ["",{"text":"You shouldn't be here!","color":"red"}]
execute as @s[scores={servermode=1..}] as @a[team=!Spectator] at @s if predicate tutorial:in_modification run function custom:leave
execute as @s[scores={servermode=1..}] as @a[team=Spectator] at @s if predicate tutorial:in_modification run tp @s 12 100 0.5 90 90