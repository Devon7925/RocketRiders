tag @e[tag=Selection,type=armor_stand] remove ctfEnabled
tag @e[tag=Selection,type=armor_stand] remove ResidersOff
tag @e[tag=Selection,type=armor_stand,tag=ResidersWasOn] add Residers
tag @e[tag=Selection,type=armor_stand] remove ResidersWasOn
tag @e[tag=Selection,type=armor_stand] remove HardcoreOff
tag @e[tag=Selection,type=armor_stand,tag=HardcoreWasOn] add Hardcore
execute as @e[tag=Selection,type=armor_stand,tag=HardcoreWasOn] run function arenaclear:lockdecos
tag @e[tag=Selection,type=armor_stand] remove HardcoreWasOn
tag @e[tag=Selection,type=armor_stand,tag=DoublePortalWasOn] add DoublePortal
tag @e[tag=Selection,type=armor_stand] remove DoublePortalWasOn
# tag @e[tag=Selection,type=armor_stand,tag=WindDownWasOff] remove WindDown
# tag @e[tag=Selection,type=armor_stand] remove WindDownWasOff
# tag @e[tag=Selection,type=armor_stand] remove WindDownForce
# tag @e[tag=Selection,type=armor_stand,tag=MinuteWasOn] add Minute
# tag @e[tag=Selection,type=armor_stand] remove MinuteWasOn
tag @e[tag=Selection,type=armor_stand] remove tyingOff
tag @e[tag=Selection,type=armor_stand] remove fbPortalsOff
tag @e[tag=Selection,type=armor_stand] remove preventionOff
tag @e[tag=Selection,type=armor_stand] remove preventionSoft
tag @e[tag=Selection,type=armor_stand] remove portalDecosOff
tag @e[tag=Selection,type=armor_stand,tag=arrowsWasOn] add rngArrows
tag @e[tag=Selection,type=armor_stand] remove arrowsWasOn
tag @e[tag=Selection,type=armor_stand,tag=canopyWasOff] remove rngCanopy
tag @e[tag=Selection,type=armor_stand] remove canopyWasOff
tag @e[tag=Selection,type=armor_stand,tag=utilWasOff] remove rngUtil
tag @e[tag=Selection,type=armor_stand] remove utilWasOff
tag @e[tag=Selection,type=armor_stand] remove customSaberMsg
tag @e[tag=Selection,type=armor_stand] remove noPortal
tag @e[tag=Selection,type=armor_stand] remove canopyStack
tag @e[tag=Selection,type=armor_stand] remove respawnFlag
tag @e[tag=Selection,type=armor_stand] remove customPrevention
tag @e[tag=Selection,type=armor_stand] remove customObsidian
tag @e[tag=Selection,type=armor_stand] add switchGamemodes