##Utility function for detecting if a player shoots another player in midair
##Triggered by the shoot_player advancement

execute if entity @e[tag=Selection,type=armor_stand,scores={servermode=0},tag=!realms] run scoreboard players add @s[scores={FallDistance=100..}] gravShot 1
advancement revoke @s only achievements:rr_utility/shoot_player