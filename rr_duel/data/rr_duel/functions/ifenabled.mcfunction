#management
execute unless score @s SetGamemode = @e[type=armor_stand,tag=rr_duel,limit=1] gamemodeID run function rr_duel:disable
data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}',Text2:'{"text":"1v1 Duel","color":"red","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] refreshsigns 1"}}'}
execute if entity @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_duel:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#tips (disabled on duel servermode)
execute unless entity @s[scores={servermode=2}] unless entity @s[tag=SMCustom] run function rr_duel:tip

#forfeit prize/loss
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] run tag @a[tag=InRanked,team=Blue] add ForfeitWon
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] run tag @a[tag=InRanked,team=Yellow] add ForfeitWon
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] as @a[tag=ForfeitWon] run function rr_duel:forfeit/giveprize
scoreboard players reset @a[tag=!InRanked] ForfeitWin
scoreboard players reset @a[tag=!InRanked] ForfeitLoss
tag @s[scores={ForfeitTimeout=1200..}] remove TimeOut
scoreboard players reset @s[scores={ForfeitTimeout=1200..}] ForfeitTimeout

#game
function rr_duel:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_duel:game/ingame
execute if entity @s[tag=GameEnd] run function rr_duel:game/gameend
function everytick:no_drop
tag @s[tag=!GameStarted] remove CriteriaTrue

#leave teams
function game:leaveteams

#reset
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] run function rr_duel:arenaclear/baseplacement
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a remove informMe
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted,tag=!noYZELO] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"1v1 Duel ","color":"red"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Whoever wins two rounds gains XP. Loser loses XP\n"},{"text":"- XP translates to ranks, which affects gains/losses\n"},{"text":"- Players who log out forfeit and get XP penalty\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No decorations, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted,tag=noYZELO] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"1v1 Duel ","color":"red"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Leaving the game forfeits the duel and ends the game\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No decorations, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a run function modifiers:notifymodifiers
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add duelLast
tag @e[type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings,tag=!GameEnd] as @a[tag=informMe,tag=!Forfeiter] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings,tag=!GameEnd] run tellraw @a[tag=informMe,tag=!Forfeiter] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[tag=EditedSettings,tag=!noYZELO,tag=!GameEnd] run tellraw @a[tag=informMe,tag=!Forfeiter] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"1v1 Duel ","color":"red"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Whoever wins two rounds gains XP. Loser loses XP\n"},{"text":"- XP translates to ranks, which affects gains/losses\n"},{"text":"- Players who log out forfeit and get XP penalty\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No decorations, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}}]
execute if entity @s[tag=EditedSettings,tag=noYZELO,tag=!GameEnd] run tellraw @a[tag=informMe,tag=!Forfeiter] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"1v1 Duel ","color":"red"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Leaving the match forfeits the duel and ends the game\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No decorations, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}}]
execute if entity @s[tag=EditedSettings,tag=!GameEnd] as @a[tag=informMe,tag=!Forfeiter] run function modifiers:notifymodifiers
execute if entity @s[tag=GameStarted,tag=!GameEnd] as @a[tag=informMe,tag=!Forfeiter] run function rr_duel:notifyitems
execute if entity @s[tag=EditedSettings,tag=Repeat,tag=!GameEnd] if entity @a[tag=informMe,tag=!Forfeiter] run function gamemodes:informrepeat
tag @a[tag=informMe] remove informMe

#lock join pads
execute if entity @s[tag=EditedSettings] if entity @a[team=Blue] run function game:cancelblue
execute if entity @s[tag=EditedSettings] if entity @a[team=Yellow] run function game:cancelyellow
execute if entity @s[tag=EditedSettings,tag=!GameStarted] unless entity @a[team=Blue] run function game:uncancelblue
execute if entity @s[tag=EditedSettings,tag=!GameStarted] unless entity @a[team=Yellow] run function game:uncancelyellow

#fake game end
execute if entity @s[tag=FakeGameEnd] run function rr_duel:game/fakegameend