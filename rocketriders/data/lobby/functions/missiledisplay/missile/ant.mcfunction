##Missile Display for A.N.T

data merge entity @e[type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"A.N.T.","color":"green","bold":true}'}
data merge entity @e[type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"2","color":"white"}]'}
data merge entity @e[type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"2.2m/s","color":"white"}]'}
data merge entity @e[type=item_frame,tag=MisDispIF,limit=1] {Item:{id:"minecraft:bat_spawn_egg",Count:1b}}
data remove entity @e[type=item_frame,tag=MisDispIF,limit=1] Item.tag.Enchantments

playsound minecraft:entity.generic.explode master @a 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force

scoreboard players set $prevpage CmdData 0

fill 22 202 69 15 206 87 air

setblock 18 201 75 minecraft:structure_block{mode:"LOAD",name:"minecraft:ant_blue",posY:2}
setblock 18 202 75 redstone_block
setblock 18 202 75 air
setblock 18 201 75 blue_concrete_powder

fill 22 202 69 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Normal] ","color":"green","bold":true},{"text":"A.N.T.","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The A.N.T. stands for Almost No TNT. It is one of the smallest functional missiles, made with only two TNT blocks.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Evtema3)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}