tag @e[type=armor_stand,tag=Selection] remove switchGamemodes
tag @e[type=armor_stand,tag=Selection] add ctfEnabled
tag @e[type=armor_stand,tag=Selection] add ResidersOff
tag @e[type=armor_stand,tag=Selection,tag=Residers] add ResidersWasOn
tag @e[type=armor_stand,tag=Selection] add HardcoreOff
tag @e[type=armor_stand,tag=Selection,tag=Hardcore] add HardcoreWasOn
tag @e[type=armor_stand,tag=Selection,tag=DoublePortal] add DoublePortalWasOn
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:unlockdecos
tag @e[type=armor_stand,tag=Selection] add fbPortalsOff
tag @e[type=armor_stand,tag=Selection] add preventionOff
tag @e[type=armor_stand,tag=Selection] add preventionSoft
tag @e[type=armor_stand,tag=Selection] add portalDecosOff
tag @e[type=armor_stand,tag=Selection] add customSaberMsg
tag @e[type=armor_stand,tag=Selection] add noPortal
tag @e[type=armor_stand,tag=Selection] add canopyStack
tag @e[type=armor_stand,tag=Selection] add customPrevention
tag @e[type=armor_stand,tag=Selection] add customObsidian
tag @e[type=armor_stand,tag=Selection] add noSabers
tag @e[type=armor_stand,tag=Selection] add respawnFlag