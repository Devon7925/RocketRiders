title @a title ["",{"text":"Game Started!","color":"gray"}]

summon area_effect_cloud ~ ~ ~ {Tags:["RandomSplash"],Duration:2000000000}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[tag=RandomSplash] RNGmax 48

execute as @e[tag=RandomSplash] store result score @s RNGscore run data get entity @s UUIDMost 0.00000000023283064365386962890625
execute as @e[tag=RandomSplash] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomSplash,limit=1] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[tag=RandomSplash,scores={RNGscore=0..1}] run title @a subtitle ["",{"text":"GL HF!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=2}] run title @a subtitle ["",{"text":"SpaceX, but sideways!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=3}] run title @a subtitle ["",{"text":"command block fish piston","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=4}] run title @a subtitle ["",{"text":"5 years of ","color":"green"},{"text":"non-stop","strikethrough":true,"color":"green"},{"text":" development!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=5}] run title @a subtitle ["",{"text":"Removed ","color":"green"},{"text":"test","obfuscated":true,"color":"red"},{"text":" from the cancelyellow function.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=6}] run title @a subtitle ["",{"text":"Let the war begin...","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=7}] run title @a subtitle ["",{"text":"bruh moment","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=8}] run title @a subtitle ["",{"text":"EC","color":"dark_green"},{"text":"W","color":"dark_red"},{"text":"IB","color":"dark_green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=9}] run title @a subtitle ["",{"text":"Battle when?","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=10}] run title @a subtitle ["",{"text":"Your ceberpbullying has been reportred!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=11}] run title @a subtitle ["",{"text":"The Vortex is always watching.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=12}] run title @a subtitle ["",{"text":"Initiating Missile Deployment Mission #184","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=13}] run title @a subtitle ["",{"text":"Good luck!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=14}] run title @a subtitle ["",{"text":"Have fun!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=15}] run title @a subtitle ["",{"text":"Please don't complain about Canopies...","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=16}] run title @a subtitle ["",{"text":"Introducing the anti-Chronos spray!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=17}] run title @a subtitle ["",{"text":"It's okay, we have another one.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=18}] run title @a subtitle ["",{"text":"Float like a Hurricane, sting like a Bullet.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=19}] run title @a subtitle ["",{"text":"New Dawn!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=20}] run title @a subtitle ["",{"text":"vortices*","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=21}] run title @a subtitle ["",{"text":"The void has never been defeated.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=22}] run title @a subtitle ["",{"text":"/function game:forcestart","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=23}] run title @a subtitle ["",{"text":"Splashes are useful!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=24}] run title @a subtitle ["",{"text":"{\"text\":\"splash_01.txt\",\"color\":\"green\"}","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=25}] run title @a subtitle ["",{"text":"fun knee","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=26}] run title @a subtitle ["",{"text":"zS","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=27}] run title @a subtitle ["",{"text":"Report any cheating to the College Board.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=28}] run title @a subtitle ["",{"text":"One day, my work will be quoted!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=29}] run title @a subtitle ["",{"text":"Are ya winning, son?","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=30}] run title @a subtitle ["",{"text":"Noob developers.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=31}] run title @a subtitle ["",{"text":"Better than Star Trek, worse than Star Wars!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=32}] run title @a subtitle ["",{"text":"Step 1: Place missile. Step 2: ??? Step 3: Profit.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=33}] run title @a subtitle ["",{"text":"Exception in server tick loop","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=34}] run title @a subtitle ["",{"text":"Been devin' since 1.11!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=35}] run title @a subtitle ["",{"text":"Muscle ELO","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=36}] run title @a subtitle ["",{"text":"If you have to ask, it's a feature!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=37}] run title @a subtitle ["",{"text":"3 billion devices use Java!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=38}] run title @a subtitle ["",{"text":"java.lang.NullPointerException: null","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=39}] run title @a subtitle ["",{"text":"Canopies are broken again!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=40}] run title @a subtitle ["",{"text":"go to bed YZERO","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=41}] run title @a subtitle ["",{"text":"chronos bad","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=42}] run title @a subtitle ["",{"text":"gg america","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=43}] run title @a subtitle ["",{"text":"I am a Rider!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=44}] run title @a subtitle ["",{"text":"There is no game. Tomato","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=45}] run title @a subtitle ["",{"text":"Error 404: Splash message not found.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=46}] run title @a subtitle ["",{"text":"Shield stackers beware!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=47}] run title @a subtitle ["",{"text":"Splash messages are useful!","color":"green"}]

kill @e[tag=RandomSplash]