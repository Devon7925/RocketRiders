##Notify player about Missile Display room
tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"Tutorial","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You've found the Missile Display area. You can use the lectern to view all missiles in the game and learn how everything looks.","color":"gray"}]
execute as @s at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 0.5 2