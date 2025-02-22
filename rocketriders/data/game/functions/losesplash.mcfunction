##Randomized splash messages for the losers of a game

summon marker ~ ~ ~ {Tags:["RandomLossSplash"]}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[type=marker,tag=RandomLossSplash] RNGmax 62

execute as @e[type=marker,tag=RandomLossSplash] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=RandomLossSplash] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[type=marker,tag=RandomLossSplash,limit=1] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=0..3}] run title @a[tag=Loser] subtitle ["",{"text":"Better luck next time...","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=4}] run title @a[tag=Loser] subtitle ["",{"text":"At least we have a cool flag now?","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=5}] run title @a[tag=Loser] subtitle ["",{"text":"Exceeded missile deployment limit.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=6}] run title @a[tag=Loser] subtitle ["",{"text":"Huh, I swear I saw portals there before.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=7}] run title @a[tag=Loser] subtitle ["",{"text":"I call hacks!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=8}] run title @a[tag=Loser] subtitle ["",{"text":"At least you tried...","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=9}] run title @a[tag=Loser] subtitle ["",{"text":"So close...","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=10}] run title @a[tag=Loser] subtitle ["",{"text":"Your enemy was just having a really good day.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=11}] run title @a[tag=Loser] subtitle ["",{"text":"Next time we're using bedrock for our defense!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=12}] run title @a[tag=Loser] subtitle ["",{"text":"It was lag. I swear!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=13}] run title @a[tag=Loser] subtitle ["",{"text":"My ping! Why!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=14}] run title @a[tag=Loser] subtitle ["",{"text":"We'll meet again in a rematch!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=15}] run title @a[tag=Loser] subtitle ["",{"text":"I guess the Splashes didn't save the portal...","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=16}] run title @a[tag=Loser] subtitle ["",{"text":":(","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=17}] run title @a[tag=Loser] subtitle ["",{"text":"That Bullet punched straight through our wall!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=18}] run title @a[tag=Loser] subtitle ["",{"text":"Splashes weren't useful...","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=19}] run title @a[tag=Loser] subtitle ["",{"text":"oops","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=20}] run title @a[tag=Loser] subtitle ["",{"text":"Dreams were crushed.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=21}] run title @a[tag=Loser] subtitle ["",{"text":"This is so sad. Can we hit 2 likes?","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=22}] run title @a[tag=Loser] subtitle ["",{"text":"This is so sad. Can we hit Spikes?","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=23}] run title @a[tag=Loser] subtitle ["",{"text":"50% of all teams lose the game.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=24}] run title @a[tag=Loser] subtitle ["",{"text":"get got","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=25}] run title @a[tag=Loser] subtitle ["",{"text":"You have received (1x) Flag of Shameful Loss.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=26}] run title @a[tag=Loser] subtitle ["",{"text":"I want a refund.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=27}] run title @a[tag=Loser] subtitle ["",{"text":"ping abuse couldn't save you this time roflmao","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=28}] run title @a[tag=Loser] subtitle ["",{"text":"devs fix game","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=29}] run title @a[tag=Loser] subtitle ["",{"text":"Did you forget to open the client?","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=30}] run title @a[tag=Loser] subtitle ["",{"text":"It happens to everyone, buddy :)","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=31}] run title @a[tag=Loser] subtitle ["",{"text":"News flash: The other team is not hacking!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=32}] run title @a[tag=Loser] subtitle ["",{"text":"At least you're not buying them a pet!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=33}] run title @a[tag=Loser] subtitle ["",{"text":"Must be anti-knockback.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=34}] run title @a[tag=Loser] subtitle ["",{"text":"What's the strat where you lose?","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=35}] run title @a[tag=Loser] subtitle ["",{"text":"Pro tip: Try winning.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=36}] run title @a[tag=Loser] subtitle ["",{"text":"ez","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=37}] run title @a[tag=Loser] subtitle ["",{"text":"You ever try getting good?","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=38}] run title @a[tag=Loser] subtitle ["",{"text":"Congrats, you won at losing!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=39}] run title @a[tag=Loser] subtitle ["",{"text":"Task failed successfully.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=40}] run title @a[tag=Loser] subtitle ["",{"text":"You must have been playing against Chronos.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=41}] run title @a[tag=Loser] subtitle ["",{"text":"Point missile *AWAY* from self!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=42}] run title @a[tag=Loser] subtitle ["",{"text":"Must be their gaming chairs...","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=43}] run title @a[tag=Loser] subtitle ["",{"text":"how to ride fast missile?","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=44}] run title @a[tag=Loser] subtitle ["",{"text":"kinda sus","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=45}] run title @a[tag=Loser] subtitle ["",{"text":"They're aiming at you!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=46}] run title @a[tag=Loser] subtitle ["",{"text":"Emergency Meeting... Wait... I'm dead?","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=47}] run title @a[tag=Loser] subtitle ["",{"text":"Sure, blame it on the ping.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=48}] run title @a[tag=Loser] subtitle ["",{"text":"this is not very","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=49}] run title @a[tag=Loser] subtitle ["",{"text":"It's coming home!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=50}] run title @a[tag=Loser] subtitle ["",{"text":"It's coming ","color":"red"},{"text":"h","color":"red","obfuscated":"true"},{"text":"Rome!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=51}] run title @a[tag=Loser] subtitle ["",{"text":"L","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=52}] run title @a[tag=Loser] subtitle ["",{"text":"The IRS got you!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=53}] run title @a[tag=Loser] subtitle ["",{"text":"Sucks to suck!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=54}] run title @a[tag=Loser] subtitle ["",{"text":"Imagine winning","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=55}] run title @a[tag=Loser] subtitle ["",{"text":"MISSILE WENT BOOM :(","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=56}] run title @a[tag=Loser] subtitle ["",{"text":"Not my fault! Definitely bad teammates.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=57}] run title @a[tag=Loser] subtitle ["",{"text":"I, for one, submit to our new Bee overlords.","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=58}] run title @a[tag=Loser] subtitle ["",{"text":"That Wasn't Very Cash Money Of You","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=59}] run title @a[tag=Loser] subtitle ["",{"text":"should've renewed your car's extended warranty","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=60}] run title @a[tag=Loser] subtitle ["",{"text":"Code Red! Evacuate!!!","color":"red"}]
execute as @e[type=marker,tag=RandomLossSplash,scores={RNGscore=61}] run title @a[tag=Loser] subtitle ["",{"text":"I blame my teammates for my problems","color":"red"}]

kill @e[type=marker,tag=RandomLossSplash]